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
    generic (   input_freq      : natural := 32768;   -- frequency of clk in hz
                start_time      : natural := 2500;    -- time for the start signal/leader in us
                one_time        : natural := 1300;    -- time for a '1' signal in us
                zero_time       : natural := 655;     -- time for a '0' signal in us
                pause_time      : natural := 574;     -- time for a pause signal in us
                tolerance_time  : natural := 150);    -- time tolerance in +- us for the constants above  
                
    Port (      clk          : in    std_logic;  -- input clock with frequency specified by generic parameter input_freq
                data_in      : in    std_logic;  -- ir input signal
                reset        : in    std_logic;  -- asynchronos, high active reset
                data_out     : out   std_logic;  -- serial data output
                frame_detect : out   std_logic;  -- frame finished output (marks the end of a 20bit transmission)
                latch_enable : out   std_logic); -- serial data out clock enable (signals that data_out contains valid data of one bit)
end decoder;

architecture Behavioral of decoder is
    
    -- Type definitions
    type states is (S_START, S_ONE, S_ZERO, S_DONE, S_IDLE, S_PAUSE);   -- State enumeration
    type signals is (ONE, ZERO, PAUSE, START, ERROR);                   -- Detected signaltype enumeratoin
    
    -- Signals
    signal state_reg, state_next        : states;                                   -- state machine registers
    signal curr_detected                : signals;                                  -- signaltype detection register
    signal pulse_time                   : unsigned(7 downto 0) := (others => '0');  -- counting registers for pulse measurement
    signal pulse_level                  : std_ulogic := '0';                        -- logic level of the pulse
    signal bit_counter, bit_counter_next: unsigned(7 downto 0) := (others => '0');  -- counting registers for the bits (0...20+)
    signal data_old                     : std_ulogic := '1';                        -- signal buffer, for edge detection on data_in
    
    -- Constants
    constant START_COUNT    : natural := input_freq / (1000000 / start_time);       -- number of clocks for a start 
    constant ONE_COUNT      : natural := input_freq / (1000000 / one_time);         -- number of clocks for a one
    constant ZERO_COUNT     : natural := input_freq / (1000000 / zero_time);        -- number of clocks for a zero
    constant PAUSE_COUNT    : natural := input_freq / (1000000 / pause_time);       -- number of clocks for a pause 
    constant TOLERANCE_COUNT: natural := input_freq / (1000000 / tolerance_time);   -- number of clocks tolerance
    
