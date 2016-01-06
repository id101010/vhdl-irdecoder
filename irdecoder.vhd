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
-- Company: 
-- Engineer:        Aaron Schmocker
-- 
-- Create Date: 
-- Design Name: 
-- Module Name:     irdecoder - Behavioral 
-- Project Name:    irdecoder
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity irdecoder is
    Port ( clk          : in  std_logic;
           state        : in  std_logic;
           data_out     : out  std_logic;
           framedetect  : out  std_logic;
           latch_enable : out  std_logic);
end irdecoder;

architecture Behavioral of irdecoder is
    
begin

end architecture Behavioral;

