		-- control module (implements MIPS control unit)
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_SIGNED.ALL;

	ENTITY BT IS
	   PORT( 
		
		BTCTLIN 		: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );	--6 bits for clock control - 5:BTHOLD, 4-3:BTSEL, 2-0:BTIPx
		BTCTLOUT 		: OUT 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );	-- R\W registers
		
		BTCNTIN 		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );	-- Counter for basic timer
		BTCNTOUT 		: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 ); 	-- R\W registers
		
		BTIFG 			: OUT 	STD_LOGIC;	--flag for interapt

		BTCNTW	: IN 	STD_LOGIC ; --enable for BTCONTROL and BTCOUNTER
		BTCTLW	: IN 	STD_LOGIC ;
		clock	: IN 	STD_LOGIC );
	END BT;

ARCHITECTURE behavior OF BT IS
	
	SIGNAL  BTCTL : STD_LOGIC_VECTOR( 5 DOWNTO 0 ) := (others => '0');
	SIGNAL  BTCNT : STD_LOGIC_VECTOR( 31 DOWNTO 0 ) := (others => '0');
	SIGNAL  CLKcounter : STD_LOGIC_VECTOR( 2 DOWNTO 0 ):= (others => '0');
	SIGNAL  CLKdev,notclk,BTIFGsig,upClk,downClk,clk :STD_LOGIC:='0';

BEGIN           
	-- BTCTL: D_FF generic map (6) port map( BTCTLW,BTCTL,BTCTLOUT);
	--BTCNT: D_FF generic map (32) port map( BTCNTW,BTCNT,BTCNTOUT);
------------------clock devision----------------------------------	
process(clock) -- managed the clock devision
begin
	if (rising_edge(clock)) then--or falling_edge(clock)) then
		CLKcounter <= CLKcounter + 1;		
	end if;
end process;

-- CLKdev<=CLKcounter(to_integer(unsigned(BTCTL(4 downto 3)))); -- implements the MCLK devision
CLKdev <=	 
			 CLKcounter(0) WHEN BTCTL(4 downto 3) = "01" ELSE 
			 CLKcounter(1) WHEN BTCTL(4 downto 3) = "10" ELSE 
			 CLKcounter(2) WHEN BTCTL(4 downto 3) = "11" ELSE clock;
------------------------------------------------------------------

process (CLKdev,BTCNTW) -- normal case, COUNTER++
begin
if BTCNTW = '1' then
	BTCNT <= BTCNTIN;
elsif (rising_edge(CLKdev)) then
	if (BTCTL(5) = '0') then -- BTCTL(5) = BTHOLD
		   BTCNT <= BTCNT + 1;	 
	end if;
end if;
end process;
-----------------------------------------------------------------
BTCNTOUT<= BTCNT; -- output read reegister cnt
-----------------------------------------------------------------
-------------------BTCTL write---------------------

process(BTCTLW)
begin
			BTCTL <=BTCTL ;
			IF BTCTLW = '1' then --case input to CONTROL
				BTCTL <= BTCTLIN;
			end if;	
end process;

BTCTLOUT<= BTCTL; -- output read register ctl
clk<=clock;

--------------------FLAG MUX--------------------------------
-- i'th bit from counter of the clock by BTIPx from BTcontrol register(2-0)
	 BTIFG <=	 BTCNT(0) WHEN BTCTL(2 downto 0) = "000" ELSE 			
				 BTCNT(3) WHEN BTCTL(2 downto 0) = "001" ELSE 
				 BTCNT(7) WHEN BTCTL(2 downto 0) = "010" ELSE 
				 BTCNT(11) WHEN BTCTL(2 downto 0) = "011" ELSE 
				 BTCNT(15) WHEN BTCTL(2 downto 0) = "100" ELSE 
				 BTCNT(19) WHEN BTCTL(2 downto 0) = "101" ELSE 
				 BTCNT(23) WHEN BTCTL(2 downto 0) = "110" ELSE 
				 BTCNT(25) WHEN BTCTL(2 downto 0) = "111"; 
				 
					
				 
   END behavior;


