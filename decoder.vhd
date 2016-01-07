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
    Port ( clk          : in    std_logic;
           data_in      : in    std_logic;
           reset        : in    std_logic;
           data_out     : out   std_logic;
           framedetect  : out   std_logic;
           latch_enable : out   std_logic);
end decoder;

architecture Behavioral of decoder is
    
    -- Type definitions
    type states is (S_START, S_ONE, S_ZERO, S_IDLE);            -- State types
    type signals is (ONE, ZERO, PAUSE, START);                  -- Signal types
    
    -- Signals
    signal state_reg, state_next        : states;                                   -- state register
    signal curr_detected                : signals;                                  -- signal detection register
    signal curr_count, prev_count       : unsigned(16 downto 0) := (others => '0'); -- counting registers 
    signal pulse_time, bit_counter      : unsigned(16 downto 0) := (others => '0'); -- counting registers
    signal pulse_detect                 : std_ulogic := '0';                        -- pulse detection bit
    
    -- TODO: calculate exact values using sample rate (may be generic)! 
    -- Assuming micro seconds now.
    -- Constants
    constant START_COUNT    : natural := 2500;                  -- number of counts for a start 
    constant ONE_COUNT      : natural := 1300;                  -- number of counts for a one
    constant ZERO_COUNT     : natural := 655;                   -- number of counts for a zero
    constant PAUSE_COUNT    : natural := 574;                   -- number of counts for a pause    
    
begin

    ----------------------------------------------------------------------------------------------------
    -- Pulse Counter Logic and preprocessing
    ----------------------------------------------------------------------------------------------------

    -- purpose : Pulse counter, increments curr_count every clock cycle. This is the max sampling rate of the module.
    -- inputs  : clk
    -- outputs : curr_count
    PC: process (clk) is
    begin -- process
        if(falling_edge(clk)) then
            curr_count <= curr_count + 1;
        end if;
    end process PC;

    -- purpose : Pulse measure, measures the period of hte input pulse using curr_count and prev_count.
    -- inputs  : data_in_ser
    -- outputs : pulse_time
    PM: process (data_in) is
    begin  -- process 
        if(falling_edge(data_in)) then              -- since the input is low active a pulse starts with a falling edge
            prev_count <= curr_count;               -- save current counting position
            pulse_time <= (others => '0');          -- reset output
            pulse_detect <= '0';                    -- reset pulse_detect bit
        end if;
        if(rising_edge(data_in)) then               -- if a rising edge occures, the pulse is over
            pulse_time <= curr_count - prev_count;  -- calculate the difference and set the pulse_detect bit
            pulse_detect <= '1';                    -- set the pulse_detect bit
        end if;
    end process PM;

    -- purpose : comperator, which decides what type of pulse got detected.
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
 
    -- purpose: state register
    -- inputs : clk, reset, state_next
    -- outputs: state_reg
    REG: process (clk, reset) is
    begin                                   -- process start
        if reset = '0' then                 -- asynchronous reset (active low)
            state_reg <= S_IDLE;
        elsif rising_edge(clk) then         -- rising clock edge
            state_reg <= state_next;
        elsif (bit_counter >= 20) then                     -- when the bitcounter reaches 20
            state_reg <= S_IDLE;
            bit_counter <= 0;
            frame_detect <= '1';
        end if;
    end process REG;
    
    -- purpose : Finite State Machine (next state logic) which handles the ir message
    -- inputs  : curr_detected
    -- outputs : data_out
    NSL: process (pulse_detect) is
    begin                                               -- process
        
        state_next <= state_reg;                        -- set next state
        
        case state_reg is
            when S_IDLE =>
                if(curr_detected == START) then         -- if START signal gets detected
                    state_next <= S_START;
                    bit_counter <= '0';
                end if;
            when S_START =>
                if(curr_detected == ONE) then           -- if ONE gets detected
                    state_next <= S_ONE;
                    bit_counter <= bit_counter + 1;
                    latch_enable <= latch_enable xor latch_enable;
                end if;     
                if(curr_detected == ZERO) then          -- if ZERO gets detected
                    state_next <= S_ZERO;
                    bit_counter <= bit_counter + 1;
                    latch_enable <= latch_enable xor latch_enable;
                end if;                   
            when S_ONE =>
                if(curr_detected == ZERO) then          -- if ZERO gets detected
                    state_next <= S_ZERO;
                    bit_counter <= bit_counter + 1;
                    latch_enable <= latch_enable xor latch_enable;
                end if;  
                if(curr_detected == ONE) then           -- if ONE gets detected
                    bit_counter <= bit_counter + 1;
                    latch_enable <= latch_enable xor latch_enable;
                end if;  
            when S_ZERO =>
                if(curr_detected == ONE) then           -- if ONE gets detected
                    state_next <= S_ONE;
                    bit_counter <= bit_counter + 1;
                    latch_enable <= latch_enable xor latch_enable;
                end if;  
                if(curr_detected == ZERO) then          -- if ZERO gets detected
                    bit_counter <= bit_counter + 1;
                    latch_enable <= latch_enable xor latch_enable;
                end if;  
            when others => null;
        end case;
    end process NSL; 
    
    -- purpose : Finite State Machine (output logic) 
    -- inputs  : curr_detected
    -- outputs : data_out
    OL: process (pulse_detect) is
    begin                                           -- process
        case state_reg is
            when S_IDLE =>                          -- Clear everything in idle state, except frame detect.
                data_out <= '0';
                latch_enable <= '0';
            when S_START =>                         -- Clear everything in start state
                data_out <= '0';
                frame_detect <= '0';  
                latch_enable <= '0';                
            when S_ONE =>                           -- Set the output
                data_out <= '1';
                frame_detect <= '0'; 
                latch_enable <= '0';                
            when S_ZERO =>                          -- Reset the output
                data_out <= '0';
                frame_detect <= '0';
                latch_enable <= '0';                
            when others => null;
        end case;
    end process OL; 
     
end architecture Behavioral;

