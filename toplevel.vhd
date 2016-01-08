--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : toplevel.vhf
-- /___/   /\     Timestamp : 01/08/2016 20:26:46
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family xbr -flat -suppress -vhdl /home/timo/vhdl-irdecoder/toplevel.vhf -w /home/timo/vhdl-irdecoder/toplevel.sch
--Design Name: toplevel
--Device: xbr
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FD4CE_MXILINX_toplevel is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D0  : in    std_logic; 
          D1  : in    std_logic; 
          D2  : in    std_logic; 
          D3  : in    std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic);
end FD4CE_MXILINX_toplevel;

architecture BEHAVIORAL of FD4CE_MXILINX_toplevel is
   attribute BOX_TYPE   : string ;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   U0 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D0,
                Q=>Q0);
   
   U1 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D1,
                Q=>Q1);
   
   U2 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D2,
                Q=>Q2);
   
   U3 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D3,
                Q=>Q3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity FD16CE_MXILINX_toplevel is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          D   : in    std_logic_vector (15 downto 0); 
          Q   : out   std_logic_vector (15 downto 0));
end FD16CE_MXILINX_toplevel;

architecture BEHAVIORAL of FD16CE_MXILINX_toplevel is
   attribute BOX_TYPE   : string ;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   Q0 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(0),
                Q=>Q(0));
   
   Q1 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(1),
                Q=>Q(1));
   
   Q2 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(2),
                Q=>Q(2));
   
   Q3 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(3),
                Q=>Q(3));
   
   Q4 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(4),
                Q=>Q(4));
   
   Q5 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(5),
                Q=>Q(5));
   
   Q6 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(6),
                Q=>Q(6));
   
   Q7 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(7),
                Q=>Q(7));
   
   Q8 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(8),
                Q=>Q(8));
   
   Q9 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(9),
                Q=>Q(9));
   
   Q10 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(10),
                Q=>Q(10));
   
   Q11 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(11),
                Q=>Q(11));
   
   Q12 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(12),
                Q=>Q(12));
   
   Q13 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(13),
                Q=>Q(13));
   
   Q14 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(14),
                Q=>Q(14));
   
   Q15 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>D(15),
                Q=>Q(15));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SR4CE_MXILINX_toplevel is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          SLI : in    std_logic; 
          Q0  : out   std_logic; 
          Q1  : out   std_logic; 
          Q2  : out   std_logic; 
          Q3  : out   std_logic);
end SR4CE_MXILINX_toplevel;

architecture BEHAVIORAL of SR4CE_MXILINX_toplevel is
   attribute BOX_TYPE   : string ;
   signal Q0_DUMMY : std_logic;
   signal Q1_DUMMY : std_logic;
   signal Q2_DUMMY : std_logic;
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   Q0 <= Q0_DUMMY;
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   U0 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>SLI,
                Q=>Q0_DUMMY);
   
   U1 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q0_DUMMY,
                Q=>Q1_DUMMY);
   
   U2 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q1_DUMMY,
                Q=>Q2_DUMMY);
   
   U3 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q2_DUMMY,
                Q=>Q3);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity SR16CE_MXILINX_toplevel is
   port ( C   : in    std_logic; 
          CE  : in    std_logic; 
          CLR : in    std_logic; 
          SLI : in    std_logic; 
          Q   : out   std_logic_vector (15 downto 0));
end SR16CE_MXILINX_toplevel;

architecture BEHAVIORAL of SR16CE_MXILINX_toplevel is
   attribute BOX_TYPE   : string ;
   signal Q_DUMMY : std_logic_vector (15 downto 0);
   component FDCE
      generic( INIT : bit :=  '0');
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   attribute BOX_TYPE of FDCE : component is "BLACK_BOX";
   
