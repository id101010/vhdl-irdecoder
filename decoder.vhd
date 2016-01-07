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

entity decoder is
    Port ( clk          : in  std_logic;
           data_in      : in  std_logic;
           data_out     : out  std_logic;
           framedetect  : out  std_logic;
           latch_enable : out  std_logic);
end decoder;

architecture Behavioral of decoder is
    
    type states is (S_MEASURE, S_ONE, S_ZERO, S_PAUSE);         -- State types
    type signals is (ONE, ZERO, PAUSE, START);                  -- Signal types
    
    signal state_reg, state_next : states;                      -- state register
    signal curr_detected : signals;                             -- signal detection register
    signal curr_count, prev_count, pulse_time  : unsigned(16 downto 0) := (others => '0'); -- counting registers
    signal pulse_detect : std_ulogic := '0';                           -- pulse detection bit
    
    -- TODO: calculate exact values using sample rate (may be generic)! 
    -- Assuming micro seconds now.
    constant START_COUNT    : natural := 2500;                  -- number of counts for a start 
    constant ONE_COUNT      : natural := 1300;                  -- number of counts for a one
    constant ZERO_COUNT     : natural := 655;                   -- number of counts for a zero
    constant PAUSE_COUNT    : natural := 574;                   -- number of counts for a pause    
    
begin

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
    begin  -- process
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
 
    -- purpose : Finite State Machine which decodes the ir message
    -- inputs  : curr_detected
    -- outputs : data_out
    FSM: process (pulse_detect) is
    begin  -- process
    --
    -- ToDo
    --
    end process FSM; 
 
end architecture Behavioral;

