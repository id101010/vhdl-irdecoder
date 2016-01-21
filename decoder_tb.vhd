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
use ieee.math_real.all;
 
entity decoder_tb is
    generic (   input_freq      : time := 32768 us;   -- frequency of clk in hz
                start_time      : time := 2500 us;    -- time for the start signal/leader in us
                one_time        : time := 1300 us;    -- time for a '1' signal in us
                zero_time       : time := 655 us;     -- time for a '0' signal in us
                pause_time      : time := 574 us;     -- time for a pause signal in us
                tolerance_time  : time := 130 us);    -- allowed tolerance +- in us
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
        variable seed1, seed2: positive; -- will be updated by random generator, after each retrival of a random number
    
        --procedure that waits for t(argument) +- tolerance_time (generic parameter)
        procedure wait_rand(constant t : in time) is
            variable rand: real;
            variable rand_num : integer;
            variable wait_time : time;
        begin
            uniform(seed1, seed2, rand); --calc rand value 0.00 ... 1.00
            rand_num := integer(rand*2.0*real(tolerance_time/1 us))-integer(tolerance_time/1 us); --scale to -tolerance ... + tolerance
            wait_time := t + (rand_num * 1 us);
            wait for wait_time;
        end procedure;
    
        --prodecure that sends out a sequence (passed by parameter)
        --TODO: Find out why the function behaves wrongly if we make the 'dat' argument a 'constant' instead of a 'variable'
        procedure sendData(variable dat : in std_logic_vector(19 downto 0)) is
        begin
            data_in <= '0';
            wait_rand(start_time);  -- Start bit
            data_in <= '1';
               
            for i in 0 to 19 loop -- once per bit
                wait_rand(pause_time);
                data_in <= '0';
                
                if(dat(i)='0') then
                    wait_rand(zero_time); 
                elsif(dat(i)='1') then
                    wait_rand(one_time);
                end if;
                data_in <= '1';
               
            end loop;
            
            wait for 50*clk_period;
        end procedure;
        
        --temporiaries
        variable data : std_logic_vector(19 downto 0);
    begin	
        -- hold neutral state for 100 ns.
        wait for 100 ns;	
        data_in <= '1';

        reset <= '1'; -- push reset
        wait for 10 ns;
        reset <= '0'; -- release reset

        wait for clk_period*10;

        --Send only zeros
        data := (others=>'0');
        sendData(data);

        --Send only ones
        data := (others=>'1');
        sendData(data);
        
        --Send 10101...
        data := ("10101010101010101010");
        sendData(data);
        
        --Send 01010...
        data := ("01010101010101010101");
        sendData(data);
        
        --Send "Random"
        data := ("11000101011100110101");
        sendData(data);

        wait;
    end process;
end;
