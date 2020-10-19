LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 

USE work.aux_package.all;
-------------------------------------------------------------
entity top is
	generic (
		n : positive := 8 ; -- A,B length
		m : positive := 5 ; -- OPC length
		k : positive := 2   -- STATUS length
	);
	port(
		clk,rst: in std_logic:='0';
		Key0: in std_logic:='0';
		Key1: in std_logic:='0';
		Key2: in std_logic:='0';
		Key3: in std_logic:='0';
		cin : in std_logic:='0';
		SWITCES :IN  std_logic_vector(n-1 downto 0):=(others=> '0');
		----------------------------------------
		RES : out std_logic_vector(2*n-1 downto 0); -- RES(HI,LO)
		STATUS : out std_logic_vector(k-1 downto 0);
		seg0,seg1,seg2,seg3: out std_logic_vector(0 to 6);
		q : out std_logic_vector(7 downto 0)
	);
end top;
------------- complete the top Architecture code --------------
architecture arc_sys of top is
	-- signal	A :  std_logic_vector(n-1 downto 0):=(others=> '0');
	-- signal	B :  std_logic_vector(n-1 downto 0):=(others=> '0');
	-- signal	OPC :  std_logic_vector(m-1 downto 0):=(others=> '0');
	signal cinlast :std_logic:='0';
	-- signal HI,LO :std_logic_vector(n-1 downto 0):=(others=> '0');
	signal Alast,Blast : std_logic_vector(n-1 downto 0):=(others=> '0');
	signal OPClast : std_logic_vector(m-1 downto 0):=(others=> '0');
	signal HI,LO :  std_logic_vector(n-1 downto 0):=(others=> '0');
	signal STA_Sig :  std_logic_vector(k-1 downto 0):=(others=> '0');
	signal q_int : std_logic_vector (31 downto 0):=x"00000000";
	
	begin
	----------------------------------

    process (clk)
    begin
        if (rising_edge(clk)) then   
		        q_int <= q_int + 1;
	     end if;
    end process;
    q <= q_int(31 downto 24); -- Output only 8MSB
	
	---------------------------------
	
	-- Single_tap_counter : CounterEnvelope port map( Clk,'1',Qout);
-- component CounterEnvelope is port (
	-- Clk,En : in std_logic;	
	-- Qout          : out std_logic_vector (7 downto 0)); 
