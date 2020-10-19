						--  Dmemory module (implements the data
						--  memory for the MIPS computer)
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;




ENTITY dmemory IS
	PORT(	Key1,Key2,Key3  : IN 	STD_LOGIC;
			D_sw: IN STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			Q_ledG,Q_ledR,Q_hex0,Q_hex1,Q_hex2,Q_hex3: OUT STD_LOGIC_VECTOR( 7 DOWNTO 0 ):=(others=>'0');
			read_data 				: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        	address 				: IN 	STD_LOGIC_VECTOR( 11 DOWNTO 0 );
        	write_data 				: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	   		MemRead, Memwrite 		: IN 	STD_LOGIC;
            clock,reset				: IN 	STD_LOGIC;
			BTIFG					: OUT 	STD_LOGIC;	------------------delete#^#$&$%^@%&$^&(&*(&*^%$#^
			INTR 					: OUT 	STD_LOGIC;
        	INTA 					: IN 	STD_LOGIC;
			Interrupt_address 		: OUT 	STD_LOGIC_VECTOR( 7 DOWNTO 0 ));
END dmemory;



ARCHITECTURE behavior OF dmemory IS
Component D_FF 
generic ( n : integer := 8 );
PORT( 	clk: in std_logic;
		D: in std_logic_vector (n-1 downto 0);
		Q: out std_logic_vector (n-1 downto 0));
end Component;

	COMPONENT BT 
	   PORT( 
		
		BTCTLIN 		: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );	--6 bits for clock control - 5:BTHOLD, 4-3:BTSEL, 2-0:BTIPx
		BTCTLOUT 		: OUT 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );	-- R\W registers
		
		BTCNTIN 		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );	-- Counter for basic timer
		BTCNTOUT 		: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 ); 	-- R\W registers
		
		BTIFG 			: OUT 	STD_LOGIC;	--flag for interapt

		BTCNTW	: IN 	STD_LOGIC ; --enable for BTCONTROL and BTCOUNTER
		BTCTLW	: IN 	STD_LOGIC ;
		clock	: IN 	STD_LOGIC );
	END COMPONENT;
	
	

	COMPONENT InterruptCtrl IS
	   PORT( 
		irq0,irq1,irq2,irq3 		: IN 	STD_LOGIC;	--interrupt requests from I/O


		IEin 		: IN 	STD_LOGIC_VECTOR( 3 DOWNTO 0 );	--4 bits for interrupt control 
		IEout 		: OUT 	STD_LOGIC_VECTOR( 3 DOWNTO 0 );	-- R\W registers
		
		IFGin 		: IN 	STD_LOGIC_VECTOR( 3 DOWNTO 0 );	--4 bits for interrupt control 
		IFGout 		: OUT 	STD_LOGIC_VECTOR( 3 DOWNTO 0 );	-- R\W registers
		
		
		TYPEx 		: OUT 	STD_LOGIC_VECTOR( 3 DOWNTO 0 ); 	--typex register, to know the address to jump for the interrupt function call, added to interrupt vector
		
		INTR 		: OUT 	STD_LOGIC;	--flag for interrupt request

		INTA 		: IN 	STD_LOGIC;	--flag for interrupt acknowledge

		IEw, IFGw	: IN 	STD_LOGIC  --enable for registers
		 );
	END COMPONENT;	

SIGNAL write_clock,memwrite_sig : STD_LOGIC;
SIGNAL read_data_sig : 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL address_SIG : 	STD_LOGIC_VECTOR( 9 DOWNTO 0 );

--enables
SIGNAL ena_ledG,ena_ledR,ena_hex0,ena_hex1,ena_hex2,ena_hex3,ena_sw,BTCTLW,BTCNTW: STD_LOGIC:='0';


--interrupt signals
SIGNAL		irq0,irq1,irq2,irq3 	:		STD_LOGIC;	--interrupt requests from I/O
SIGNAL		IEin 		:	STD_LOGIC_VECTOR( 3 DOWNTO 0 );	--4 bits for interrupt control 
SIGNAL		IEout 		:	STD_LOGIC_VECTOR( 3 DOWNTO 0 );	-- R\W registers
SIGNAL		IFGin 		:	STD_LOGIC_VECTOR( 3 DOWNTO 0 );	--4 bits for interrupt control 
SIGNAL		IFGout 		:	STD_LOGIC_VECTOR( 3 DOWNTO 0 );	-- R\W registers
SIGNAL		TYPEx 		:	STD_LOGIC_VECTOR( 3 DOWNTO 0 ); 	--typex register, to know the address to jump for the interrupt function call, added to interrupt vector
SIGNAL		INTRsig 		:	STD_LOGIC;	--flag for interrupt request
--SIGNAL		INTA 		:	STD_LOGIC;	--flag for interrupt acknowledge
SIGNAL		IEw, IFGw	:	STD_LOGIC ; --enable for registers


--timer buffers
SIGNAL BTCNTOUT : 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL BTCTLOUT : 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
Signal Q_ledG_sig,Q_ledR_sig,Q_hex0_sig,Q_hex1_sig,Q_hex2_sig,Q_hex3_sig: STD_LOGIC_VECTOR(7 downto 0):=(others=> '0');
SIGNAL  BTCTLIN : STD_LOGIC_VECTOR( 5 DOWNTO 0 ) := (others => '0');
SIGNAL key1_prev,key2_prev,key3_prev: STD_LOGIC;
SIGNAL BTIFGsig,BTIFGsig_prev : STD_LOGIC;

