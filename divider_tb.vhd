----------------------------------------------------------------------------------
-- Engineer: 		Aaron Schmocker
-- Create Date:		01:26:55 10/09/2014
-- Module Name:		generic Divider Testbench   
-- Project Name: 	BFH Miniprojekt
-- Description:     Testbench to the generic divider.
-- Licence:
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY divider_tb IS
END divider_tb;
 
ARCHITECTURE behavior OF divider_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divider
    PORT(
         fclk : IN  std_logic;
         fclkn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal fclk : std_logic := '0';

 	--Outputs
   signal fclkn : std_logic;

   -- Clock period definitions
   constant fclk_period : time := (1000ms / 32768); -- T = 1/f => f = 32.768kHz
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divider PORT MAP (
          fclk => fclk,
          fclkn => fclkn
        );

   -- Clock process definitions
   fclk_process :process
   begin
		fclk <= '0';
		wait for fclk_period/2;
		fclk <= '1';
		wait for fclk_period/2;
   end process;

   -- Stimulus process
   stim_proc: process
   begin		
      wait;
   end process;

END;
