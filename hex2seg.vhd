library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hex2seg is
    Port ( clk : in  STD_LOGIC; -- Clock of the display (30-100Hz?)
			  hex : in  STD_LOGIC_VECTOR (3 downto 0); -- HEX number you want to display 0-F
           seg : out  STD_LOGIC_VECTOR (6 downto 0));  -- 7-Segment output, bit0=segment a, .. ,bit 6=segment g. Output is modulated with clock!
end hex2seg;

architecture Behavioral of hex2seg is
	signal segments : STD_LOGIC_VECTOR(6 downto 0); -- '1' for every segment that should be switched on (not modulated)
	signal clockvec : STD_LOGIC_VECTOR(6 downto 0); -- just "clk" on every bit of the vector
begin

	clockvec <= (others => clk); -- "Copy" clock to every bit of the vector
	
	-- Switch on the hex char, and decide which segments should be on
	with hex select 
	segments <=  "0111111" when "0000", --Ziffer 0
					 "0000110" when "0001", --Ziffer 1
					 "1011011" when "0010", --Ziffer 2
					 "1001111" when "0011", --Ziffer 3
					 "1100110" when "0100", --Ziffer 4
					 "1101101" when "0101", --Ziffer 5
					 "1111101" when "0110", --Ziffer 6
					 "0000111" when "0111", --Ziffer 7
					 "1111111" when "1000", --Ziffer 8
					 "1101111" when "1001", --Ziffer 9
					 "1110111" when "1010", --Ziffer A
					 "1111100" when "1011", --Ziffer B
					 "0111001" when "1100", --Ziffer C
					 "1011110" when "1101", --Ziffer D
					 "1111001" when "1110", --Ziffer E
					 "1110001" when "1111", --Ziffer F
					 "0000000" when others;
	
	-- Assign seg (modulated). 
	-- All segments which must be on, will have the inverse polarity of the clock. The others go with the clock. We can use xor for that.
	seg <= clockvec xor segments;

end Behavioral;

