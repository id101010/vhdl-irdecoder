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
-- Engineer: 		Aaron Schmocker
-- Create Date:		00:01:55 21.01.2016
-- Module Name:		SerParLatch    
-- Project Name: 	irdecoder
-- Description:     A serial to parallel shiftregister with latched output
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity serparlatch is
   generic (    nbits           : natural := 19);
   port (       clk             : in std_logic; 		                    -- input clock frequency
                shift_out       : in std_logic;                             -- signal to set the output latch
                shift_down      : in std_logic;                             -- shift down signal
                clear           : in std_logic;                             -- clear everything
                serial_in       : in std_logic;                             -- serial input
                parallel_output : out std_logic_vector(nbits downto 0));    -- parallel output
end serparlatch;

architecture Behavioral of serparlatch is

    signal parallel_output_latch : std_logic_vector(nbits downto 0) := (others => '0'); -- this signal acts as a latch
    
begin

    -- purpose : serial-in/parallel-out shift register with output latch and clear
    -- type    : sequential (on clk)
    -- inputs  : clk, clear, shift_down, shift_out, serial_in
    -- outputs : parallel_out
    process(clk)
    begin
        if(rising_edge(clk)) then
            if (clear = '1') then                                            -- if a clear signal gets detected, clear everything                        
                parallel_output_latch <= (others => '0');
                parallel_output <= (others => '0');
            end if;
            if (shift_down = '1') then                                       -- shift down all bits and read a new one into the latch
                parallel_output_latch(nbits downto 1) <= parallel_output_latch((nbits - 1) downto 0);
                parallel_output_latch(0) <= serial_in;
            end if;
            if (shift_out = '1') then                                        -- make the contents of the latch visible
                parallel_output(nbits downto 0) <= parallel_output_latch(nbits downto 0);
                parallel_output_latch <= (others => '0');
            end if;
        end if;
    end process;
end Behavioral;