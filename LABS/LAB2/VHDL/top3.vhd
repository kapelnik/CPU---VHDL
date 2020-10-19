LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE work.aux_package.all;
USE ieee.numeric_std.ALL;
-------------------------------------------------------------
entity top3 is
	generic (
		n : positive := 8 ;
		m : positive := 7 ;
		k : positive := 3
	); -- where k=log2(m+1)
	port(
		rst,ena,clk : in std_logic;		
		rise: in STD_LOGIC;
		count: out std_logic_vector (k downto 0)
	);
end top3;
------------- complete the top Architecture code --------------
architecture arc_sys of top3 is
	SIGNAL c: std_logic_vector (k downto 0);
	
BEGIN

	PROCESS (clk, rst)  --sequntial
	  BEGIN
		IF (rst='1') THEN
			c <= (others=>'0');
		ELSIF (clk'EVENT and clk='1') THEN
			IF (ena = '1') THEN
	
				IF (rise ='0') THEN
					c <= (others=>'0');
				ELSIF(c < m+1  ) 	THEN
					c <=c + 1;
				ELSE 
					c <= c;
				END IF;
			END IF;
	   END IF;
	  END PROCESS;
	  count <= c;
	  
end arc_sys;