-- end component;	
--------------------------------------------------------------
ALUBuild1 : topALU generic map(n,m,k) port map(rst,Key3,cinlast,Alast,Blast,OPClast,HI,LO,STA_Sig);
		-- RESlast(n-1 downto 0)<=LO;
		-- RESlast(2*n-1 downto n)<=HI;
	--------------------------------------------------------------
	PROCESS (rst,Key0,Key1,Key2,Key3) --sequntial
	  BEGIN

		IF (rst='1') THEN
			Alast <= (others => '0');
			Blast <= (others => '0');
			cinlast<='0';
			OPClast <= (others => '0');
		ELSE
			cinlast<=STA_Sig(0);	--carry start with 0 and foes around in loop
			IF (Key0'EVENT and Key0='1') THEN
				---------------in------------------
				Alast <= SWITCES;	
			ELSE
				Alast<=Alast;
			END IF;

			IF (Key1'EVENT and Key1='1') THEN
				OPClast <= SWITCES(m-1 DOWNTO 0);
			ELSE
				OPClast<=OPClast;
			END IF;

			IF (Key2'EVENT and Key2='1') THEN
				Blast <= SWITCES;
			ELSE
				Blast<=Blast;
			END IF;
		
		END IF;
	END PROCESS;
  RES(2*n-1 downto n)<=HI;
  RES(n-1 downto 0)<=LO;
  STATUS<=STA_Sig;
  
  
  
  process (HI,LO)
BEGIN
    case HI(7 downto 4) is
        when "0000"=> seg0 <="0000001";  -- '0'
        when "0001"=> seg0 <="1001111";  -- '1'
        when "0010"=> seg0 <="0010010";  -- '2'
        when "0011"=> seg0 <="0000110";  -- '3'
        when "0100"=> seg0 <="1001100";  -- '4' 
        when "0101"=> seg0 <="0100100";  -- '5'
        when "0110"=> seg0 <="0100000";  -- '6'
        when "0111"=> seg0 <="0001111";  -- '7'
        when "1000"=> seg0 <="0000000";  -- '8'
        when "1001"=> seg0 <="0000100";  -- '9'
        when "1010"=> seg0 <="0001000";  -- 'A'
        when "1011"=> seg0 <="1100000";  -- 'b'
        when "1100"=> seg0 <="0110001";  -- 'C'
        when "1101"=> seg0 <="1000010";  -- 'd'
        when "1110"=> seg0 <="0110000";  -- 'E'
        when "1111"=> seg0 <="0111000";  -- 'F'
        when others =>  NULL;
    end case;
	case HI(3 downto 0) is
        when "0000"=> seg1 <="0000001";  -- '0'
        when "0001"=> seg1 <="1001111";  -- '1'
        when "0010"=> seg1 <="0010010";  -- '2'
        when "0011"=> seg1 <="0000110";  -- '3'
        when "0100"=> seg1 <="1001100";  -- '4' 
        when "0101"=> seg1 <="0100100";  -- '5'
        when "0110"=> seg1 <="0100000";  -- '6'
        when "0111"=> seg1 <="0001111";  -- '7'
        when "1000"=> seg1 <="0000000";  -- '8'
        when "1001"=> seg1 <="0000100";  -- '9'
        when "1010"=> seg1 <="0001000";  -- 'A'
        when "1011"=> seg1 <="1100000";  -- 'b'
        when "1100"=> seg1 <="0110001";  -- 'C'
        when "1101"=> seg1 <="1000010";  -- 'd'
        when "1110"=> seg1 <="0110000";  -- 'E'
        when "1111"=> seg1 <="0111000";  -- 'F'
        when others =>  NULL;
    end case;
	case LO(7 downto 4) is
        when "0000"=> seg2 <="0000001";  -- '0'
        when "0001"=> seg2 <="1001111";  -- '1'
        when "0010"=> seg2 <="0010010";  -- '2'
        when "0011"=> seg2 <="0000110";  -- '3'
        when "0100"=> seg2 <="1001100";  -- '4' 
        when "0101"=> seg2 <="0100100";  -- '5'
        when "0110"=> seg2 <="0100000";  -- '6'
        when "0111"=> seg2 <="0001111";  -- '7'
        when "1000"=> seg2 <="0000000";  -- '8'
        when "1001"=> seg2 <="0000100";  -- '9'
        when "1010"=> seg2 <="0001000";  -- 'A'
        when "1011"=> seg2 <="1100000";  -- 'b'
        when "1100"=> seg2 <="0110001";  -- 'C'
        when "1101"=> seg2 <="1000010";  -- 'd'
        when "1110"=> seg2 <="0110000";  -- 'E'
        when "1111"=> seg2 <="0111000";  -- 'F'
        when others =>  NULL;
    end case;
	case LO(3 downto 0) is
        when "0000"=> seg3 <="0000001";  -- '0'
        when "0001"=> seg3 <="1001111";  -- '1'
        when "0010"=> seg3 <="0010010";  -- '2'
        when "0011"=> seg3 <="0000110";  -- '3'
        when "0100"=> seg3 <="1001100";  -- '4' 
        when "0101"=> seg3 <="0100100";  -- '5'
        when "0110"=> seg3 <="0100000";  -- '6'
        when "0111"=> seg3 <="0001111";  -- '7'
        when "1000"=> seg3 <="0000000";  -- '8'
        when "1001"=> seg3 <="0000100";  -- '9'
        when "1010"=> seg3 <="0001000";  -- 'A'
        when "1011"=> seg3 <="1100000";  -- 'b'
        when "1100"=> seg3 <="0110001";  -- 'C'
        when "1101"=> seg3 <="1000010";  -- 'd'
        when "1110"=> seg3 <="0110000";  -- 'E'
        when "1111"=> seg3 <="0111000";  -- 'F'
        when others =>  NULL;
    end case;
end process;

end arc_sys;







