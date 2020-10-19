				-- Top Level Structural Model for MIPS Processor Core
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

ENTITY MIPS IS
	generic( AddWidth : integer := 12);
	PORT( reset, clock					: IN 	STD_LOGIC; 
		-- Output important signals to pins for easy display in Simulator
		PC								: OUT  STD_LOGIC_VECTOR( 9 DOWNTO 0 );
		ALU_result_out, read_data_1_out, read_data_2_out, write_data_out,	
     	Instruction_out					: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
		Branch_out, Zero_out, Memwrite_out, 
		Regwrite_out,BTIFG					: OUT 	STD_LOGIC;
		D_swIn: IN STD_LOGIC_VECTOR( 7 DOWNTO 0 );
		Key1,Key2,Key3  : IN 	STD_LOGIC;
		Q_ledGout,Q_ledRout: OUT STD_LOGIC_VECTOR( 7 DOWNTO 0 );
		seg0,seg1,seg2,seg3: out std_logic_vector(0 to 6)		);
END 	MIPS;

ARCHITECTURE structure OF MIPS IS




	COMPONENT Ifetch
   	     PORT(	 Instruction 		: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        	 PC_plus_4_out 	: OUT	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
        	 Add_result 	: IN 	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			 next_PC 		: OUT 	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
        	 BranchEQ 		: IN 	STD_LOGIC;
        	 BranchNEQ 		: IN 	STD_LOGIC;
        	 Zero,j,jr,INTR : IN 	STD_LOGIC;
        	 INTA 			: OUT 	STD_LOGIC;
      		 PC_out 		: OUT	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
        	 clock, reset 	: IN 	STD_LOGIC;
			 ALU_result_jr,Interrupt_address 		: IN 	STD_LOGIC_VECTOR( 7 DOWNTO 0 ));
	END COMPONENT; 

	COMPONENT Idecode
 	     PORT(	read_data_1 		: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        		read_data_2 		: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        		Instruction 		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        		read_data 			: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        		ALU_result 			: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        		RegWrite			: IN 	STD_LOGIC;
				MemtoReg 			: IN 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
        		RegDst 				: IN 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
        		Sign_extend 		: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        		clock, reset		: IN 	STD_LOGIC );
	END COMPONENT;

	COMPONENT control
	     PORT( 	Opcode 				: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
             	RegDst 				: OUT 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
             	ALUSrc 				: OUT 	STD_LOGIC;
             	MemtoReg 			: OUT 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
             	RegWrite 			: OUT 	STD_LOGIC;
             	MemRead 			: OUT 	STD_LOGIC;
             	MemWrite 			: OUT 	STD_LOGIC;
             	BranchEQ,BranchNEQ,j 				: OUT 	STD_LOGIC;
             	ALUop 				: OUT 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
             	clock, reset, INTA		: IN 	STD_LOGIC );
	END COMPONENT;

	COMPONENT  Execute
   	     PORT(	Read_data_1 		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
                Read_data_2 		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
               	Sign_Extend 		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
               	Function_opcode		: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
               	opcode				: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
               	ALUOp 				: IN 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
               	ALUSrc 				: IN 	STD_LOGIC;
               	Zero,jr 			: OUT	STD_LOGIC;
               	ALU_Result 			: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
               	Add_Result 			: OUT	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
               	PC_plus_4 			: IN 	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
               	clock, reset		: IN 	STD_LOGIC );
	END COMPONENT;


	COMPONENT dmemory
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
	END COMPONENT;
	



					-- declare signals used to connect VHDL components
	SIGNAL PC_plus_4 		: STD_LOGIC_VECTOR( 9 DOWNTO 0 );
	SIGNAL read_data_1 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	SIGNAL read_data_2 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	SIGNAL Sign_Extend 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	SIGNAL Add_result,next_PC 		: STD_LOGIC_VECTOR( 7 DOWNTO 0 );
	SIGNAL ALU_result 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	SIGNAL read_data 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	SIGNAL ALUSrc ,BTIFG_sig			: STD_LOGIC;
	SIGNAL Branch,BranchEQ,BranchNEQ 			: STD_LOGIC;
	SIGNAL RegDst 			: STD_LOGIC_VECTOR( 1 DOWNTO 0 );
	SIGNAL Regwrite 		: STD_LOGIC;
	SIGNAL Zero,j,jr 			: STD_LOGIC;
	SIGNAL MemWrite 		: STD_LOGIC;
	SIGNAL MemtoReg 		: STD_LOGIC_VECTOR( 1 DOWNTO 0 );
	SIGNAL MemRead,INTR,INTA: STD_LOGIC;
	SIGNAL ALUop 			: STD_LOGIC_VECTOR(  1 DOWNTO 0 );
	SIGNAL Instruction,ALU_result_decode		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	signal D_sw,Interrupt_address: STD_LOGIC_VECTOR( 7 DOWNTO 0 );
	signal Q_ledG,Q_ledR,Q_hex0,Q_hex1,Q_hex2,Q_hex3: STD_LOGIC_VECTOR( 7 DOWNTO 0 );
	signal alu_res ,alu_res_modelSim			: 	STD_LOGIC_VECTOR( 11 DOWNTO 0 );
	SIGNAL NotReset 		: STD_LOGIC;

