----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:11:59 01/08/2016 
-- Design Name: 
-- Module Name:    outputswitcher - Behavioral 
-- Project Name: 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity outputswitcher is
    Port ( sel_raw : in  STD_LOGIC;
           sel_decoded : in  STD_LOGIC;
           dclk : in STD_LOGIC;
           data : in  STD_LOGIC_VECTOR (19 downto 0);
           seg6_en : out STD_LOGIC;
           seg6 : out  STD_LOGIC_VECTOR (3 downto 0);
           seg5_en : out STD_LOGIC;
           seg5 : out  STD_LOGIC_VECTOR (3 downto 0);
           seg4_en : out STD_LOGIC;
           seg4 : out  STD_LOGIC_VECTOR (3 downto 0);
           seg3_en : out STD_LOGIC;
           seg3 : out  STD_LOGIC_VECTOR (3 downto 0);
           seg2_en : out STD_LOGIC;           
           seg2 : out  STD_LOGIC_VECTOR (3 downto 0);
           seg1_en : out STD_LOGIC;
           seg1 : out  STD_LOGIC_VECTOR (3 downto 0);
           dp : out STD_LOGIC);
end outputswitcher;

architecture Behavioral of outputswitcher is
signal decoded : unsigned (7 downto 0);
signal decoded_z : unsigned (3 downto 0);
signal decoded_e : unsigned (3 downto 0);
begin
    with data select 
    decoded <=       "00000001" when "00001001110100011111", -- 1:  Bright Down
                     "00000010" when "00001001110100011110", -- 2:  Bright Up
                     "00000011" when "00001001110100001111", -- 3:  Vertical Down
                     "00000100" when "00001001110100001110", -- 4:  Vertical Up
                     "00000101" when "00001001110100101001", -- 5:  Height Down
                     "00000110" when "00001001110100101000", -- 6:  Height Up
                     "00000111" when "00001001110100101101", -- 7:  Convergence Down
                     "00001000" when "00001001110100101100", -- 8:  Convergence Up
                     "00001001" when "00001001110100010001", -- 9:  Tilt left Down
                     "00010000" when "00001001110100010000", -- 10: Tilt right Down
                     "00010001" when "00001001110100011001", -- 11: Contrast Down
                     "00010010" when "00001001110100011000", -- 12: Contrast Up
                     "00010011" when "00001001110100001101", -- 13: Horizontal Left
                     "00010100" when "00001001110100001100", -- 14: Horizontal Right
                     "00010101" when "00001001110100100111", -- 15: With Left
                     "00010110" when "00001001110100100110", -- 16: With Right
                     "00010111" when "00001001110100101011", -- 17: Convergence Left
                     "00011000" when "00001001110100101010", -- 18: Convergence Right
                     "00011001" when "00001001110100111000", -- 19: Size Down
                     "00100000" when "00001001110100110111", -- 20: Size Up
                     "11101110" when others; -- output EE-hex to mark error
    decoded_e <= decoded(3 downto 0); --one's digit
    decoded_z <= decoded(7 downto 4); --ten's digit


    -- Segments 6 (lowest digit) to Segment 3 will always show the raw value, as long as sel_raw = 1
    seg6 <= data(3 downto 0);
    seg5 <= data(7 downto 4);
    seg4 <= data(11 downto 8);
    seg3 <= data(15 downto 12);
    seg6_en <= sel_raw;
    seg5_en <= sel_raw;
    seg4_en <= sel_raw;
    seg3_en <= sel_raw;
    
    -- The separator is only shown when both modes are active together (sel_raw=sel_decoded=1)
    dp <= not dclk when sel_raw = '1' and sel_decoded = '1' else dclk;
    
    -- Segment 2 has 3 different modes: 
    seg2 <= data(19 downto 16) when sel_raw = '1' and  sel_decoded = '0' else --shows the highest digit of raw if only sel_raw is active
            std_logic_vector(decoded_e);  -- shows the lowest digit of the decoded message, if sel_decoded is active
    seg2_en <= '1' when sel_raw='1' or sel_decoded='1' else '0';  -- only active when at least one of the two modes is selected  
            
    -- Segment 1 (highest digit of display) will always show the ten's part of the decoded message     
    seg1 <= std_logic_vector(decoded_z) when sel_decoded = '1' else (others => '0');
    seg1_en <= sel_decoded;
    
    
end Behavioral;