begin
   Q(15 downto 0) <= Q_DUMMY(15 downto 0);
   Q0 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>SLI,
                Q=>Q_DUMMY(0));
   
   Q1 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(0),
                Q=>Q_DUMMY(1));
   
   Q2 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(1),
                Q=>Q_DUMMY(2));
   
   Q3 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(2),
                Q=>Q_DUMMY(3));
   
   Q4 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(3),
                Q=>Q_DUMMY(4));
   
   Q5 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(4),
                Q=>Q_DUMMY(5));
   
   Q6 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(5),
                Q=>Q_DUMMY(6));
   
   Q7 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(6),
                Q=>Q_DUMMY(7));
   
   Q8 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(7),
                Q=>Q_DUMMY(8));
   
   Q9 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(8),
                Q=>Q_DUMMY(9));
   
   Q10 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(9),
                Q=>Q_DUMMY(10));
   
   Q11 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(10),
                Q=>Q_DUMMY(11));
   
   Q12 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(11),
                Q=>Q_DUMMY(12));
   
   Q13 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(12),
                Q=>Q_DUMMY(13));
   
   Q14 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(13),
                Q=>Q_DUMMY(14));
   
   Q15 : FDCE
      port map (C=>C,
                CE=>CE,
                CLR=>CLR,
                D=>Q_DUMMY(14),
                Q=>Q_DUMMY(15));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity serparbuf_MUSER_toplevel is
   port ( CLEAR      : in    std_logic; 
          DATA_IN    : in    std_logic; 
          ENABLE     : in    std_logic; 
          SHIFT_DOWN : in    std_logic; 
          SHIFT_OUT  : in    std_logic; 
          DATA_OUT   : out   std_logic_vector (19 downto 0));
end serparbuf_MUSER_toplevel;

architecture BEHAVIORAL of serparbuf_MUSER_toplevel is
   attribute HU_SET     : string ;
   signal XLXN_5     : std_logic_vector (15 downto 0);
   signal XLXN_8     : std_logic;
   signal XLXN_9     : std_logic;
   signal XLXN_10    : std_logic;
   signal XLXN_11    : std_logic;
   component SR16CE_MXILINX_toplevel
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             SLI : in    std_logic; 
             Q   : out   std_logic_vector (15 downto 0));
   end component;
   
   component SR4CE_MXILINX_toplevel
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             SLI : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
   component FD16CE_MXILINX_toplevel
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (15 downto 0); 
             Q   : out   std_logic_vector (15 downto 0));
   end component;
   
   component FD4CE_MXILINX_toplevel
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D0  : in    std_logic; 
             D1  : in    std_logic; 
             D2  : in    std_logic; 
             D3  : in    std_logic; 
             Q0  : out   std_logic; 
             Q1  : out   std_logic; 
             Q2  : out   std_logic; 
             Q3  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_16 : label is "XLXI_16_0";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_1";
   attribute HU_SET of XLXI_19 : label is "XLXI_19_2";
   attribute HU_SET of XLXI_20 : label is "XLXI_20_3";
begin
   XLXI_16 : SR16CE_MXILINX_toplevel
      port map (C=>SHIFT_DOWN,
                CE=>ENABLE,
                CLR=>CLEAR,
                SLI=>DATA_IN,
                Q(15 downto 0)=>XLXN_5(15 downto 0));
   
   XLXI_17 : SR4CE_MXILINX_toplevel
      port map (C=>SHIFT_DOWN,
                CE=>ENABLE,
                CLR=>CLEAR,
                SLI=>XLXN_5(15),
                Q0=>XLXN_8,
                Q1=>XLXN_9,
                Q2=>XLXN_10,
                Q3=>XLXN_11);
   
   XLXI_19 : FD16CE_MXILINX_toplevel
      port map (C=>SHIFT_OUT,
                CE=>ENABLE,
                CLR=>CLEAR,
                D(15 downto 0)=>XLXN_5(15 downto 0),
                Q(15)=>DATA_OUT(4),
                Q(14)=>DATA_OUT(5),
                Q(13)=>DATA_OUT(6),
                Q(12)=>DATA_OUT(7),
                Q(11)=>DATA_OUT(8),
                Q(10)=>DATA_OUT(9),
                Q(9)=>DATA_OUT(10),
                Q(8)=>DATA_OUT(11),
                Q(7)=>DATA_OUT(12),
                Q(6)=>DATA_OUT(13),
                Q(5)=>DATA_OUT(14),
                Q(4)=>DATA_OUT(15),
                Q(3)=>DATA_OUT(16),
                Q(2)=>DATA_OUT(17),
                Q(1)=>DATA_OUT(18),
                Q(0)=>DATA_OUT(19));
   
   XLXI_20 : FD4CE_MXILINX_toplevel
      port map (C=>SHIFT_OUT,
                CE=>ENABLE,
                CLR=>CLEAR,
                D0=>XLXN_8,
                D1=>XLXN_9,
                D2=>XLXN_10,
                D3=>XLXN_11,
                Q0=>DATA_OUT(3),
                Q1=>DATA_OUT(2),
                Q2=>DATA_OUT(1),
                Q3=>DATA_OUT(0));
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity toplevel is
   port ( clk     : in    std_logic; 
          DIP1    : in    std_logic; 
          DIP2    : in    std_logic; 
          IO_4    : in    std_logic; 
          cln1    : out   std_logic; 
          cln2    : out   std_logic; 
          DS1     : out   std_logic_vector (6 downto 0); 
          DS1_dp  : out   std_logic; 
          DS2     : out   std_logic_vector (6 downto 0); 
          DS2_dp  : out   std_logic; 
          DS3     : out   std_logic_vector (6 downto 0); 
          DS3_dp  : out   std_logic; 
          DS4     : out   std_logic_vector (6 downto 0); 
          DS4_dp  : out   std_logic; 
          DS5     : out   std_logic_vector (6 downto 0); 
          DS5_dp  : out   std_logic; 
          DS6     : out   std_logic_vector (6 downto 0); 
          LD1     : out   std_logic; 
          phase_n : out   std_logic);
