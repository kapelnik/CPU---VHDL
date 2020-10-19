		-- control module (implements MIPS control unit)
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
USE IEEE.STD_LOGIC_SIGNED.ALL;
----------------------
-- irq0 - KEy1  - lowest
-- irq1 - KEy2
-- irq2 - KEy3
-- irq3 - BTIFG - highest
--
	ENTITY InterruptCtrl IS
	   PORT( 
		irq0,irq1,irq2,irq3 		: IN 	STD_LOGIC:='0';	--interrupt requests from I/O


		IEin 		: IN 	STD_LOGIC_VECTOR( 3 DOWNTO 0 );	--4 bits for interrupt control 
		IEout 		: OUT 	STD_LOGIC_VECTOR( 3 DOWNTO 0 );	-- R\W registers
		
		IFGin 		: IN 	STD_LOGIC_VECTOR( 3 DOWNTO 0 );	--4 bits for interrupt control 
		IFGout 		: OUT 	STD_LOGIC_VECTOR( 3 DOWNTO 0 ):="0000";	-- R\W registers
		
		
		TYPEx 		: OUT 	STD_LOGIC_VECTOR( 3 DOWNTO 0 ); 	--typex register, to know the address to jump for the interrupt function call, added to interrupt vector
		
		INTR 		: OUT 	STD_LOGIC:='0';	--flag for interrupt request

		INTA 		: IN 	STD_LOGIC;	--flag for interrupt acknowledge

		IEw, IFGw	: IN 	STD_LOGIC  --enable for registers
		);
	END InterruptCtrl;

ARCHITECTURE behavior OF InterruptCtrl IS
Component D_FF 
generic ( n : integer := 8 );
PORT( 	clk: in std_logic;
		D: in std_logic_vector (n-1 downto 0);
		Q: out std_logic_vector (n-1 downto 0));
end Component;
signal IEsig,IFGsig,IFGlast :STD_LOGIC_VECTOR( 3 DOWNTO 0 ):="0000";
signal INTRsig,INTRsig3,INTRsig2,INTRsig1,INTRsig0,enaIfg,enaTYPEx :STD_LOGIC:='0';
signal TYPEsig3,TYPEsig2,TYPEsig1,TYPEsig0,TYPExsig,TYPExlast :STD_LOGIC_VECTOR( 3 DOWNTO 0 );

BEGIN           



------------------------FF menegments--------------------------------
IEout <= IEsig;
process(IEw)
begin
	IEsig<=IEsig;
		IF IEw = '1' then
			IEsig<=IEin;
		end if;	
end process;

INTifgFF: D_FF generic map (4) port map( enaIfg,IFGsig,IFGlast);
TYPExFF: D_FF generic map (4) port map( not(INTA),TYPExsig,TYPExlast);
IFGout <= IFGlast;

process(IFGw,irq0,irq1,irq2,irq3)
begin
	enaIfg<='1';
	IF IFGw = '1' then
		IFGsig<=IFGin;
	ELSIF irq0 = '1' then -- We've put in NOT KEY
		IFGsig(0) <= '1';		
	ELSIF irq1 = '1' then
		IFGsig(1) <= '1';
	ELSIF irq2 = '1' then
		IFGsig(2) <= '1';
	ELSIF irq3 = '1' then -- BTIFG
		IFGsig(3) <= '1';			
	ELSE 
	IFGsig<=IFGlast;
	enaIfg<='0';
	end if;		 
end process;




---------------------------------------------------------------------
---------------------------------------------------------------------
process (IFGsig(3),INTA)
begin
		if INTA = '0' then
			INTRsig3<= '0';
		elsif rising_edge(IFGsig(3)) then
			IF (IEsig(3) = '1') then 
				INTRsig3<= '1';
				TYPEsig3 <= X"c";
			end if;	 
		end if;	 
end process;
process (IFGsig(2),INTA)
begin
		if INTA = '0' then
			INTRsig2<= '0';
		elsif rising_edge(IFGsig(2)) then
			IF ((IEsig(2) = '1') and (IFGsig(3) = '0')) then -- priorty, 3 comes before 2
				INTRsig2<= '1';
				TYPEsig2 <= X"8";
			end if;	 
		end if;	 
end process;
process (IFGsig(1),INTA)
begin
		if INTA = '0' then
			INTRsig1<= '0';
		elsif rising_edge(IFGsig(1)) then
			IF ((IEsig(1) = '1') and (IFGsig(3) = '0') and (IFGsig(2) = '0')) then -- priorty, 3 and 2 comes before 1  
				INTRsig1<= '1';
				TYPEsig1 <= X"4";
			end if;	 
		end if;	 
end process;
process (IFGsig(0),INTA)
begin
		if INTA = '0' then
			INTRsig0<= '0';
		elsif rising_edge(IFGsig(0)) then
			IF ((IEsig(0) = '1') and (IFGsig(3) = '0') and (IFGsig(2) = '0') and (IFGsig(1) = '0')) then  -- priorty, 3 2 and 1 comes before 0 
				INTRsig0<= '1';
				TYPEsig0 <= X"0";
			end if;					
		end if;	 
end process;
---------------------------------------------------------------------------------
process (INTA,INTRsig3,INTRsig2,INTRsig1,INTRsig0)
begin
		INTRsig<='0';
		-- enaTYPEx <='1';
			if INTRsig3 = '1' then
			TYPExsig <= TYPEsig3; 
			INTRsig <= '1';
			elsif  INTRsig2 = '1' then
			TYPExsig <= TYPEsig2;
			INTRsig <= '1';		
			elsif  INTRsig1 = '1' then
			TYPExsig <= TYPEsig1; 
			INTRsig <= '1';
			elsif  INTRsig0 = '1' then 
			TYPExsig <= TYPEsig0;
			INTRsig <= '1';
			else
			TYPExsig<=TYPExsig;
			-- enaTYPEx <='0';
			end if;
end process;	
TYPEx<=TYPExlast;
---------------------------------------------------------------------------------			
process (INTA,INTRsig)
begin
		
		IF INTRsig = '1' then -- INTRsig means that we need to put INTR to 1
			INTR<= '1';
		else
			INTR<= 	'0';
		end if;
		
		IF INTA = '0' then -- CPU ACKed the interrupt that was sent to him
			INTR<= '0';
		end if;
		
end process;		
---------------------------------------------------------------------------------			
	
   END behavior;


