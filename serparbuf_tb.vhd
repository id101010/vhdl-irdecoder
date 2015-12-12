LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY serparbuf_tb IS
END serparbuf_tb;
ARCHITECTURE behavioral OF serparbuf_tb IS 

   COMPONENT serparbuf
   PORT( DATA_IN	:	IN	STD_LOGIC; 
          CLEAR	:	IN	STD_LOGIC; 
          SHIFT_OUT	:	IN	STD_LOGIC; 
          ENABLE	:	IN	STD_LOGIC; 
          SHIFT_DOWN	:	IN	STD_LOGIC; 
          DATA_OUT	:	OUT	STD_LOGIC_VECTOR (19 DOWNTO 0));
   END COMPONENT;

   SIGNAL DATA_IN	:	STD_LOGIC;
   SIGNAL CLEAR	:	STD_LOGIC;
   SIGNAL SHIFT_OUT	:	STD_LOGIC;
   SIGNAL ENABLE	:	STD_LOGIC;
   SIGNAL SHIFT_DOWN	:	STD_LOGIC;
   SIGNAL DATA_OUT	:	STD_LOGIC_VECTOR (19 DOWNTO 0);

BEGIN

   UUT: serparbuf PORT MAP(
		DATA_IN => DATA_IN, 
		CLEAR => CLEAR, 
		SHIFT_OUT => SHIFT_OUT, 
		ENABLE => ENABLE, 
		SHIFT_DOWN => SHIFT_DOWN, 
		DATA_OUT => DATA_OUT
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	   --- Clear 
		ENABLE <= '0';
      CLEAR <= '1';
		WAIT for 2 us;
		CLEAR <= '0';
		WAIT for 2 us;
		
		-- test if nothing happens when EN=0
		DATA_IN <= '1';
		SHIFT_DOWN <= '1';
		SHIFT_OUT <='1';
		WAIT for 2 us;
		SHIFT_DOWN <= '0';
		WAIT for 2 us;
		SHIFT_DOWN <= '1';
		WAIT for 2 us;
		
		-- start real test: shift in 3 bits, then shift them out
		CLEAR <= '1';
		DATA_IN <= '1';
		SHIFT_OUT <= '0';
		SHIFT_DOWN <= '0';
		WAIT for 2 us;
		CLEAR <= '0';
		ENABLE <= '1';
		WAIT for 2 us;
		-- shift a 1 down
		SHIFT_DOWN <= '1';
		WAIT for 2 us;
		SHIFT_DOWN <= '0';
		DATA_IN <= '0';
		WAIT for 2 us;
		-- shift a 0 down
		SHIFT_DOWN <= '1';
		WAIT for 2 us;
		SHIFT_DOWN <= '0';
		WAIT for 2 us;
		-- shift a 0 down
		SHIFT_DOWN <= '1';
		WAIT for 2 us;
		SHIFT_DOWN <= '0';
		WAIT for 2 us;
		-- shift out
		SHIFT_OUT <= '1';
		WAIT for 2 us;
		SHIFT_OUT <= '0';
		DATA_IN <= '1';
		WAIT for 2 us;
		
		--More testing: shift in another 2 bits, and then shift them out
		-- shift a 1 down
		SHIFT_DOWN <= '1';
		WAIT for 2 us;
		SHIFT_DOWN <= '0';
		WAIT for 2 us;
		-- shift a 1 down
		SHIFT_DOWN <= '1';
		WAIT for 2 us;
		SHIFT_DOWN <= '0';
		DATA_IN <= '0';
		WAIT for 2 us;
		-- shift a 0 down
		SHIFT_DOWN <= '1';
		WAIT for 2 us;
		SHIFT_DOWN <= '0';
		WAIT for 2 us;
		-- shift out
		SHIFT_OUT <= '1';
		WAIT for 2 us;
		SHIFT_OUT <= '0';
		WAIT for 2 us;
		
		--We have 6 bits in, lets add another 14 0-bits
		for i in 13 downto 0 loop
				-- shift a 0 down
				SHIFT_DOWN <= '1';
				WAIT for 2 us;
				SHIFT_DOWN <= '0';
				WAIT for 2 us;
		end loop;
		
		-- shift out
		SHIFT_OUT <= '1';
		WAIT for 2 us;
		SHIFT_OUT <= '0';
		WAIT for 2 us;
		WAIT;
		
		
		
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
