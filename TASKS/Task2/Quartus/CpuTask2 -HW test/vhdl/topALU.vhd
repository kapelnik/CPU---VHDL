LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
USE ieee.std_logic_unsigned.ALL;
USE work.aux_package.ALL;
-------------------------------------
ENTITY topALU IS
  GENERIC (
		n : positive := 8 ; -- A,B length
		m : positive := 5 ; -- OPC length
		k : positive := 2   -- STATUS length
		);
  PORT ( 			
		----------------------------------------
		
			rst,Key3,cin : IN STD_LOGIC;
			A,B : in std_logic_vector(n-1 downto 0);
			OPC : in std_logic_vector(m-1 downto 0);

		----------------------------------------
			HI,LO : out std_logic_vector(n-1 downto 0);
			Status: out std_logic_vector(k-1 downto 0));
			
END topALU;
--------------------------------------------------------------
ARCHITECTURE ops OF topALU IS
	Signal 		adderRes,shifterRes,Result: STD_LOGIC_VECTOR (2*n-1 downto 0):=(others=> '0');
	Signal		shifterSTATUS, Status_sig : std_logic_vector(k-1 downto 0):=(others=> '0');
	Signal		HI_Sig,LO_Sig : std_logic_vector(n-1 downto 0):=(others=> '0');
	Signal 		Bshifter:std_logic_vector(2 downto 0):=(others=> '0');
BEGIN
	Bshifter<=B(2 downto 0);
	ALUBuild : ALU generic map(n, m, k) port map(Key3,cin,A,B,OPC,adderRes);
	ShifterBuild : Shifter generic map(n, m, k) port map(cin,A,Bshifter,OPC,shifterRes,shifterSTATUS);
	tester : outputSelector generic map(n, m, k) port map(adderRes,shifterRes,shifterSTATUS,OPC,HI_Sig,LO_Sig,Status_sig);
	HI<=HI_Sig;
	LO<=LO_Sig;
	Status<=Status_sig;

END ops;

--configure list -delta collapse