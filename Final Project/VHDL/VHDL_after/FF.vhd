library ieee;
use ieee. std_logic_1164.all;
use ieee. std_logic_arith.all;
use ieee. std_logic_unsigned.all;
 
entity D_FF is
generic( n : integer := 8 );
PORT( 	clk: in std_logic;
		D: in std_logic_vector (n-1 downto 0);
		Q: out std_logic_vector (n-1 downto 0));
end D_FF;
 
architecture behavioral of D_FF is
begin
process(clk)
begin
if(clk='1' and clk'EVENT) then
			Q <= D;
end if;
end process;
end behavioral;