BEGIN

BTIFG<=BTIFG_sig; 
NotReset <= NOT(reset); -- Reset is key0 - which is pull down


					-- copy important signals to output pins for easy 
					-- display in Simulator
   Instruction_out 	<= Instruction;
   ALU_result_decode <= read_data WHEN MemtoReg = "01" ELSE
						ALU_result WHEN MemtoReg = "00" ELSE
						"0000000000000000000000" & next_PC & "00"; --PC_plus_4; -- jal;
						
   ALU_result_out 	<= ALU_result_decode;
   read_data_1_out 	<= read_data_1;
   read_data_2_out 	<= read_data_2;
   write_data_out  	<= 	ALU_result_decode;
   Branch_out 		<= Branch;
   Zero_out 		<= Zero;
   RegWrite_out 	<= RegWrite;
   MemWrite_out 	<= MemWrite;	
   Q_ledGout<=Q_ledG;
   Q_ledRout<=Q_ledR;
   D_sw<=D_swIn;
   process (Q_hex0,Q_hex1,Q_hex2,Q_hex3)
BEGIN
    case Q_hex0(3 downto 0) is
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
	case Q_hex1(3 downto 0) is
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
	case Q_hex2(3 downto 0) is
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
	case Q_hex3(3 downto 0) is
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
					-- connect the 5 MIPS components  
 
  IFE : Ifetch
	PORT MAP (	Instruction 	=> Instruction,
    	    	PC_plus_4_out 	=> PC_plus_4,
				Add_result 		=> Add_result,
				BranchEQ 			=> BranchEQ,
				BranchNEQ 			=> BranchNEQ,
				Zero 			=> Zero,
				next_PC=>next_PC,
				j=>j,
				jr=>jr,
				INTR=>INTR,
				INTA=>INTA,
				PC_out 			=> PC,        		
				clock 			=> clock,  
				reset 			=> NotReset,
				ALU_result_jr   =>ALU_Result( 9 DOWNTO 2 ),
				Interrupt_address=>Interrupt_address);

   ID : Idecode
   	PORT MAP (	read_data_1 	=> read_data_1,
        		read_data_2 	=> read_data_2,
        		Instruction 	=> Instruction,
        		read_data 		=> read_data,
				ALU_result 		=> ALU_result_decode,
				RegWrite 		=> RegWrite,
				MemtoReg 		=> MemtoReg,
				RegDst 			=> RegDst,
				Sign_extend 	=> Sign_extend,
        		clock 			=> clock,  
				reset 			=> NotReset );


   CTL:   control
	PORT MAP ( 	Opcode 			=> Instruction( 31 DOWNTO 26 ),
				RegDst 			=> RegDst,
				ALUSrc 			=> ALUSrc,
				MemtoReg 		=> MemtoReg,
				RegWrite 		=> RegWrite,
				MemRead 		=> MemRead,
				MemWrite 		=> MemWrite,
				BranchEQ 		=> BranchEQ,
				BranchNEQ 		=> BranchNEQ,
				j=> j,
				ALUop 			=> ALUop,
                clock 			=> clock,
				reset 			=> NotReset,
				INTA=> INTA				);

   EXE:  Execute
   	PORT MAP (	Read_data_1 	=> read_data_1,
             	Read_data_2 	=> read_data_2,
				Sign_extend 	=> Sign_extend,
                Function_opcode	=> Instruction( 5 DOWNTO 0 ),
				opcode			=> Instruction( 31 DOWNTO 26 ),
				ALUOp 			=> ALUop,
				ALUSrc 			=> ALUSrc,
				Zero 			=> Zero,
				jr 				=> jr,
                ALU_Result		=> ALU_Result,
				Add_Result 		=> Add_Result,
				PC_plus_4		=> PC_plus_4,
                Clock			=> clock,
				Reset			=> NotReset );

	   MEM:  dmemory
		PORT MAP (
					KEY1 => KEY1,
					KEY2 => KEY2,
					KEY3 => KEY3,
					D_sw=>D_sw,
					Q_ledG=>Q_ledG,Q_ledR=>Q_ledR,Q_hex0=>Q_hex0,Q_hex1=>Q_hex1,Q_hex2=>Q_hex2,Q_hex3=>Q_hex3,
					read_data 		=> read_data,
					address 		=> alu_res,--jump memory address by 4
					write_data 		=> read_data_2,
					MemRead 		=> MemRead, 
					Memwrite 		=> MemWrite, 
					clock 			=> clock,  
					reset 			=> NotReset,
					BTIFG			=>	BTIFG_sig,
					INTR=>INTR,
					INTA=>INTA,
					Interrupt_address=>Interrupt_address					);
	
	
			alu_res<=  ALU_Result (11 DOWNTO 2)& "00";
END structure;