end toplevel;

architecture BEHAVIORAL of toplevel is
   attribute BOX_TYPE   : string ;
   signal XLXN_12  : std_logic;
   signal XLXN_13  : std_logic;
   signal XLXN_59  : std_logic;
   signal XLXN_60  : std_logic;
   signal XLXN_61  : std_logic;
   signal XLXN_63  : std_logic;
   signal XLXN_112 : std_logic_vector (19 downto 0);
   signal XLXN_147 : std_logic;
   signal XLXN_151 : std_logic;
   signal XLXN_152 : std_logic_vector (3 downto 0);
   signal XLXN_153 : std_logic;
   signal XLXN_154 : std_logic_vector (3 downto 0);
   signal XLXN_155 : std_logic;
   signal XLXN_156 : std_logic_vector (3 downto 0);
   signal XLXN_157 : std_logic;
   signal XLXN_158 : std_logic_vector (3 downto 0);
   signal XLXN_159 : std_logic;
   signal XLXN_160 : std_logic_vector (3 downto 0);
   signal XLXN_161 : std_logic;
   signal XLXN_162 : std_logic_vector (3 downto 0);
   component serparbuf_MUSER_toplevel
      port ( DATA_IN    : in    std_logic; 
             CLEAR      : in    std_logic; 
             SHIFT_OUT  : in    std_logic; 
             ENABLE     : in    std_logic; 
             SHIFT_DOWN : in    std_logic; 
             DATA_OUT   : out   std_logic_vector (19 downto 0));
   end component;
   
   component hex2seg
      port ( clk : in    std_logic; 
             seg : out   std_logic_vector (6 downto 0); 
             en  : in    std_logic; 
             hex : in    std_logic_vector (3 downto 0));
   end component;
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component decoder
      port ( clk          : in    std_logic; 
             data_in      : in    std_logic; 
             reset        : in    std_logic; 
             data_out     : out   std_logic; 
             frame_detect : out   std_logic; 
             latch_enable : out   std_logic);
   end component;
   
   component divider
      port ( fclk  : in    std_logic; 
             fclkn : out   std_logic);
   end component;
   
   component outputswitcher
      port ( sel_raw     : in    std_logic; 
             seg6_en     : out   std_logic; 
             seg5_en     : out   std_logic; 
             seg4_en     : out   std_logic; 
             seg3_en     : out   std_logic; 
             seg2_en     : out   std_logic; 
             seg1_en     : out   std_logic; 
             dp          : out   std_logic; 
             seg6        : out   std_logic_vector (3 downto 0); 
             seg5        : out   std_logic_vector (3 downto 0); 
             seg4        : out   std_logic_vector (3 downto 0); 
             seg3        : out   std_logic_vector (3 downto 0); 
             seg2        : out   std_logic_vector (3 downto 0); 
             seg1        : out   std_logic_vector (3 downto 0); 
             sel_decoded : in    std_logic; 
             dclk        : in    std_logic; 
             data        : in    std_logic_vector (19 downto 0));
   end component;
   
