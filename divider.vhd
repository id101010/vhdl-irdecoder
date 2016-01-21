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
-- Create Date:		02:26:55 09.01.2016
-- Module Name:		generic Divider    
-- Project Name: 	irdecoder
-- Description:     A generic divider
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divider is 
    generic( n            : natural := 400);
    port( fclk            : in std_logic;
          fclkn           : out std_logic);
end divider;

architecture Behavioral of divider is

    signal counter : unsigned(15 downto 0) := (others => '0');

begin

    process(fclk)
    begin
        if(rising_edge(fclk)) then
            if(counter < n/2-1) then
                counter <= counter + 1;
                fclkn <= '0';
            elsif(counter < n-1) then
                counter <= counter + 1;
                fclkn <= '1';
            else
                fclkn <= '0';
                counter <= (others => '0');
            end if;
        end if;
    end process; 
    
end architecture Behavioral;

