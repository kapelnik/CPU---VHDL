LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
ENTITY tb_top3 IS
	generic (
		n : positive := 8 ;
		m : positive := 7 ;
		k : positive := 3);
END tb_top3;

ARCHITECTURE dftb_top3 OF tb_top3 IS

	SIGNAL rst,ena,clk : std_logic;
	SIGNAL rise:  STD_LOGIC;
	SIGNAL count:  std_logic_vector (k downto 0):= (others=> '0');
	
begin
	tester : top3 generic map(n, m, k) port map(rst,ena,clk,rise,count);
	-- run for 3600 ns
	--------- start of stimulus section ------------------	
	tb_clk : PROCESS
	BEGIN
		clk <= '0' ;
		WAIT FOR 50 ns;
		clk <= '1'; 
		WAIT FOR 50 ns;
	END PROCESS tb_clk;

	tb_rst : PROCESS
	BEGIN
		rst <= '1';
		wait for 100 ns;
		rst <= '0';
		wait;
	END PROCESS tb_rst;
	
		tb_ena : PROCESS
	BEGIN
		ena <= '0', '1' after 200 ns;
		wait;
	END PROCESS tb_ena;
	
	

	tb_cond : PROCESS
	BEGIN
		rise <= '0';
		WAIT FOR 400 ns;
		rise <= '1';
		wait for 400 ns;
		rise <= '0';
		wait for 400 ns;
		rise <= '1';
		wait for 400 ns;
		rise <= '0';
		wait for 400 ns;
		rise <= '1';
		wait;
	END PROCESS tb_cond;
	
	
END dftb_top3;