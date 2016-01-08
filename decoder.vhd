----------------------------------------------------------------------------------
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

----------------------------------------------------------------------------------
-- Company:         BFH
-- Engineer:        Aaron Schmocker
-- 
-- Create Date:     14:47:31 01/07/2016 
-- Design Name: 
-- Module Name:     decoder - Behavioral 
-- Project Name:    irdecoder
-- Target Devices:  CoolRunner Board
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: See git log for further informations
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity desing
entity decoder is
    generic (   input_freq: natural := 32768;   -- frequency of clk in hz
                start_time: natural := 2500;    -- time for the start signal/leader in us
                one_time: natural := 1300;      -- time for a '1' signal in us
                zero_time: natural := 655;      -- time for a '0' signal in us
                pause_time: natural := 574);    -- time for a pause signal in us
                
    Port (      clk          : in    std_logic;
                data_in      : in    std_logic;
                reset        : in    std_logic;
                data_out     : out   std_logic;
                frame_detect : out   std_logic;
                latch_enable : out   std_logic);
end decoder;

architecture Behavioral of decoder is
    
    -- Type definitions
    type states is (S_START, S_ONE, S_ZERO, S_DONE, S_IDLE);    -- State types
    type signals is (ONE, ZERO, PAUSE, START);                  -- Signal types
    
    -- Signals
    signal state_reg, state_next        : states;                                   -- state register
    signal curr_detected                : signals;                                  -- signal detection register
    signal curr_count                   : unsigned(15 downto 0) := (others => '0'); -- counting registers 
    signal pulse_time                   : unsigned(15 downto 0) := (others => '0'); -- counting registers
    signal bit_counter, bit_counter_next: unsigned(15 downto 0) := (others => '0'); -- counting registers
    signal pulse_detect                 : std_ulogic := '0';                        -- pulse detection bit
    signal data_old                     : std_ulogic := '1';                        -- for edge detection on data_in
    
    -- Constants
    constant START_COUNT    : natural := input_freq / (1000000 / start_time); -- number of counts for a start 
    constant ONE_COUNT      : natural := input_freq / (1000000 / one_time); -- number of counts for a one
    constant ZERO_COUNT     : natural := input_freq / (1000000 / zero_time); -- number of counts for a zero
    constant PAUSE_COUNT    : natural := input_freq / (1000000 / pause_time); -- number of counts for a pause    
    
begin

    -- purpose : Pulse measure, measures the period of the input pulse and saves it to pulse_time
    -- type    : sequential (on clk)
    -- inputs  : clk, reset, data_in
    -- outputs : pulse_time, pulse_detect
    PM: process (clk, reset) is
    begin  -- process 
        if(reset = '1') then
            pulse_detect <= '0'; 
            curr_count <= (others => '0');
            pulse_time <= (others => '0');   
        elsif(rising_edge(clk)) then
            if(data_in ='0' and data_old='1') then -- falling edge on data_in
                -- since the input is low active we start the pulse measurement here
                curr_count <= (others => '0');          -- reset current counter
                pulse_time <= (others => '0');          -- reset output
                pulse_detect <= '0';                    -- reset pulse_detect bit
            elsif(data_in ='1' and data_old ='0') then -- rising edge on data_in
                -- stop pulse mesurement and save counter value
                pulse_time <= curr_count; -- calculate the difference and set the pulse_detect bit
                pulse_detect <= '1';                    -- set the pulse_detect bit
            else -- no edge detected
                curr_count <= curr_count + 1;
            end if;
            data_old <= data_in; -- save data_in state for edge detection
        end if;

    end process PM;

    -- purpose : comperator, which decides what type of pulse got detected.
    -- type    : sequential (on pulse_detect)
    -- inputs  : pulse_detect, pulse_time
    -- outputs : curr_detected
    COMP: process (pulse_detect) is
    begin                                           -- process
        if(rising_edge(pulse_detect)) then
            if(pulse_time <= PAUSE_COUNT ) then
                curr_detected <= PAUSE;
            elsif(pulse_time <= ZERO_COUNT) then
                curr_detected <= ZERO;
            elsif(pulse_time <= ONE_COUNT) then
                curr_detected <= ONE;
            elsif(pulse_time <= START_COUNT) then
                curr_detected <= START;
            end if; 
        end if;
    end process COMP; 
 
    ----------------------------------------------------------------------------------------------------
    -- Finite State Machine logic
    ----------------------------------------------------------------------------------------------------
 
    -- purpose  : state register
    -- type     : sequential
    -- inputs   : pulse_detect, reset, state_next, bit_counter_next
    -- outputs  : state_reg, bit_counter
    REG: process (pulse_detect, reset) is
    begin                                   -- process start
        if reset = '1' then                 -- asynchronous reset (active high)
            state_reg <= S_IDLE;
            bit_counter <= to_unsigned(0,bit_counter'length);
        elsif rising_edge(pulse_detect) then         -- rising clock edge
            state_reg <= state_next;
            bit_counter <= bit_counter_next;
        end if;
    end process REG;
    
    -- purpose : Finite State Machine (next state logic) which handles the ir message
    -- type    : combinational
    -- inputs  : state_reg, pulse_detect, bit_counter, curr_detected
    -- outputs : bit_counter_next, state_next
    NSL: process (state_reg, pulse_detect, curr_detected, bit_counter) is
    begin                                               -- process
        
        state_next <= state_reg;                        -- set next state
        bit_counter_next <= bit_counter;
        case state_reg is
            when S_IDLE =>
                if(curr_detected = START) then         -- if START signal gets detected
                    state_next <= S_START;
                    bit_counter_next <= to_unsigned(0,bit_counter'length);
                end if;
            when S_START =>
                bit_counter_next <= bit_counter + 1;
                if(curr_detected = ONE) then           -- if ONE gets detected
                    state_next <= S_ONE;
                elsif(curr_detected = ZERO) then         -- if ZERO gets detected
                    state_next <= S_ZERO;
                end if;                   
            when S_ONE =>
                bit_counter_next <= bit_counter + 1;
                if(bit_counter=18) then
                    state_next <= S_DONE;
                elsif(curr_detected = ZERO) then          -- if ZERO gets detected
                    state_next <= S_ZERO;
                end if;   
            when S_ZERO =>
                bit_counter_next <= bit_counter + 1;
                if(bit_counter=18) then
                    state_next <= S_DONE;
                elsif(curr_detected = ONE) then           -- if ONE gets detected
                    state_next <= S_ONE;
                end if;
            when S_DONE =>
                state_next <= S_IDLE;
            when others => null;
        end case;
    end process NSL; 
    
    -- purpose : output logic
    -- type    : combinational
    -- inputs  : state_reg
    -- outputs : data_out, frame_detect
    latch_enable <= '1' when pulse_detect = '1' and (state_reg = S_ZERO or state_reg = S_ONE) else '0';
    frame_detect <= '1' when state_reg = S_DONE else '0';
    data_out <= '1' when state_reg = S_ONE else '0';

     
end architecture Behavioral;

