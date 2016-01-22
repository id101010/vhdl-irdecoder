--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:36:49 01/22/2016
-- Design Name:   
-- Module Name:   /home/aaron/Dokumente/STUDIUM/SEM5/Elektronik3/Digital/Miniprojekt/vhdl-irdecoder/outputswitcher_tb.vhd
-- Project Name:  irdecoder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: outputswitcher
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY outputswitcher_tb IS
END outputswitcher_tb;
 
ARCHITECTURE behavior OF outputswitcher_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT outputswitcher
    PORT(
         sel_raw : IN  std_logic;
         sel_decoded : IN  std_logic;
         dclk : IN  std_logic;
         data : IN  std_logic_vector(19 downto 0);
         seg6_en : OUT  std_logic;
         seg6 : OUT  std_logic_vector(3 downto 0);
         seg5_en : OUT  std_logic;
         seg5 : OUT  std_logic_vector(3 downto 0);
         seg4_en : OUT  std_logic;
         seg4 : OUT  std_logic_vector(3 downto 0);
         seg3_en : OUT  std_logic;
         seg3 : OUT  std_logic_vector(3 downto 0);
         seg2_en : OUT  std_logic;
         seg2 : OUT  std_logic_vector(3 downto 0);
         seg1_en : OUT  std_logic;
         seg1 : OUT  std_logic_vector(3 downto 0);
         dp : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal sel_raw : std_logic := '0';
   signal sel_decoded : std_logic := '0';
   signal dclk : std_logic := '0';
   signal data : std_logic_vector(19 downto 0) := (others => '0');

 	--Outputs
   signal seg6_en : std_logic;
   signal seg6 : std_logic_vector(3 downto 0);
   signal seg5_en : std_logic;
   signal seg5 : std_logic_vector(3 downto 0);
   signal seg4_en : std_logic;
   signal seg4 : std_logic_vector(3 downto 0);
   signal seg3_en : std_logic;
   signal seg3 : std_logic_vector(3 downto 0);
   signal seg2_en : std_logic;
   signal seg2 : std_logic_vector(3 downto 0);
   signal seg1_en : std_logic;
   signal seg1 : std_logic_vector(3 downto 0);
   signal dp : std_logic;

   -- Clock period definitions
   constant dclk_period : time := 1000 ms / 81;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: outputswitcher PORT MAP (
          sel_raw => sel_raw,
          sel_decoded => sel_decoded,
          dclk => dclk,
          data => data,
          seg6_en => seg6_en,
          seg6 => seg6,
          seg5_en => seg5_en,
          seg5 => seg5,
          seg4_en => seg4_en,
          seg4 => seg4,
          seg3_en => seg3_en,
          seg3 => seg3,
          seg2_en => seg2_en,
          seg2 => seg2,
          seg1_en => seg1_en,
          seg1 => seg1,
          dp => dp
        );

   -- Clock process definitions
   dclk_process :process
   begin
		dclk <= '0';
		wait for dclk_period/2;
		dclk <= '1';
		wait for dclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      wait for dclk_period*10;

      data <= "00001001110100011111"; -- apply valid signal (Signal 1)
      
      wait for dclk_period * 10;
      
      -- configuration 1
      sel_raw       <= '0';
      sel_decoded   <= '0';

      wait for dclk_period * 10;
      
      -- configuration 2
      sel_raw       <= '1';
      sel_decoded   <= '0';
      
      wait for dclk_period * 10;
      
      -- configuration 3
      sel_raw       <= '0';
      sel_decoded   <= '1';
      
      wait for dclk_period * 10;
      
      -- configuration 4
      sel_raw       <= '1';
      sel_decoded   <= '1';
      
      wait;
   end process;

END;