SIGNAL  BTCNTIN : STD_LOGIC_VECTOR( 31 DOWNTO 0 ) := (others => '0');
BEGIN





	data_memory : altsyncram
	GENERIC MAP  (
		operation_mode => "SINGLE_PORT",
		width_a => 32,
		widthad_a => 10,
		lpm_type => "altsyncram",
		outdata_reg_a => "UNREGISTERED",
		init_file => "C:\Users\TalKa\Documents\GitHub\finalCPU\MIPS Quartus\data.hex",
		intended_device_family => "Cyclone"
	)
	PORT MAP (
		wren_a => memwrite_sig,
		clock0 => write_clock,
		data_a => write_data,
		address_a => address_SIG,
		q_a => read_data_sig	);
		memwrite_sig <= Memwrite AND NOT(address(11));
		
		address_SIG <= address(9 downto 0) when INTA ='1' else (("000000" & TYPEx) + 4 ) ; --QUARTOS
		-- address_SIG <= ("00" & address(9 downto 2)) when INTA = '1' else ("00000000" & TYPEx(3 downto 2)) ; --ModelSim
	
		-- address_SIG_from_interupt<= 
		Interrupt_address <= read_data_sig(9 downto 2); -- word

		
		
		-- generate IO Flip Flops
		--output:
		LEDG: D_FF generic map (8) port map( ena_ledG,write_data(7 downto 0),Q_ledG_sig);
		LEDR: D_FF generic map (8) port map( ena_ledR,write_data(7 downto 0),Q_ledR_sig);
		hex0: D_FF generic map (8) port map( ena_hex0,write_data(7 downto 0),Q_hex0_sig);
		hex1: D_FF generic map (8) port map( ena_hex1,"0000" & write_data(7 downto 4),Q_hex1_sig);
		hex2: D_FF generic map (8) port map( ena_hex2,write_data(7 downto 0),Q_hex2_sig);
		hex3: D_FF generic map (8) port map( ena_hex3, "0000" & write_data(7 downto 4),Q_hex3_sig);
		
		-----------------------interrupt controller------------------------------------
		InterruptCtrl1 : InterruptCtrl  port map(irq0,irq1,irq2,irq3,IEin,IEout,IFGin,IFGout,TYPEx,INTR,INTA,IEw,IFGw);
		
		BTIFG <= BTIFGsig;
		process (clock) -- rising irq's only for one cycle 
		begin
		if rising_edge(clock) then 
			irq0 <= '0';
			irq1 <= '0';
			irq2 <= '0';
			irq3 <= '0';			
			if key1_prev ='1' and key1='0' then --pull up
				irq0 <='1';
			end if;
			if key2_prev ='1' and key2='0' then--pull up
				irq1 <='1';
			end if;
			if key3_prev ='1' and key3='0' then--pull up
				irq2 <='1';
			end if;
			if BTIFGsig_prev ='0' and BTIFGsig='1' then--BT  ("pull down")
				irq3 <='1';
			end if;
			key1_prev<=key1;
			key2_prev<=key2;
			key3_prev<=key3;
			BTIFGsig_prev<= BTIFGsig;
		end if;
		end process;
		
	
		
		------------------------------basic timer-------------------------------------------------
		BasicTimer : BT  port map(BTCTLIN,BTCTLOUT,BTCNTIN,BTCNTOUT,BTIFGsig,BTCNTW,BTCTLW,clock );

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
							BTCNTOUT(7 downto 0) 			when address(11 downto 2) = "1000001001" else  -- read BTCNT
							("00" & BTCTLOUT) 	 			when address(11 downto 2) = "1000001000" else  -- read BTCTL
							("0000" & IEout) 	 			when address(11 downto 2) = "1000001010" else  -- read IE
							("0000" & IFGout) 	 			when address(11 downto 2) = "1000001011" else  -- read IFG
							read_data_sig(7 downto 0) ; 												   -- read from memory
								
		read_data(31 downto 8) <= 
							(others => '0')					when address(11 downto 2) = "1000000110" else  -- read switches
							BTCNTOUT(31 downto 8)			when address(11 downto 2) = "1000001001" else  -- read BTCNT
							(others => '0') 				when address(11 downto 2) = "1000001000" else  -- read BTCTL
							(others => '0')  	 			when address(11 downto 2) = "1000001010" else  -- read IE
							(others => '0')  	 			when address(11 downto 2) = "1000001011" else  -- read IFG
							read_data_sig(31 downto 8); 												   -- read from memory
---------------------------------------------------------------------------------------

		
		process(clock) --OUTPUT process
		  begin
		if (clock'EVENT AND clock = '1') then		
		-- enable the right one:
			ena_sw <= '0';   
			ena_ledR <= '0'; 			  			  
			ena_ledG <= '0';
			ena_hex0 <= '0';
			ena_hex1 <= '0';
			ena_hex2 <= '0';
			ena_hex3 <= '0';
			BTCNTW   <= '0';
			BTCTLW   <= '0';
			IEw <= '0';
			IFGw <= '0';
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
				  when "1000001000" =>
				  BTCTLIN <=write_data(5 downto 0);
					BTCTLW <= '1';
				  when "1000001001" =>
				  BTCNTIN <=write_data(31 downto 0);
					BTCNTW <= '1';
				 when "1000001010" => -- IE WRITE
				  IEin <=write_data(3 downto 0);
				  IEw <= '1';
				 when "1000001011" => -- IFG WRITE
				  IFGin <=write_data(3 downto 0);
				  IFGw <= '1';
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