begin

    -- purpose : Pulse measure, measures the period of the input pulse and saves it to pulse_time
    -- type    : sequential (on clk)
    -- inputs  : clk, reset, data_in
    -- outputs : pulse_time
    PM: process (clk, reset) is
    variable curr_count : unsigned(7 downto 0) := (others => '0'); -- local counter for the pulse measurement
    begin  -- process 
        if(reset = '1') then -- async reset
            curr_count := (others => '0');
            pulse_time <= (others => '0');   
        elsif(rising_edge(clk)) then -- synchronous
            if(data_in  /= data_old) then -- edge (positive/negative) on data_in
                pulse_time <= curr_count; -- save current counter
                pulse_level <= data_old; -- save the level of the signal
                curr_count := (others => '0'); -- reset current counter
            else -- no edge detected
                curr_count := curr_count + 1; --input signal stayed on the same level as before, for one more clock/tick.
            end if;
            data_old <= data_in; -- save data_in state for edge detection
        end if;
    end process PM;

    -- purpose : comperator, which decides what type of pulse got detected.
    -- type    : conditional
    -- inputs  : pulse_time
    -- outputs : curr_detected
    COMP: process (pulse_time, pulse_level) is
    begin -- process
        curr_detected <= ERROR; -- detect "error", if nothing from below matches
        if(pulse_level = '0') then -- measured signal was on level '0'/low
            -- Range checks for 'zero', 'one' or 'start' ahead 
            if((ZERO_COUNT - TOLERANCE_COUNT) <= pulse_time and pulse_time <= (ZERO_COUNT + TOLERANCE_COUNT)) then
                curr_detected <= ZERO;
            elsif((ONE_COUNT - TOLERANCE_COUNT) <= pulse_time and pulse_time <= (ONE_COUNT + TOLERANCE_COUNT)) then
                curr_detected <= ONE;
            elsif((START_COUNT - TOLERANCE_COUNT) <= pulse_time and pulse_time <= (START_COUNT + TOLERANCE_COUNT)) then
                curr_detected <= START;
            end if;
        elsif(pulse_level='1') then -- measured signal was on level '1'/high
            -- Range check for 'pause' ahead
            if((PAUSE_COUNT - TOLERANCE_COUNT) <= pulse_time and pulse_time <= (PAUSE_COUNT + TOLERANCE_COUNT)) then
                curr_detected <= PAUSE;
            end if;
        end if;
    end process COMP; 
 
    ----------------------------------------------------------------------------------------------------
    -- Finite State Machine logic
    ----------------------------------------------------------------------------------------------------
 
    -- purpose  : state register
    -- type     : sequential
    -- inputs   : reset, state_next, bit_counter_next
    -- outputs  : state_reg
    REGS: process (clk, reset) is
    begin                                   -- process start
        if reset = '1' then                 -- asynchronous reset (active high)
            state_reg <= S_IDLE;
            bit_counter <= to_unsigned(0,bit_counter'length);
        elsif rising_edge(clk) then         -- rising clock edge
            state_reg <= state_next;
            bit_counter <= bit_counter_next;
        end if;
    end process REGS;
   
    -- purpose : Finite State Machine (next state logic) which handles the ir message
    -- type    : combinational
    -- inputs  : state_reg, bit_counter, curr_detected
    -- outputs : bit_counter_next, state_next
    NSL: process (state_reg, curr_detected, bit_counter) is
    begin                                                   -- process
        
        -- Set default values for all outputs
        state_next <= state_reg; --state stays the same
        bit_counter_next <= bit_counter; -- bit counter stays the same
        latch_enable <= '0'; --latch is disabled per default
        frame_detect <= '0'; --no frame detected per default
        data_out <= '0'; -- 'zero' detected per default
        
        if(curr_detected = ERROR) then -- invalid time received?
            state_next <= S_IDLE; -- switch back to inital/idle state
        else -- valid time received
            case state_reg is -- switch on current state
                when S_IDLE => -- currently in idle state
                    if(curr_detected = START) then -- 'start' signal detected
                        state_next <= S_START;
                        bit_counter_next <= to_unsigned(0,bit_counter'length); --reset bit counter to 0
                    end if;
                     
                when S_START => -- currently in start state
                    if(curr_detected = PAUSE) then -- 'pause' detected
                        state_next <= S_PAUSE;
                    end if; 
                     
                when S_ONE | S_ZERO => -- currently in 'one' or 'zero' state
                    if(state_reg = S_ONE) then -- we're in state 'one'
                        data_out <= '1'; -- set serial output to 'one', because default is '0'
                    end if;
                    if(bit_counter=20) then -- enough bits received
                        state_next <= S_DONE;
                        latch_enable <= '1'; -- allow shifting of last bit into latch
                    elsif(curr_detected = PAUSE) then -- another 'pause' received
                        state_next <= S_PAUSE;
                        latch_enable <= '1'; -- allow shifting of next bit into latch
                    end if;
                    
                when S_PAUSE => -- currently in 'pause' state
                    if(curr_detected = ONE) then -- we received a logic 'one'
                        state_next <= S_ONE;
                        bit_counter_next <= bit_counter + 1; -- new bit received, increment bit_counter
                    elsif(curr_detected = ZERO) then -- we received a logic 'zero'
                        state_next <= S_ZERO;
                        bit_counter_next <= bit_counter + 1; -- new bit received, increment bit_counter
                    end if;   
                    
                when S_DONE => -- currently in 'done' state
                    state_next <= S_IDLE;
                    frame_detect <= '1'; -- enable frame_detect for exactly one clock, to singal end of transmission
                    
                when others => null; -- do nothing, if we are in a different state
            end case;
        end if;
    end process NSL; 
     
end architecture Behavioral;

