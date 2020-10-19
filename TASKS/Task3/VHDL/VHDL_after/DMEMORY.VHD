						--  Dmemory module (implements the data
						--  memory for the MIPS computer)
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;




ENTITY dmemory IS
	PORT(	D_sw: IN STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			Q_ledG,Q_ledR,Q_hex0,Q_hex1,Q_hex2,Q_hex3: OUT STD_LOGIC_VECTOR( 7 DOWNTO 0 ):=(others=>'0');
			read_data 			: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        	address 			: IN 	STD_LOGIC_VECTOR( 11 DOWNTO 0 );
        	write_data 			: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	   		MemRead, Memwrite 	: IN 	STD_LOGIC;
            clock,reset	: IN 	STD_LOGIC
			);
END dmemory;



ARCHITECTURE behavior OF dmemory IS
Component D_FF 
generic ( n : integer := 8 );
PORT( 	clk: in std_logic;
		D: in std_logic_vector (n-1 downto 0);
		Q: out std_logic_vector (n-1 downto 0));
end Component;


SIGNAL write_clock,memwrite_sig : STD_LOGIC;
SIGNAL read_data_sig : 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL address_SIG : 	STD_LOGIC_VECTOR( 9 DOWNTO 0 );

--enables
SIGNAL ena_ledG,ena_ledR,ena_hex0,ena_hex1,ena_hex2,ena_hex3,ena_sw: STD_LOGIC:='0';




--timer buffers

Signal Q_ledG_sig,Q_ledR_sig,Q_hex0_sig,Q_hex1_sig,Q_hex2_sig,Q_hex3_sig: STD_LOGIC_VECTOR(7 downto 0):=(others=> '0');

BEGIN

	data_memory : altsyncram
	GENERIC MAP  (
		operation_mode => "SINGLE_PORT",
		width_a => 32,
		widthad_a => 10,
		lpm_type => "altsyncram",
		outdata_reg_a => "UNREGISTERED",
		init_file => "C:\Users\TalKa\Documents\GitHub\Task3newest\MIPS Quartus\data.hex",
		intended_device_family => "Cyclone"
	)
	PORT MAP (
		wren_a => memwrite_sig,
		clock0 => write_clock,
		data_a => write_data,
		address_a => address_SIG,
		q_a => read_data_sig	);
		memwrite_sig <= Memwrite AND NOT(address(11)); -- address(11) is '1' when we talk with our I/O
		
		address_SIG <= address(9 downto 0); --QUARTOS
		-- address_SIG <= "00" & address(9 downto 2); --ModelSim
		
		-- generate IO Flip Flops
		--output:
		LEDG: D_FF generic map (8) port map( ena_ledG,write_data(7 downto 0),Q_ledG_sig);
		LEDR: D_FF generic map (8) port map( ena_ledR,write_data(7 downto 0),Q_ledR_sig);
		hex0: D_FF generic map (8) port map( ena_hex0,write_data(7 downto 0),Q_hex0_sig);
		hex1: D_FF generic map (8) port map( ena_hex1,write_data(7 downto 0),Q_hex1_sig);
		hex2: D_FF generic map (8) port map( ena_hex2,write_data(7 downto 0),Q_hex2_sig);
		hex3: D_FF generic map (8) port map( ena_hex3,write_data(7 downto 0),Q_hex3_sig);
		
		--input:
		-- SW: D_FF port map(ena_sw,D_sw,Q_sw);
		
		Q_ledG<=Q_ledG_sig;
		Q_ledR<=Q_ledR_sig;
		Q_hex0<=Q_hex0_sig;
		Q_hex1<=Q_hex1_sig;
		Q_hex2<=Q_hex2_sig;
		Q_hex3<=Q_hex3_sig;

-------------------------read from IO --------------------------------------------------
		read_data(7 downto 0) <=  
							D_sw 		         			when address(11 downto 2) = "1000000110" else  -- read switches
							read_data_sig(7 downto 0) ; 												   -- read from memory
								
		read_data(31 downto 8) <= 
							(others => '0')					when address(11 downto 2) = "1000000110" else  -- read switches
							read_data_sig(31 downto 8); 												   -- read from memory
---------------------------------------------------------------------------------------

----------------------------------OUTPUT process-------------------------------------------------------
		process(clock,memwrite) 
		  begin
		if (clock'EVENT AND clock = '1') then		
		-- enable the right one to change
			ena_sw <= '0';   
			ena_ledR <= '0'; 			  			  
			ena_ledG <= '0';
			ena_hex0 <= '0';
			ena_hex1 <= '0';
			ena_hex2 <= '0';
			ena_hex3 <= '0';
		  --memwrite_sig<='0';
			if (Memwrite ='1') then
				case address(11 downto 2) is
				  when "1000000000" =>   ---IO calls
					ena_ledG <= '1';
				  when "1000000001" =>   
					ena_ledR <= '1';
				  when "1000000010" =>   
					ena_hex0 <= '1';
				  when "1000000011" =>   
					ena_hex1 <= '1';
				  when "1000000100" =>   
					ena_hex2 <= '1';
				  when "1000000101" =>   
					ena_hex3 <= '1';
				  when "1000000110" => 
					ena_sw <= '1';
				  when others => 
					ena_sw <= '0';--memory call
					--memwrite_sig<='1';
				end case;
			end if;
		end if;
		
		end process;


		
-- Load memory address register with write clock
		write_clock <= NOT clock;
END behavior;

-- #-------------------- MEMORY Mapped I/O -----------------------
-- #define PORT_LEDG[7-0] 0x800 - LSB byte (Output Mode)
-- #define PORT_LEDR[7-0] 0x804 - LSB byte (Output Mode)
-- #define PORT_HEX0[7-0] 0x808 - LSB byte (Output Mode)
-- #define PORT_HEX1[7-0] 0x80C - LSB byte (Output Mode)
-- #define PORT_HEX2[7-0] 0x810 - LSB byte (Output Mode)
-- #define PORT_HEX3[7-0] 0x814 - LSB byte (Output Mode)
-- #define PORT_SW[7-0]   0x818 - LSB byte (Input Mode)
-- #define PORT_KEY[3-0]  0x81C - LSB nibble (Input Mode)
-- #define BTCTL          0x820 - LSB byte 
-- #define BTCNT          0x824 - Word 
-- #--------------------------------------------------------------
-- #define IE             0x828 - LSB byte 
-- #define IFG            0x82C - LSB byte
-- #--------------------------------------------------------------
