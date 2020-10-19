
-- Ifetch module (provides the PC and instruction 
--memory for the MIPS computer)
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY Ifetch IS
	PORT(	 Instruction 		: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        	 PC_plus_4_out 	: OUT	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
        	 Add_result 		: IN 	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			 next_PC 		: OUT 	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			 
        	 BranchEQ 		: IN 	STD_LOGIC;
        	 BranchNEQ 		: IN 	STD_LOGIC;
        	 Zero,j,jr,INTR 	: IN 	STD_LOGIC;
        	 INTA 			: OUT 	STD_LOGIC;
      		 PC_out 			: OUT	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
        	 clock, reset 	: IN 	STD_LOGIC;
			 ALU_result_jr,Interrupt_address 		: IN 	STD_LOGIC_VECTOR( 7 DOWNTO 0 ));
END Ifetch;

ARCHITECTURE behavior OF Ifetch IS
	SIGNAL PC, PC_plus_4, Mem_Addr : STD_LOGIC_VECTOR( 9 DOWNTO 0 );
	SIGNAL next_PCsig,jumpaddress : STD_LOGIC_VECTOR( 7 DOWNTO 0 );
	SIGNAL Instruction_sig 		: 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	SIGNAL INTAsig,clocksig: 	STD_LOGIC;
	SIGNAL nop: 	STD_LOGIC := '0';
BEGIN
						--ROM for Instruction Memory
inst_memory: altsyncram
	
	GENERIC MAP (
		operation_mode => "ROM",
		width_a => 32,
		widthad_a => 10,
		lpm_type => "altsyncram",
		outdata_reg_a => "UNREGISTERED",
		init_file => "C:\Users\TalKa\Documents\GitHub\finalCPU\MIPS Quartus\text.hex",
		intended_device_family => "Cyclone"
	)
	PORT MAP (
		clock0      => clocksig,
		address_a 	=> Mem_Addr, 
		q_a 		=> Instruction_sig );
		
		
		
			Mem_Addr <=    next_PCsig & "00" ; --Quartos				
		-- Mem_Addr <=  "00" & next_PCsig    ; --MODELSIM
		
		Instruction <= Instruction_sig; --when nop = '0' else "00100001000010000000000000000000"; -- nop command: addi $t0,$t0,0 do nothing when nop = 1
		clocksig <= clock  ;--when nop = '0'  else '0';
		jumpaddress(7 downto 0)<= Instruction_sig( 7 DOWNTO 0);
		
		-- Instructions always start on word address - not byte
		PC(1 DOWNTO 0) <= "00";
		-- copy output signals - allows read inside module
		PC_out 			<= PC;
		PC_plus_4_out 	<= PC_plus_4;
						-- send address to inst. memory address register
						
	
		

						-- Adder to increment PC by 4        
      	PC_plus_4( 9 DOWNTO 2 )  <= PC( 9 DOWNTO 2 ) + 1;
       	PC_plus_4( 1 DOWNTO 0 )  <= "00";
						-- Mux to select Branch Address or PC + 4  
----------------real next pC-----------------------------------------------						
		next_PCsig  <= X"00" WHEN ((Reset = '1')) ELSE
			Interrupt_address  WHEN  INTAsig ='0' ELSE -- interupt
			ALU_result_jr  WHEN jr = '1' ELSE
			Add_result  WHEN ( ( BranchEQ = '1' ) AND ( Zero = '1' ) ) ELSE
			Add_result  WHEN ( ( BranchNEQ = '1' ) AND ( Zero = '0' ) ) ELSE
			jumpaddress	WHEN (j ='1') ELSE
			PC_plus_4( 9 DOWNTO 2 );
			
-------------------------------interupt only-------------------------------
			next_PC <= X"00" WHEN ((Reset = '1')) ELSE -- the next PC withour interupts, to return from interupt
					ALU_result_jr -1  WHEN jr = '1' ELSE
					Add_result -1  WHEN ( ( BranchEQ = '1' ) AND ( Zero = '1' ) ) ELSE
					Add_result -1  WHEN ( ( BranchNEQ = '1' ) AND ( Zero = '0' ) ) ELSE
					jumpaddress -1	WHEN (j ='1') ELSE
					PC_plus_4( 9 DOWNTO 2 ) -1;
---------------------------------------------------------------------------
	PROCESS
		BEGIN
			WAIT UNTIL ( clock'EVENT ) AND ( clock = '1' );
			IF reset = '1' THEN
				   PC( 9 DOWNTO 2) <= "00000000" ;
			ELSE  
				   PC( 9 DOWNTO 2 ) <= next_PCsig;
			END IF;								
	END PROCESS;
	
	process(clock) --OUTPUT process
	  begin
		  if (rising_edge(clock)) then	
		-- interrupt ack. when an interrupt accours we set the next pc to the new address by typex.
			--we send INTA = '0' to the intr component to set INTR back to 0.
				INTAsig <= '1';	
				
				if (nop = '1') then				
					nop <='0';
					--INTAsig <= '0';
				elsif (INTR = '1') then
					 nop <= '1';
					  INTAsig <= '0';			
				end if;
				
			end if;
	END PROCESS;
	INTA <= INTAsig;
END behavior;