begin
   XLXI_18 : serparbuf_MUSER_toplevel
      port map (CLEAR=>XLXN_12,
                DATA_IN=>XLXN_59,
                ENABLE=>XLXN_13,
                SHIFT_DOWN=>XLXN_60,
                SHIFT_OUT=>XLXN_61,
                DATA_OUT(19 downto 0)=>XLXN_112(19 downto 0));
   
   XLXI_19 : hex2seg
      port map (clk=>XLXN_147,
                en=>XLXN_151,
                hex(3 downto 0)=>XLXN_152(3 downto 0),
                seg(6 downto 0)=>DS6(6 downto 0));
   
   XLXI_20 : hex2seg
      port map (clk=>XLXN_147,
                en=>XLXN_153,
                hex(3 downto 0)=>XLXN_154(3 downto 0),
                seg(6 downto 0)=>DS5(6 downto 0));
   
   XLXI_21 : hex2seg
      port map (clk=>XLXN_147,
                en=>XLXN_155,
                hex(3 downto 0)=>XLXN_156(3 downto 0),
                seg(6 downto 0)=>DS4(6 downto 0));
   
   XLXI_22 : hex2seg
      port map (clk=>XLXN_147,
                en=>XLXN_157,
                hex(3 downto 0)=>XLXN_158(3 downto 0),
                seg(6 downto 0)=>DS3(6 downto 0));
   
   XLXI_23 : hex2seg
      port map (clk=>XLXN_147,
                en=>XLXN_159,
                hex(3 downto 0)=>XLXN_160(3 downto 0),
                seg(6 downto 0)=>DS2(6 downto 0));
   
   XLXI_24 : hex2seg
      port map (clk=>XLXN_147,
                en=>XLXN_161,
                hex(3 downto 0)=>XLXN_162(3 downto 0),
                seg(6 downto 0)=>DS1(6 downto 0));
   
   XLXI_25 : VCC
      port map (P=>XLXN_13);
   
   XLXI_26 : GND
      port map (G=>XLXN_12);
   
   XLXI_29 : BUF
      port map (I=>XLXN_147,
                O=>cln2);
   
   XLXI_30 : BUF
      port map (I=>XLXN_147,
                O=>DS1_dp);
   
   XLXI_31 : BUF
      port map (I=>XLXN_147,
                O=>DS2_dp);
   
   XLXI_32 : BUF
      port map (I=>XLXN_147,
                O=>DS3_dp);
   
   XLXI_48 : BUF
      port map (I=>XLXN_147,
                O=>phase_n);
   
   XLXI_51 : BUF
      port map (I=>XLXN_147,
                O=>DS4_dp);
   
   XLXI_52 : BUF
      port map (I=>XLXN_147,
                O=>DS5_dp);
   
   XLXI_64 : decoder
      port map (clk=>clk,
                data_in=>IO_4,
                reset=>XLXN_63,
                data_out=>XLXN_59,
                frame_detect=>XLXN_61,
                latch_enable=>XLXN_60);
   
   XLXI_65 : GND
      port map (G=>XLXN_63);
   
   XLXI_68 : divider
      port map (fclk=>clk,
                fclkn=>XLXN_147);
   
   XLXI_69 : BUF
      port map (I=>IO_4,
                O=>LD1);
   
   XLXI_70 : outputswitcher
      port map (data(19 downto 0)=>XLXN_112(19 downto 0),
                dclk=>XLXN_147,
                sel_decoded=>DIP2,
                sel_raw=>DIP1,
                dp=>cln1,
                seg1(3 downto 0)=>XLXN_162(3 downto 0),
                seg1_en=>XLXN_161,
                seg2(3 downto 0)=>XLXN_160(3 downto 0),
                seg2_en=>XLXN_159,
                seg3(3 downto 0)=>XLXN_158(3 downto 0),
                seg3_en=>XLXN_157,
                seg4(3 downto 0)=>XLXN_156(3 downto 0),
                seg4_en=>XLXN_155,
                seg5(3 downto 0)=>XLXN_154(3 downto 0),
                seg5_en=>XLXN_153,
                seg6(3 downto 0)=>XLXN_152(3 downto 0),
                seg6_en=>XLXN_151);
   
end BEHAVIORAL;


