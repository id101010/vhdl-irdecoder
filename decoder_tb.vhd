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
-- Company:         BFH
-- Engineer:        Aaron Schmocker
--
-- Create Date:     18:57:27 01/08/2016
-- Design Name:   
-- Module Name:     decoder_tb.vhd
-- Project Name:    irdecoder
-- Target Device:  
-- Tool versions:  
-- Description:   
----------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
 
entity decoder_tb is
    generic (   input_freq  : time := 32768 us;   -- frequency of clk in hz
                start_time  : time := 2500 us;    -- time for the start signal/leader in us
                one_time    : time := 1300 us;    -- time for a '1' signal in us
                zero_time   : time := 655 us;     -- time for a '0' signal in us
                pause_time  : time := 574 us);    -- time for a pause signal in us
end decoder_tb;
 
architecture behavior of decoder_tb is 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    component decoder                
        port(   clk            : in  std_logic;
                data_in        : in  std_logic;
                reset          : in  std_logic;
                data_out       : out  std_logic;
                frame_detect   : out  std_logic;
                latch_enable   : out  std_logic);
    end component;


    --Inputs
    signal clk       : std_logic := '0';
    signal data_in   : std_logic := '0';
    signal reset     : std_logic := '0';

    --Outputs
    signal data_out      : std_logic;
    signal frame_detect  : std_logic;
    signal latch_enable  : std_logic;

    -- Clock period definitions
    constant clk_period     : time := (1000 ms) / 32768;                        -- clock period
 
begin

    -- Instantiate the Unit Under Test (UUT)
    uut: decoder PORT MAP (
          clk           => clk,
          data_in       => data_in,
          reset         => reset,
          data_out      => data_out,
          frame_detect  => frame_detect,
          latch_enable  => latch_enable);

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
        -- hold neutral state for 100 ns.
        wait for 100 ns;	
        data_in <= '1';

        reset <= '1'; -- push reset
        wait for 10 ns;
        reset <= '0'; -- release reset

        wait for clk_period*10;

        -- START dummy transmission only with zeros
        data_in <= '0';
        wait for start_time;     -- Start bit
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          1
        data_in <= '1';
        wait for pause_time;     -- Pause bit 
        data_in <= '0';
        wait for zero_time;      -- bit          2
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          3
        data_in <= '1';       
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          4
        data_in <= '1';        
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          5
        data_in <= '1';       
        wait for pause_time;     -- Pause bit 
        data_in <= '0';
        wait for zero_time;      -- bit          6
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          7
        data_in <= '1';       
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          8
        data_in <= '1';        
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          9
        data_in <= '1';
        wait for pause_time;     -- Pause bit 
        data_in <= '0';
        wait for zero_time;      -- bit          10
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          11
        data_in <= '1';       
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          12
        data_in <= '1';        
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          13
        data_in <= '1';
        wait for pause_time;     -- Pause bit 
        data_in <= '0';
        wait for zero_time;      -- bit          14
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          15
        data_in <= '1';       
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          16
        data_in <= '1';        
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          17
        data_in <= '1';          
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          18
        data_in <= '1';   
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          19
        data_in <= '1';   
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          20
        data_in <= '1';   
        -- END dummy transmission with zeros
        
        wait for 100*clk_period;
        
        -- START dummy transmission only with ones
        data_in <= '0';
        wait for start_time;     -- Start bit
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          1
        data_in <= '1';
        wait for pause_time;     -- Pause bit 
        data_in <= '0';
        wait for one_time;       -- bit          2
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          3
        data_in <= '1';       
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          4
        data_in <= '1';        
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          5
        data_in <= '1';       
        wait for pause_time;     -- Pause bit 
        data_in <= '0';
        wait for one_time;       -- bit          6
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          7
        data_in <= '1';       
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          8
        data_in <= '1';        
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          9
        data_in <= '1';
        wait for pause_time;     -- Pause bit 
        data_in <= '0';
        wait for one_time;       -- bit          10
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          11
        data_in <= '1';       
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          12
        data_in <= '1';        
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          13
        data_in <= '1';
        wait for pause_time;     -- Pause bit 
        data_in <= '0';
        wait for one_time;       -- bit          14
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          15
        data_in <= '1';       
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          16
        data_in <= '1';        
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          17
        data_in <= '1';          
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          18
        data_in <= '1';   
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          19
        data_in <= '1';   
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          20
        data_in <= '1';   
        -- END dummy transmission with ones
        
        wait for 100*clk_period;

        -- START dummy transmission only with ones and zeros
        data_in <= '0';
        wait for start_time;     -- Start bit
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          1
        data_in <= '1';
        wait for pause_time;     -- Pause bit 
        data_in <= '0';
        wait for one_time;       -- bit          2
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          3
        data_in <= '1';       
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          4
        data_in <= '1';        
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          5
        data_in <= '1';       
        wait for pause_time;     -- Pause bit 
        data_in <= '0';
        wait for one_time;       -- bit          6
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          7
        data_in <= '1';       
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          8
        data_in <= '1';        
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          9
        data_in <= '1';
        wait for pause_time;     -- Pause bit 
        data_in <= '0';
        wait for one_time;       -- bit          10
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          11
        data_in <= '1';       
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          12
        data_in <= '1';        
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          13
        data_in <= '1';
        wait for pause_time;     -- Pause bit 
        data_in <= '0';
        wait for one_time;       -- bit          14
        data_in <= '1';
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          15
        data_in <= '1';       
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          16
        data_in <= '1';        
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          17
        data_in <= '1';          
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          18
        data_in <= '1';   
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for zero_time;      -- bit          19
        data_in <= '1';   
        wait for pause_time;     -- Pause bit
        data_in <= '0';
        wait for one_time;       -- bit          20
        data_in <= '1';   
        -- END dummy transmission with ones and zeros
        
        wait for clk_period*10;
        wait;
    end process;
end;
