LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY serparbuf_tb IS
END serparbuf_tb;
ARCHITECTURE behavioral OF serparbuf_tb IS 

   COMPONENT serparbuf
   PORT(  SERIAL_IN         :   IN  STD_LOGIC; 
          CLK               :   IN  STD_LOGIC;
          CLEAR             :   IN  STD_LOGIC; 
          SHIFT_OUT         :   IN  STD_LOGIC; 
          SHIFT_DOWN        :   IN  STD_LOGIC; 
          PARALLEL_OUTPUT   :   OUT STD_LOGIC_VECTOR (19 DOWNTO 0));
   END COMPONENT;

   SIGNAL SERIAL_IN         :   STD_LOGIC;
   SIGNAL CLK               :   STD_LOGIC;
   SIGNAL CLEAR             :   STD_LOGIC;
   SIGNAL SHIFT_OUT         :   STD_LOGIC;
   SIGNAL SHIFT_DOWN        :   STD_LOGIC;
   SIGNAL PARALLEL_OUTPUT   :   STD_LOGIC_VECTOR (19 DOWNTO 0);

    
   constant CLK_PERIOD     : time := (1000 ms) / 32768;


BEGIN

   UUT: serparbuf PORT MAP(
        SERIAL_IN   => SERIAL_IN, 
        CLK         => CLK,
        CLEAR       => CLEAR, 
        SHIFT_OUT   => SHIFT_OUT, 
        SHIFT_DOWN  => SHIFT_DOWN, 
        PARALLEL_OUTPUT => PARALLEL_OUTPUT
   );



    -- Clock process definitions
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

   tb : PROCESS
   BEGIN

   
       --- Clear 
        CLEAR <= '1';
        WAIT for 2 us;
        CLEAR <= '0';
        WAIT for 2 us;
            
        -- start real test: shift in 3 bits, then shift them out
        SHIFT_OUT <= '0';
        SHIFT_DOWN <= '1';
   
        -- shift a 1 down
        SERIAL_IN <= '1';
        WAIT for CLK_PERIOD;

        -- shift a 0 down
        SERIAL_IN <= '0';
        WAIT for CLK_PERIOD;
    
        -- shift a 0 down
        SERIAL_IN <= '0';
        WAIT for CLK_PERIOD;
        
        --shift them out
        SHIFT_DOWN <='0';
        SHIFT_OUT <= '1';
        WAIT for CLK_PERIOD;
        
    
        --More testing: shift in another 2 bits, and then shift them out
        SHIFT_OUT <= '0';
        SHIFT_DOWN <= '1';
   
        -- shift a 1 down
        SERIAL_IN <= '1';
        WAIT for CLK_PERIOD;
        
        -- shift a 0 down
        SERIAL_IN <= '0';
        WAIT for CLK_PERIOD;
    
        --shift them out
        SHIFT_DOWN <='0';
        SHIFT_OUT <= '1';
        WAIT for CLK_PERIOD;
        
        
        --We have 5 bits in, lets add another 15 0-bits
        SHIFT_OUT <= '0';
        SHIFT_DOWN <= '1';
        for i in 14 downto 0 loop
            -- shift a 0 down
            SERIAL_IN <= '0';
            WAIT for CLK_PERIOD;
        end loop;
        
        -- shift out
        SHIFT_DOWN <= '0';
        SHIFT_OUT <= '1';
        WAIT for CLK_PERIOD;
        SHIFT_OUT <= '0';
        WAIT;
        
        
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
