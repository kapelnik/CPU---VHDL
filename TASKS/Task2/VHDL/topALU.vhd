LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;
USE ieee.numeric_std.ALL;
use ieee.std_logic_unsigned.all;
-------------------------------------
ENTITY topALU IS
  GENERIC (
		n : positive := 8 ; -- A,B length
		m : positive := 5 ; -- OPC length
		k : positive := 2   -- STATUS length
		);
  PORT ( 			
		----------------------------------------
		
			rst,ena,clk,cin : IN STD_LOGIC;
			A,B : in std_logic_vector(n-1 downto 0);
			OPC : in std_logic_vector(m-1 downto 0);

		----------------------------------------
			HI,LO : out std_logic_vector(n-1 downto 0);
			Status: out std_logic_vector(k-1 downto 0));
			
END topALU;
--------------------------------------------------------------
ARCHITECTURE ops OF topALU IS
	Signal 		adderRes,shifterRes: STD_LOGIC_VECTOR (2*n-1 downto 0);
	Signal		shifterSTATUS : std_logic_vector(k-1 downto 0);
	Signal		B_sig : std_logic_vector(2 downto 0);
BEGIN
	B_sig<= B(2 downto 0);
	ALUBuild : ALU generic map(n, m, k) port map(rst,ena,clk,cin,A,B,OPC,adderRes);
	ShifterBuild : Shifter generic map(n, m, k) port map(cin,A,B_sig,OPC,shifterRes,shifterSTATUS);
	tester : outputSelector generic map(n, m, k) port map(adderRes,shifterRes,shifterSTATUS,OPC,HI,LO,Status);


END ops;

--configure list -delta collapse