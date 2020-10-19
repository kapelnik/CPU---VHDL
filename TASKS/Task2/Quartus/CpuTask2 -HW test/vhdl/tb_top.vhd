LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
entity tb_top is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5 ; -- OPC length
		k : positive := 2   -- STATUS length
	);
end tb_top;



ARCHITECTURE dtb_top OF tb_top IS

		signal rst,Key0,Key1,Key2,Key3:  std_logic;
		signal cin :  std_logic;
		signal SWITCES :  std_logic_vector(n-1 downto 0);
		----------------------------------------
		signal RES :  std_logic_vector(2*n-1 downto 0); -- RES(HI,LO)
		signal STATUS :  std_logic_vector(k-1 downto 0);
	
begin
	tester : top generic map(n, m, k) port map(rst,Key0,Key1,Key2,Key3,cin,SWITCES,RES,STATUS);
	-- run for 3600 ns
	--------- start of stimulus section ------------------	
	tb_top_test : PROCESS
	BEGIN
		SWITCES<="00110001";
		Key0<='0';
		Key1<='0';
		Key2<='0';
		Key3<='0';
		cin <= '0' ;
		wait for 50 ns; 
		Key0<='1';
		wait for 50 ns; 
		Key0<='0';
		Key2<='1';
		wait for 50 ns;
		Key2<='0';		
		Key1<='1';	
		
		wait for 50 ns;

		Key0<='0';
		Key1<='0';
		Key2<='0';
		Key3<='0';
		SWITCES<="00001000";
		cin <= '0' ;
		wait for 50 ns; 
		Key0<='1';
		wait for 50 ns; 
		Key0<='0';
		Key2<='1';
		wait for 50 ns;
		Key2<='0';		
		Key1<='1';	
		
		wait for 50 ns;
		Key1<='0';	


		WAIT;
	END PROCESS tb_top_test;
	
	
	-- tb_ena : PROCESS
	-- BEGIN
		-- ena <= '1';--, '1' after 200 ns
		
		-- wait;
	-- END PROCESS tb_ena;
	
	tb_rst : PROCESS
	BEGIN
		rst <= '0';
		-- wait for 50 ns;
		-- rst <= '0';
		wait;
	END PROCESS tb_rst;
	
		-- tb_clk : PROCESS
	-- BEGIN
		-- clk <= '0' ;
		-- WAIT FOR 50 ns;
		-- clk <= '1'; 
		-- WAIT FOR 50 ns;
	-- END PROCESS tb_clk;

END dtb_top;