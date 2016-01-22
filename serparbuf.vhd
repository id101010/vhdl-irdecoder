----------------------------------------------------------------------------------
-- Licence:
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
-- Engineer:        Aaron Schmocker
-- Create Date:     00:01:55 21.01.2016
-- Module Name:     SerParLatch    
-- Project Name:    irdecoder
-- Description:     A serial to parallel shiftregister with latched output
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity serparbuf is
   generic (    nbits           : natural := 19);
   port (       clk             : in std_logic;                             -- input clock frequency
                shift_out       : in std_logic;                             -- push internal data (latched) to output 
                shift_down      : in std_logic;                             -- shift all internal bits (latched) one bit down, and set the highest bit to serial_in
                clear           : in std_logic;                             -- asynchronous, high active clear
                serial_in       : in std_logic;                             -- serial input (synchronous on clk, enabled by shift_down)
                parallel_output : out std_logic_vector(nbits downto 0));    -- parallel output
end serparbuf;

architecture Behavioral of serparbuf is

    signal parallel_output_latch : std_logic_vector(nbits downto 0) := (others => '0'); -- this signal acts as a latch
    
begin

    -- purpose : serial-in/parallel-out shift register with output latch and clear
    -- type    : sequential (on clk)
    -- inputs  : clk, clear, shift_down, shift_out, serial_in
    -- outputs : parallel_out
    process(clk,clear)
    begin
        if (clear = '1') then -- if a clear signal gets detected, clear everything                        
            parallel_output_latch <= (others => '0');
            parallel_output <= (others => '0');
        elsif(rising_edge(clk)) then -- positive edge on clk
            if (shift_down = '1') then -- shift down all bits and read a new one into the latch
                parallel_output_latch((nbits-1) downto 0) <= parallel_output_latch(nbits downto 1);
                parallel_output_latch(nbits) <= serial_in;
            end if;
            if (shift_out = '1') then -- make the contents of the latch visible
                parallel_output(nbits downto 0) <= parallel_output_latch(nbits downto 0);
            end if;
        end if;
    end process;
end Behavioral;
