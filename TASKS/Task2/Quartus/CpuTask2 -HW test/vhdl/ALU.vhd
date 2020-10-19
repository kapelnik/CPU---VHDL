LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;
USE ieee.numeric_std.ALL;
--USE ieee.std_logic_ARITH.all;
use ieee.std_logic_unsigned.all;
-------------------------------------
ENTITY ALU IS
  generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5 ; -- OPC length
		k : positive := 2   -- STATUS length
	);
  PORT (
			Key3: in std_logic:='0';
			cin : IN STD_LOGIC:='0';
			A : in std_logic_vector(n-1 downto 0):=(others=> '0');
			B : in std_logic_vector(n-1 downto 0):=(others=> '0');
			OPC : in std_logic_vector(m-1 downto 0):=(others=> '0');

		----------------------------------------
			RES : out std_logic_vector(2*n-1 downto 0)); -- Result(HI,LO)


END ALU;
------------- complete the top Architecture code --------------
ARCHITECTURE struct OF ALU IS


	SIGNAL ACC: std_logic_vector(2*n-1 DOWNTO 0):=(others=> '0'); -- for the BarrelShfter
	--SIGNAL Result:std_logic_vector(2*n-1 downto 0);
	--adder:
	Signal sel:std_logic_vector(1 downto 0):="00";
	Signal adderRes:std_logic_vector(n-1 downto 0);
	signal adderCout:std_logic;
	
BEGIN

AddSub:Adder generic map (n) port map (cin,A,B,sel,adderCout,adderRes);
sel(1)<= not OPC(0);
sel(0)<=OPC(1) XNOR OPC (0);



PROCESS (OPC,A,B,cin,Key3)
variable Along,Blong,Result:std_logic_vector(2*n-1 downto 0);
	BEGIN

	Along:=(others=> '0');
	Blong:=(others=> '0');
	Along(n-1 downto 0) := A;
	Blong(n-1 downto 0) := B;
	Result := ( others => '0');
	
		
	  	case OPC(4 downto 0) is
		  when "00001" =>   --Result := Along + Blong;
							Result(n downto 0) := adderCout & adderRes;	
		  when "00010" =>   --Result := Along - Blong;
							Result(n downto 0) := adderCout & adderRes;
							Result(2*n-1 downto n) := (others => adderCout);
		  when "00011" =>   --Result := Along + Blong + cin;
							Result(n downto 0) := adderCout & adderRes;
							
		  when "00100" =>   Result := std_logic_vector(unsigned(A)*unsigned(B));
		  
		  when "00101" =>				
							Result:= std_logic_vector(unsigned(ACC)+(unsigned(A)*unsigned(B)));		  
		  when "00110" =>   Result:= (others=> '0'); --acc Resultet

							
		  when "00111" => if A<B then
								Result := Blong; --max
								else Result := Along;
							end if;
							
		  when "01000" => if A<B then
				Result := Along; --min
				else Result := Blong;
				end if;
			when "01001" => --and
						Result(n-1 downto 0) := A and B;				
			when "01010" => -- or
						Result(n-1 downto 0) := A or B;
			when "01011" =>	--xor	
						Result(n-1 downto 0) := A xor B;			
		   when others => Result := (others=> '1'); --not for me 
		end case;
			

		RES <= Result; -- we used an internal signal Result
			
	END PROCESS;
	
PROCESS (Key3,OPC)
BEGIN
	IF OPC(4 downto 0)= "00110"  THEN
		ACC <= (others=> '0') ;
	ELSIF OPC(4 downto 0)= "00101" THEN
		IF (Key3'EVENT and Key3='1') THEN
			ACC <= std_logic_vector(unsigned(ACC)+(unsigned(A)*unsigned(B)));							
		END IF;
	END IF;
	
END PROCESS;
	
	

END struct;

--configure list -delta collapse

