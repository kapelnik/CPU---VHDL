		-- control module (implements MIPS control unit)
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

ENTITY control IS
   PORT( 	
	Opcode 		: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
	RegDst 		: OUT 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
	ALUSrc 		: OUT 	STD_LOGIC;
	MemtoReg 	: OUT 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
	RegWrite 	: OUT 	STD_LOGIC;
	MemRead 	: OUT 	STD_LOGIC;
	MemWrite 	: OUT 	STD_LOGIC;
	BranchEQ,BranchNEQ,j 	: OUT 	STD_LOGIC;
	ALUop 		: OUT 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
	clock, reset	: IN 	STD_LOGIC );

END control;

ARCHITECTURE behavior OF control IS

	SIGNAL  R_format, Lw, Sw, Beq,Bne,addi, imm_op,jal 	: STD_LOGIC;

BEGIN           
				-- Code to generate control signals using opcode bits
	R_format 	<=  '1'  WHEN  Opcode = "000000"  ELSE '0';
	Lw          <=  '1'  WHEN  Opcode = "100011"  ELSE '0';
 	Sw          <=  '1'  WHEN  Opcode = "101011"  ELSE '0';
   	Beq         <=  '1'  WHEN  Opcode = "000100"  ELSE '0';
   	Bne         <=  '1'  WHEN  Opcode = "000101"  ELSE '0';
	addi 		<=	'1'  WHEN  Opcode = "001000"   ELSE '0';
	j			<=	'1'  WHEN  (Opcode = "000010"or jal = '1')  ELSE '0';
	jal			<=	'1'  WHEN  Opcode = "000011"  ELSE '0';
	imm_op      <=  '1'  WHEN  (Opcode = "001000" OR Opcode= "001100" OR Opcode= "001101" OR Opcode= "001110")  ELSE '0';
  	RegDst( 0 )    	<=  R_format;
	RegDst( 1 )    	<=  jal;
 	ALUSrc  	<=  Lw OR Sw or imm_op;
  	RegWrite 	<=  R_format OR Lw or imm_op or jal;
	MemtoReg( 0 )    	<= Lw;
	MemtoReg( 1 )    	<=  jal;
  	MemRead 	<=  Lw;
   	MemWrite 	<=  Sw; 
 	BranchEQ    <=  Beq;
	BranchNEQ   <=  Bne;
	ALUOp( 1 ) 	<=  R_format; 
	ALUOp( 0 ) 	<=  Bne OR Beq; 

   END behavior;


