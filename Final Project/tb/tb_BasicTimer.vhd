LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
USE ieee.std_logic_unsigned.ALL;


entity tb_BT is

end tb_BT;



ARCHITECTURE dtb_BT OF tb_BT IS
	component BT IS
	   PORT( 
		
		BTCTLIN 		: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );	--6 bits for clock control - 5:BTHOLD, 4-3:BTSEL, 2-0:BTIPx
		BTCTLOUT 		: OUT 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );	-- R\W registers
		
		BTCNTIN 		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );	-- Counter for basic timer
		BTCNTOUT 		: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 ); 	-- R\W registers
		
		BTIFG 			: OUT 	STD_LOGIC;	--flag for interapt

		BTCNTW	: IN 	STD_LOGIC ; --enable for BTCONTROL and BTCOUNTER
		BTCTLW	: IN 	STD_LOGIC ;
		clock	: IN 	STD_LOGIC );
	END component;

		signal BTCTLIN 		:  	STD_LOGIC_VECTOR( 5 DOWNTO 0 );	--6 bits for clock control - 5:BTHOLD, 4-3:BTSEL, 2-0:BTIPx
		signal BTCTLOUT 		:  	STD_LOGIC_VECTOR( 5 DOWNTO 0 );	-- R\W registers
		
		signal BTCNTIN 		:  	STD_LOGIC_VECTOR( 31 DOWNTO 0 );	-- Counter for basic timer
		signal BTCNTOUT 		:  	STD_LOGIC_VECTOR( 31 DOWNTO 0 ); 	-- R\W registers
		
		signal BTIFG 			:  	STD_LOGIC;	--flag for interapt

		signal BTCNTW	:  	STD_LOGIC ; --enable for BTCONTROL and BTCOUNTER
		signal BTCTLW	:  	STD_LOGIC ;
		signal clock	:  	STD_LOGIC ;
begin
	tester : BT  port map(BTCTLIN,BTCTLOUT,BTCNTIN,BTCNTOUT,BTIFG,BTCNTW,BTCTLW,clock );

	-- run for 3600 ns
	--------- start of stimulus section ------------------	
	tb_BT_test : PROCESS
	BEGIN

	
	BTCNTIN <= (others => '0');
	BTCNTW <= '1';
	
	BTCTLIN <= "000001";
	BTCTLW <= '1';
	
	wait for 150 ns; 
	BTCTLW <= '0';
	BTCNTW <= '0';

    wait for 1000 ns; 
	
	BTCNTIN <= (others => '1');
	BTCNTW <= '1';
	
	BTCTLIN <= "011010"; 
	BTCTLW <= '1';
	
	wait for 100 ns; 
	BTCTLW <= '0';
	BTCNTW <= '0';
		-- SWITCES<="00110001";
		-- Key0<='0';
		-- Key1<='0';
		-- Key2<='0';
		-- Key3<='0';
		-- cin <= '0' ;
		-- wait for 50 ns; 
		-- Key0<='1';
		-- wait for 50 ns; 
		-- Key0<='0';
		-- Key2<='1';
		-- wait for 50 ns;
		-- Key2<='0';		
		-- Key1<='1';	

		WAIT;
	END PROCESS tb_BT_test;

	
	tb_clock : PROCESS
	BEGIN
		clock <= '0' ;
		WAIT FOR 50 ns;
		clock <= '1'; 
		WAIT FOR 50 ns;
	END PROCESS tb_clock;

END dtb_BT;