--  Execute module (implements the data ALU and Branch Address Adder  
--  for the MIPS computer)
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
-- USE IEEE.STD_LOGIC_ARITH.ALL;
-- USE IEEE.STD_LOGIC_SIGNED.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

ENTITY  Execute IS
	PORT(	Read_data_1 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Read_data_2 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Sign_extend 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Function_opcode : IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
			opcode 			: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
			ALUOp 			: IN 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
			ALUSrc 			: IN 	STD_LOGIC;
			Zero 			: OUT	STD_LOGIC;
			jr 			: OUT	STD_LOGIC;
			ALU_Result 		: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
			Add_Result 		: OUT	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
			PC_plus_4 		: IN 	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
			clock, reset	: IN 	STD_LOGIC );
END Execute;

ARCHITECTURE behavior OF Execute IS
SIGNAL Ainput, Binput 		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL ALU_output_mux		: STD_LOGIC_VECTOR( 31 DOWNTO 0 );
SIGNAL Branch_Add 			: STD_LOGIC_VECTOR( 7 DOWNTO 0 );
SIGNAL ALU_ctl				: STD_LOGIC_VECTOR( 2 DOWNTO 0 );
-- Signal isSll,isSrl :STD_LOGIC;

BEGIN
	Ainput <= Read_data_1;
	jr <= '1' when ((Opcode = "000000") AND (Function_opcode = "001000")) else '0';
						-- ALU input mux
	Binput <= Read_data_2 
		WHEN ( ALUSrc = '0' ) 
  		ELSE  Sign_extend( 31 DOWNTO 0 );
		
-------------------------------------------- Generate ALU control bits----------------------------------------------------------------
						-- each command gets a diffrent alu action
	 ALU_ctl <= "000" WHEN (Opcode = "001100" OR (ALUOp(1) = '1' AND Function_opcode = "100100")) ELSE --  AND/i
			"001" WHEN (Opcode = "001101" OR (ALUOp(1) = '1' AND Function_opcode = "100101")) ELSE -- OR/i
			"010" WHEN (Opcode = "001000" OR (ALUOp(1) = '1' AND Function_opcode = "100000") OR ALUOp="00") ELSE -- ADD/i
			"011" WHEN (ALUOp(1) = '1' AND Function_opcode = "000000") ELSE                        -- sll
			"100" WHEN (Opcode = "001110" OR (ALUOp(1) = '1' AND Function_opcode = "100110"))  ELSE -- XOR/i
			"101" WHEN (ALUOp(1) = '1' AND Function_opcode = "000010") ELSE -- SRL
			"110" WHEN (Opcode = "000100" OR Opcode = "000101" OR (ALUOp(1) = '1' AND (Function_opcode = "100010" OR Function_opcode = "101010"))) ELSE -- SUB/BEQ/BNE/SLT
			"111" WHEN (ALUOp(1) = '1' AND Function_opcode = "100001") ; -- addu

	Zero <= '1' 
		WHEN ( ALU_output_mux( 31 DOWNTO 0 ) = X"00000000" )
		ELSE '0';    
------------------------------- Select ALU output ------------------------------------------       
	ALU_result <= 
	Ainput   WHEN  (Opcode = "000000" AND Function_opcode = "001000") ELSE -- JR command
	X"0000000" & B"000"  & ALU_output_mux( 31 ) WHEN  ALU_ctl = "110"  ELSE -- for slt
  	ALU_output_mux( 31 DOWNTO 0 );
						-- Adder to compute Branch Address
	Branch_Add	<= PC_plus_4( 9 DOWNTO 2 ) +  Sign_extend( 7 DOWNTO 0 ) ;
		Add_result 	<= Branch_Add( 7 DOWNTO 0 );

-------------------------------------A-L-U--------------------------------------------------	
PROCESS ( ALU_ctl, Ainput, Binput )
	BEGIN
	
					-- Select ALU operation
 	CASE ALU_ctl IS
						-- ALU performs ALUresult = A_input AND B_input
		WHEN "000" 	=>	ALU_output_mux 	<= Ainput AND Binput; 
						-- ALU performs ALUresult = A_input OR B_input
     	WHEN "001" 	=>	ALU_output_mux 	<= Ainput OR Binput;
						-- ALU performs ALUresult = A_input + B_input
	 	WHEN "010" 	=>	ALU_output_mux 	<= Ainput + Binput;
						-- ALU performs Sll	
 	 	WHEN "011" 	=>	ALU_output_mux<=to_stdlogicvector(to_bitvector(std_logic_vector(Binput)) SLL to_integer(unsigned(Sign_extend(10 downto 6))));-- shift left logic			
						-- ALU performs xor / xori
 	 	WHEN "100" 	=>	ALU_output_mux 	<= Ainput XOR Binput;
						-- ALU performs SRL
 	 	WHEN "101" 	=>	ALU_output_mux 	<=  to_stdlogicvector(to_bitvector(std_logic_vector(Binput)) SRL to_integer(unsigned(Sign_extend(10 downto 6))));-- shift left logic;
						-- ALU performs ALUresult = A_input -B_input for BEQ/BNE/SUB/SLT
 	 	WHEN "110" 	=>	ALU_output_mux 	<= Ainput - Binput;
						-- ALU performs addu									
  	 	WHEN "111" 	=>	ALU_output_mux 	<= Ainput ;
 
 	 	WHEN OTHERS	=>	ALU_output_mux 	<= X"00000000" ;
  	END CASE;
	
  END PROCESS;
END behavior;

