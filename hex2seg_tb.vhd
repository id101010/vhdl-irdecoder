LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY hex2seg_tb IS
END hex2seg_tb;
 
ARCHITECTURE behavior OF hex2seg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT hex2seg
    PORT(
         clk : IN  std_logic;
         hex : IN  std_logic_vector(3 downto 0);
         seg : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal hex : std_logic_vector(3 downto 0) := (others => '0');

    --Outputs
   signal seg : std_logic_vector(6 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
    -- Instantiate the Unit Under Test (UUT)
   uut: hex2seg PORT MAP (
          clk => clk,
          hex => hex,
          seg => seg
        );

   -- Clock process definitions
   clk_process :process
   begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin        
     
      hex <= "0000";
      wait for clk_period*10;
      hex <= "0001";
      wait for clk_period*10;
      hex <= "0010";
      wait for clk_period*10;
      hex <= "0011";
      wait for clk_period*10;
      hex <= "0100";
      wait for clk_period*10;
      hex <= "0101";
      wait for clk_period*10;
      hex <= "0110";
      wait for clk_period*10;
      hex <= "0111";
      wait for clk_period*10;
      hex <= "1000";
      wait for clk_period*10;
      hex <= "1001";
      wait for clk_period*10;
      hex <= "1010";
      wait for clk_period*10;
      hex <= "1011";
      wait for clk_period*10;
      hex <= "1100";
      wait for clk_period*10;
      hex <= "1101";
      wait for clk_period*10;
      hex <= "1110";
      wait for clk_period*10;
      hex <= "1111";
     

      wait;
   end process;

END;
