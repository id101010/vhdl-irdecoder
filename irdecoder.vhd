----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 
-- Design Name: 
-- Module Name:    irdecoder - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity irdecoder is
    Port ( clk          : in  STD_LOGIC;
           data_in_ser  : in  STD_LOGIC;
           data_out_par : out  STD_LOGIC;
           framedetect  : out  STD_LOGIC;
           latch_enable : out  STD_LOGIC);
end irdecoder;

architecture Behavioral of irdecoder is

    type states is (S_MEASURE, S_ONE, S_ZERO, S_PAUSE);         -- State types
    type signals is (ONE, ZERO, PAUSE, START);                  -- Signal types
    
    signal state_reg, state_next : states;                      -- state register
    signal curr_detected : signals                              -- signal detection register
    signal curr_count, prev_count, pulse_time  : unsigned(40 downto 0) := (others => '0'); -- counting registers
    signal pulse_detect : (1 downto 0) := (others => '0');      -- pulse detection bit
    
    -- TODO: calculate exact values using sample rate (may be generic)! 
    -- Assuming micro seconds now.
    constant START_COUNT    : natural := 2500;                  -- number of counts for a start 
    constant ONE_COUNT      : natural := 1300;                  -- number of counts for a one
    constant ZERO_COUNT     : natural := 655;                   -- number of counts for a zero
    constant PAUSE_COUNT    : natural := 574;                   -- number of counts for a pause
    
begin

    -- purpose : Pulse counter, increments curr_count every clock cycle. This is the max sampling rate of the module.
    -- inputs  : clk
    -- outputs : curr_count
    PC: process (clk) is
    begin -- process
        if(falling_edge(clk)) then
            curr_count <= curr_count + 1;
        end if
    end process PC;

    -- purpose : Pulse measure, measures the period of hte input pulse using curr_count and prev_count.
    -- inputs  : data_in_ser
    -- outputs : pulse_time
    PM: process (data_in_ser) is
    begin  -- process 
        if(falling_edge(data_in_ser)) then          -- since the input is low active a pulse starts with a falling edge
            prev_count <= curr_count;               -- save current counting position
            pulse_time <= (others => '0');          -- reset output
            pulse_detect <= (others => '0');        -- reset pulse_detect bit
        end if;
        if(rising_edge(data_in_ser)) then           -- if a rising edge occures, the pulse is over
            pulse_time <= curr_count - prev_count   -- calculate the difference and set the pulse_detect bit
            pulse_detect <= (others => '1');        -- set the pulse_detect bit
        end if;
    end process NSL;

    -- purpose : comperator, which decides what type of pulse got detected.
    -- inputs  : pulse_detect, pulse_time
    -- outputs : curr_detected
    COMP: process (pulse_detect) is
    begin  -- process
        if(rising_edge(pulse_detect)) then
            if(pulse_time <= PAUSE_COUNT ) then
                curr_detected <= PAUSE;
            elsif(pulse_time <= ZERO_COUNT) then
                curr_detected <= ZERO;
            elsif(pulse_time <= ONE_COUNT) then
                curr_detected <= ONE;
            elsif(pulse_time <= START_COUNT) then
                curr_detected <= START;
            end if; 
        end if;
    end process COMP;

end architecture Behavioral;

