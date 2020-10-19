-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Web Edition"

-- DATE "06/04/2020 13:19:51"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top IS
    PORT (
	rst : IN std_logic;
	ena : IN std_logic;
	clk : IN std_logic;
	cin : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	OPC : IN std_logic_vector(4 DOWNTO 0);
	RES : OUT std_logic_vector(15 DOWNTO 0);
	STATUS : OUT std_logic_vector(1 DOWNTO 0)
	);
END top;

-- Design Ports Information
-- RES[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[1]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[2]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[4]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[5]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[6]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[7]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[8]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[9]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[10]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[11]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[12]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[13]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[14]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- RES[15]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- STATUS[0]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- STATUS[1]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ena	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OPC[3]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OPC[2]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OPC[1]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- cin	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OPC[0]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OPC[4]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_ena : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_cin : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_OPC : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_RES : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_STATUS : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAA_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAA_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAB_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT10\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT11\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT12\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT14\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~0\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~1\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~14_combout\ : std_logic;
SIGNAL \ALUBuild|tester|LessThan0~1_combout\ : std_logic;
SIGNAL \ALUBuild|tester|Status[1]~1_combout\ : std_logic;
SIGNAL \ALUBuild|tester|Status[1]~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|first|s~combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux15~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux15~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux15~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux15~3_combout\ : std_logic;
SIGNAL \Blast[3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|first|cout~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|rest:2:chain|s~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux13~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux13~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|rest:3:chain|s~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux12~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux12~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux12~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux11~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux10~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux9~0_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~18_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux0~0_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~18_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux0~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux31~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux30~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux27~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux26~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux25~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux24~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux23~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux22~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux18~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \ena~combout\ : std_logic;
SIGNAL \Alast[0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|RES[3]~1_combout\ : std_logic;
SIGNAL \Blast[7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \Alast[7]~_Duplicate_1_regout\ : std_logic;
SIGNAL \Blast[6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \Alast[5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \Blast[4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \Alast[3]~_Duplicate_1_regout\ : std_logic;
SIGNAL \Blast[2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \Alast[1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \Blast[0]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|LessThan0~1_cout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|LessThan0~3_cout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|LessThan0~5_cout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|LessThan0~7_cout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|LessThan0~9_cout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|LessThan0~11_cout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|LessThan0~13_cout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|LessThan0~14_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|RES[3]~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|RES[3]~6_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux15~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|RES[3]~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~dataout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT1\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT2\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT3\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT4\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT5\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT6\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT7\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT8\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT9\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT10\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT11\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT12\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT13\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT14\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT15\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~0\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~1\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~dataout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux15~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux15~6_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux15~7_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|ACC[4]~0_combout\ : std_logic;
SIGNAL \Alast[6]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~3_combout\ : std_logic;
SIGNAL \cin~combout\ : std_logic;
SIGNAL \cinlast~regout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~4_combout\ : std_logic;
SIGNAL \Blast[1]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~5_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux8~0_combout\ : std_logic;
SIGNAL \Alast[4]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~1_combout\ : std_logic;
SIGNAL \Alast[2]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~0_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~2_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~4_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~3_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~5_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux8~1_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux8~2_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux8~3_combout\ : std_logic;
SIGNAL \ALUBuild|tester|LO[0]~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux14~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|RES[3]~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|c0~combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|first|cout~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|rest:1:chain|s~combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux14~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux14~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT1\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux14~3_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~1\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux14~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux14~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux14~6_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~9_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~10_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~11_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~10_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~9_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~11_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~6_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~7_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~8_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux7~0_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~6_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~7_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~8_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux7~1_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux7~2_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux7~3_combout\ : std_logic;
SIGNAL \ALUBuild|tester|LO[1]~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT2\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|RES[3]~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux13~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux13~3_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux29~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|ACC[15]~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|ACC[15]~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~3\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux13~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux13~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux13~6_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~13_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~14_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~12_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~0_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~12_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~13_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~14_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux6~0_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux6~1_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux6~2_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux6~3_combout\ : std_logic;
SIGNAL \ALUBuild|tester|LO[2]~2_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~15_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~1_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~16_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~16_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~15_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux5~0_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux5~1_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux5~2_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux5~3_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT3\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux12~3_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux28~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~5\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~6_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux12~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux12~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux12~6_combout\ : std_logic;
SIGNAL \ALUBuild|tester|LO[3]~3_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|rest:1:chain|cout~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|rest:2:chain|cout~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|rest:3:chain|cout~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|rest:4:chain|s~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|RES[3]~3_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux11~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux11~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux11~3_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT4\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~7\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~8_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux11~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux11~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux11~6_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateLeft0~17_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux4~0_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~17_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux4~1_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux4~2_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux4~3_combout\ : std_logic;
SIGNAL \ALUBuild|tester|LO[4]~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux10~6_combout\ : std_logic;
SIGNAL \Blast[5]~_Duplicate_1_regout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT5\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux10~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|rest:4:chain|cout~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|rest:5:chain|s~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux10~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux10~3_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux10~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~9\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~10_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux10~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux10~7_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux3~0_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|RotateRight0~2_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux3~1_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux3~2_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux3~3_combout\ : std_logic;
SIGNAL \ALUBuild|tester|LO[5]~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|rest:5:chain|cout~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux9~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux9~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux9~3_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux9~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux9~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT6\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~11\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~12_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux9~6_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux9~7_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux2~0_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux2~1_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux2~2_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux2~3_combout\ : std_logic;
SIGNAL \ALUBuild|tester|LO[6]~6_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux8~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux8~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux8~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|AddSub|rest:6:chain|cout~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux8~3_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux8~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT7\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux8~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux8~6_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux8~7_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux1~0_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux1~1_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux1~2_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux1~3_combout\ : std_logic;
SIGNAL \ALUBuild|tester|LO[7]~7_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux7~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT8\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~13\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~15\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~16_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux7~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux7~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux7~3_combout\ : std_logic;
SIGNAL \ALUBuild|tester|HI[0]~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux6~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux6~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux6~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT9\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~17\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~18_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux6~3_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux6~4_combout\ : std_logic;
SIGNAL \ALUBuild|tester|HI[1]~1_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux21~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~19\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~20_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux5~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux5~1_combout\ : std_logic;
SIGNAL \ALUBuild|tester|HI[2]~2_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux20~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~21\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~22_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux4~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux4~1_combout\ : std_logic;
SIGNAL \ALUBuild|tester|HI[3]~3_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux19~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~23\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~24_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux3~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux3~1_combout\ : std_logic;
SIGNAL \ALUBuild|tester|HI[4]~4_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT13\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~25\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~26_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux2~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux2~1_combout\ : std_logic;
SIGNAL \ALUBuild|tester|HI[5]~5_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux17~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~27\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~28_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux1~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux1~1_combout\ : std_logic;
SIGNAL \ALUBuild|tester|HI[6]~6_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux16~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT15\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~29\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Add0~30_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux0~0_combout\ : std_logic;
SIGNAL \ALUBuild|ALUBuild|Mux0~1_combout\ : std_logic;
SIGNAL \ALUBuild|tester|HI[7]~7_combout\ : std_logic;
SIGNAL \ALUBuild|tester|LessThan0~0_combout\ : std_logic;
SIGNAL \ALUBuild|ShifterBuild|Mux0~2_combout\ : std_logic;
SIGNAL \ALUBuild|tester|Status[0]~0_combout\ : std_logic;
SIGNAL \STATUSlast[0]~0_combout\ : std_logic;
SIGNAL \ALUBuild|tester|Status[1]~4_combout\ : std_logic;
SIGNAL \ALUBuild|tester|Status[1]~6_combout\ : std_logic;
SIGNAL \ALUBuild|tester|Status[1]~2_combout\ : std_logic;
SIGNAL \ALUBuild|tester|Status[1]~3_combout\ : std_logic;
SIGNAL \ALUBuild|tester|Status[1]~7_combout\ : std_logic;
SIGNAL STATUSlast : std_logic_vector(1 DOWNTO 0);
SIGNAL RESlast : std_logic_vector(15 DOWNTO 0);
SIGNAL OPClast : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALUBuild|ALUBuild|RES\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALUBuild|ALUBuild|ACC\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALUBuild|ALUBuild|AddSub|yin\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \OPC~combout\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_rst <= rst;
ww_ena <= ena;
ww_clk <= clk;
ww_cin <= cin;
ww_A <= A;
ww_B <= B;
ww_OPC <= OPC;
RES <= ww_RES;
STATUS <= ww_STATUS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAA_bus\ <= (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT15\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT14\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT13\ & 
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT12\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT11\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT10\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT9\ & 
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT8\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT7\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT6\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT5\ & 
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT4\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT3\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT2\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT1\ & 
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~dataout\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~1\ & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~0\);

\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~0\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(0);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~1\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(1);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~dataout\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(2);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT1\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(3);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT2\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(4);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT3\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(5);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT4\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(6);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT5\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(7);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT6\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(8);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT7\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(9);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT8\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(10);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT9\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(11);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT10\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(12);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT11\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(13);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT12\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(14);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT13\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(15);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT14\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(16);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT15\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\(17);

\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAA_bus\ <= (\A~combout\(7) & \A~combout\(6) & \A~combout\(5) & \A~combout\(4) & \A~combout\(3) & \A~combout\(2) & \A~combout\(1) & \A~combout\(0) & gnd);

\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAB_bus\ <= (\B~combout\(7) & \B~combout\(6) & \B~combout\(5) & \B~combout\(4) & \B~combout\(3) & \B~combout\(2) & \B~combout\(1) & \B~combout\(0) & gnd);

\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~0\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(0);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~1\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(1);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~dataout\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(2);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT1\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(3);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT2\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(4);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT3\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(5);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT4\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(6);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT5\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(7);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT6\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(8);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT7\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(9);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT8\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(10);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT9\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(11);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT10\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(12);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT11\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(13);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT12\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(14);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT13\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(15);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT14\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(16);
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1~DATAOUT15\ <= \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\(17);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);

-- Location: DSPOUT_X28_Y22_N2
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2\ : cycloneii_mac_out
-- pragma translate_off
GENERIC MAP (
	dataa_width => 18,
	output_clock => "none")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAA_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2_DATAOUT_bus\);

-- Location: LCCOMB_X32_Y22_N14
\ALUBuild|ALUBuild|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~14_combout\ = (\ALUBuild|ALUBuild|ACC\(7) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT7\ & (\ALUBuild|ALUBuild|Add0~13\ & VCC)) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT7\ & 
-- (!\ALUBuild|ALUBuild|Add0~13\)))) # (!\ALUBuild|ALUBuild|ACC\(7) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT7\ & (!\ALUBuild|ALUBuild|Add0~13\)) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT7\ & 
-- ((\ALUBuild|ALUBuild|Add0~13\) # (GND)))))
-- \ALUBuild|ALUBuild|Add0~15\ = CARRY((\ALUBuild|ALUBuild|ACC\(7) & (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT7\ & !\ALUBuild|ALUBuild|Add0~13\)) # (!\ALUBuild|ALUBuild|ACC\(7) & ((!\ALUBuild|ALUBuild|Add0~13\) # 
-- (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|ACC\(7),
	datab => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT7\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~13\,
	combout => \ALUBuild|ALUBuild|Add0~14_combout\,
	cout => \ALUBuild|ALUBuild|Add0~15\);

-- Location: LCCOMB_X34_Y22_N24
\ALUBuild|tester|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|LessThan0~1_combout\ = (\ALUBuild|ALUBuild|RES\(11)) # ((\ALUBuild|ALUBuild|RES\(9)) # ((\ALUBuild|ALUBuild|RES\(8)) # (\ALUBuild|ALUBuild|RES\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES\(11),
	datab => \ALUBuild|ALUBuild|RES\(9),
	datac => \ALUBuild|ALUBuild|RES\(8),
	datad => \ALUBuild|ALUBuild|RES\(10),
	combout => \ALUBuild|tester|LessThan0~1_combout\);

-- Location: LCCOMB_X36_Y24_N10
\ALUBuild|tester|Status[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|Status[1]~1_combout\ = (OPClast(3) & (OPClast(2) & (!\ALUBuild|ShifterBuild|Mux8~3_combout\ & !\ALUBuild|ShifterBuild|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => OPClast(2),
	datac => \ALUBuild|ShifterBuild|Mux8~3_combout\,
	datad => \ALUBuild|ShifterBuild|Mux7~3_combout\,
	combout => \ALUBuild|tester|Status[1]~1_combout\);

-- Location: LCCOMB_X35_Y24_N30
\ALUBuild|tester|Status[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|Status[1]~5_combout\ = (!\ALUBuild|ALUBuild|RES\(3) & (!\ALUBuild|ALUBuild|RES\(5) & (!\ALUBuild|ALUBuild|RES\(4) & !\ALUBuild|ALUBuild|RES\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES\(3),
	datab => \ALUBuild|ALUBuild|RES\(5),
	datac => \ALUBuild|ALUBuild|RES\(4),
	datad => \ALUBuild|ALUBuild|RES\(2),
	combout => \ALUBuild|tester|Status[1]~5_combout\);

-- Location: LCCOMB_X34_Y24_N24
\ALUBuild|ALUBuild|AddSub|first|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|first|s~combout\ = OPClast(0) $ (\Blast[0]~_Duplicate_1_regout\ $ (\Alast[0]~_Duplicate_1_regout\ $ (\ALUBuild|ALUBuild|AddSub|c0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(0),
	datab => \Blast[0]~_Duplicate_1_regout\,
	datac => \Alast[0]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|AddSub|c0~combout\,
	combout => \ALUBuild|ALUBuild|AddSub|first|s~combout\);

-- Location: LCCOMB_X34_Y24_N26
\ALUBuild|ALUBuild|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux15~0_combout\ = (OPClast(2)) # ((\Blast[0]~_Duplicate_1_regout\ & \Alast[0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(2),
	datab => \Blast[0]~_Duplicate_1_regout\,
	datac => \Alast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ALUBuild|Mux15~0_combout\);

-- Location: LCCOMB_X34_Y24_N16
\ALUBuild|ALUBuild|Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux15~1_combout\ = (\ALUBuild|ALUBuild|RES[3]~3_combout\ & (\ALUBuild|ALUBuild|RES[3]~2_combout\ & ((\ALUBuild|ALUBuild|Mux15~0_combout\)))) # (!\ALUBuild|ALUBuild|RES[3]~3_combout\ & (((!\ALUBuild|ALUBuild|AddSub|first|s~combout\)) # 
-- (!\ALUBuild|ALUBuild|RES[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~3_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~2_combout\,
	datac => \ALUBuild|ALUBuild|AddSub|first|s~combout\,
	datad => \ALUBuild|ALUBuild|Mux15~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux15~1_combout\);

-- Location: LCCOMB_X34_Y24_N2
\ALUBuild|ALUBuild|Mux15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux15~2_combout\ = (\ALUBuild|ALUBuild|RES[3]~4_combout\ & ((\Blast[0]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|Mux15~1_combout\) # (!\Alast[0]~_Duplicate_1_regout\))) # (!\Blast[0]~_Duplicate_1_regout\ & 
-- ((\Alast[0]~_Duplicate_1_regout\))))) # (!\ALUBuild|ALUBuild|RES[3]~4_combout\ & (\ALUBuild|ALUBuild|Mux15~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mux15~1_combout\,
	datab => \Blast[0]~_Duplicate_1_regout\,
	datac => \Alast[0]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|RES[3]~4_combout\,
	combout => \ALUBuild|ALUBuild|Mux15~2_combout\);

-- Location: LCCOMB_X34_Y24_N20
\ALUBuild|ALUBuild|Mux15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux15~3_combout\ = (\ALUBuild|ALUBuild|RES[3]~1_combout\ & (((\ALUBuild|ALUBuild|RES[3]~0_combout\) # (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~dataout\)))) # (!\ALUBuild|ALUBuild|RES[3]~1_combout\ & 
-- (\ALUBuild|ALUBuild|Mux15~2_combout\ & (!\ALUBuild|ALUBuild|RES[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datab => \ALUBuild|ALUBuild|Mux15~2_combout\,
	datac => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	datad => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~dataout\,
	combout => \ALUBuild|ALUBuild|Mux15~3_combout\);

-- Location: LCFF_X31_Y22_N9
\ALUBuild|ALUBuild|ACC[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux31~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(0));

-- Location: LCFF_X32_Y23_N11
\Blast[3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(3),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Blast[3]~_Duplicate_1_regout\);

-- Location: LCCOMB_X33_Y23_N24
\ALUBuild|ALUBuild|AddSub|first|cout~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|first|cout~1_combout\ = (OPClast(0) & (((!\cinlast~regout\) # (!\Blast[0]~_Duplicate_1_regout\)) # (!OPClast(1)))) # (!OPClast(0) & (((\Blast[0]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datab => OPClast(0),
	datac => \Blast[0]~_Duplicate_1_regout\,
	datad => \cinlast~regout\,
	combout => \ALUBuild|ALUBuild|AddSub|first|cout~1_combout\);

-- Location: LCFF_X31_Y22_N3
\ALUBuild|ALUBuild|ACC[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux30~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(1));

-- Location: LCCOMB_X34_Y24_N30
\ALUBuild|ALUBuild|AddSub|rest:2:chain|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|rest:2:chain|s~0_combout\ = OPClast(0) $ (\Blast[2]~_Duplicate_1_regout\ $ (\ALUBuild|ALUBuild|AddSub|rest:1:chain|cout~0_combout\ $ (\Alast[2]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(0),
	datab => \Blast[2]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|AddSub|rest:1:chain|cout~0_combout\,
	datad => \Alast[2]~_Duplicate_1_regout\,
	combout => \ALUBuild|ALUBuild|AddSub|rest:2:chain|s~0_combout\);

-- Location: LCCOMB_X34_Y24_N4
\ALUBuild|ALUBuild|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux13~0_combout\ = (OPClast(2)) # ((\Blast[2]~_Duplicate_1_regout\ & \Alast[2]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(2),
	datac => \Blast[2]~_Duplicate_1_regout\,
	datad => \Alast[2]~_Duplicate_1_regout\,
	combout => \ALUBuild|ALUBuild|Mux13~0_combout\);

-- Location: LCCOMB_X34_Y24_N10
\ALUBuild|ALUBuild|Mux13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux13~1_combout\ = (\ALUBuild|ALUBuild|RES[3]~3_combout\ & (\ALUBuild|ALUBuild|RES[3]~2_combout\ & (\ALUBuild|ALUBuild|Mux13~0_combout\))) # (!\ALUBuild|ALUBuild|RES[3]~3_combout\ & 
-- (((!\ALUBuild|ALUBuild|AddSub|rest:2:chain|s~0_combout\)) # (!\ALUBuild|ALUBuild|RES[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~3_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~2_combout\,
	datac => \ALUBuild|ALUBuild|Mux13~0_combout\,
	datad => \ALUBuild|ALUBuild|AddSub|rest:2:chain|s~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux13~1_combout\);

-- Location: LCCOMB_X33_Y24_N2
\ALUBuild|ALUBuild|AddSub|rest:3:chain|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|rest:3:chain|s~0_combout\ = \Blast[3]~_Duplicate_1_regout\ $ (OPClast(0) $ (\Alast[3]~_Duplicate_1_regout\ $ (\ALUBuild|ALUBuild|AddSub|rest:2:chain|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[3]~_Duplicate_1_regout\,
	datab => OPClast(0),
	datac => \Alast[3]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|AddSub|rest:2:chain|cout~0_combout\,
	combout => \ALUBuild|ALUBuild|AddSub|rest:3:chain|s~0_combout\);

-- Location: LCCOMB_X33_Y24_N20
\ALUBuild|ALUBuild|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux12~0_combout\ = (OPClast(2)) # ((\Blast[3]~_Duplicate_1_regout\ & \Alast[3]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[3]~_Duplicate_1_regout\,
	datac => \Alast[3]~_Duplicate_1_regout\,
	datad => OPClast(2),
	combout => \ALUBuild|ALUBuild|Mux12~0_combout\);

-- Location: LCCOMB_X33_Y24_N26
\ALUBuild|ALUBuild|Mux12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux12~1_combout\ = (\ALUBuild|ALUBuild|RES[3]~2_combout\ & ((\ALUBuild|ALUBuild|RES[3]~3_combout\ & (\ALUBuild|ALUBuild|Mux12~0_combout\)) # (!\ALUBuild|ALUBuild|RES[3]~3_combout\ & 
-- ((!\ALUBuild|ALUBuild|AddSub|rest:3:chain|s~0_combout\))))) # (!\ALUBuild|ALUBuild|RES[3]~2_combout\ & (((!\ALUBuild|ALUBuild|RES[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mux12~0_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~2_combout\,
	datac => \ALUBuild|ALUBuild|RES[3]~3_combout\,
	datad => \ALUBuild|ALUBuild|AddSub|rest:3:chain|s~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux12~1_combout\);

-- Location: LCCOMB_X33_Y24_N24
\ALUBuild|ALUBuild|Mux12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux12~2_combout\ = (\ALUBuild|ALUBuild|RES[3]~4_combout\ & ((\Blast[3]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|Mux12~1_combout\) # (!\Alast[3]~_Duplicate_1_regout\))) # (!\Blast[3]~_Duplicate_1_regout\ & 
-- (\Alast[3]~_Duplicate_1_regout\)))) # (!\ALUBuild|ALUBuild|RES[3]~4_combout\ & (((\ALUBuild|ALUBuild|Mux12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[3]~_Duplicate_1_regout\,
	datab => \Alast[3]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|RES[3]~4_combout\,
	datad => \ALUBuild|ALUBuild|Mux12~1_combout\,
	combout => \ALUBuild|ALUBuild|Mux12~2_combout\);

-- Location: LCCOMB_X32_Y23_N24
\ALUBuild|ALUBuild|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux11~0_combout\ = (OPClast(2)) # ((\Blast[4]~_Duplicate_1_regout\ & \Alast[4]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[4]~_Duplicate_1_regout\,
	datac => \Alast[4]~_Duplicate_1_regout\,
	datad => OPClast(2),
	combout => \ALUBuild|ALUBuild|Mux11~0_combout\);

-- Location: LCFF_X31_Y22_N21
\ALUBuild|ALUBuild|ACC[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux27~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(4));

-- Location: LCCOMB_X33_Y22_N10
\ALUBuild|ALUBuild|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux10~0_combout\ = (!\ALUBuild|ALUBuild|Mux15~5_combout\ & (\Alast[5]~_Duplicate_1_regout\ & \ALUBuild|ALUBuild|RES[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mux15~5_combout\,
	datab => \Alast[5]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|RES[3]~6_combout\,
	combout => \ALUBuild|ALUBuild|Mux10~0_combout\);

-- Location: LCFF_X31_Y22_N23
\ALUBuild|ALUBuild|ACC[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux26~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(5));

-- Location: LCCOMB_X32_Y24_N16
\ALUBuild|ALUBuild|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux9~0_combout\ = (\Alast[6]~_Duplicate_1_regout\ & (!\ALUBuild|ALUBuild|Mux15~5_combout\ & \ALUBuild|ALUBuild|RES[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[6]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|Mux15~5_combout\,
	datad => \ALUBuild|ALUBuild|RES[3]~6_combout\,
	combout => \ALUBuild|ALUBuild|Mux9~0_combout\);

-- Location: LCFF_X31_Y22_N13
\ALUBuild|ALUBuild|ACC[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux25~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(6));

-- Location: LCFF_X31_Y22_N11
\ALUBuild|ALUBuild|ACC[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux24~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(7));

-- Location: LCFF_X31_Y22_N1
\ALUBuild|ALUBuild|ACC[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux23~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(8));

-- Location: LCFF_X31_Y22_N31
\ALUBuild|ALUBuild|ACC[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux22~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(9));

-- Location: LCFF_X31_Y22_N15
\ALUBuild|ALUBuild|ACC[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux18~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(13));

-- Location: LCCOMB_X35_Y23_N16
\ALUBuild|ShifterBuild|RotateLeft0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~18_combout\ = (\Blast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateLeft0~17_combout\))) # (!\Blast[2]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateLeft0~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ShifterBuild|RotateLeft0~15_combout\,
	datac => \Blast[2]~_Duplicate_1_regout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~17_combout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~18_combout\);

-- Location: LCCOMB_X34_Y23_N4
\ALUBuild|ShifterBuild|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux0~0_combout\ = (OPClast(0) & (OPClast(1))) # (!OPClast(0) & ((OPClast(1) & ((\ALUBuild|ShifterBuild|Mux0~2_combout\))) # (!OPClast(1) & (\cinlast~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(0),
	datab => OPClast(1),
	datac => \cinlast~regout\,
	datad => \ALUBuild|ShifterBuild|Mux0~2_combout\,
	combout => \ALUBuild|ShifterBuild|Mux0~0_combout\);

-- Location: LCCOMB_X35_Y23_N2
\ALUBuild|ShifterBuild|RotateRight0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~18_combout\ = (\Blast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateRight0~15_combout\))) # (!\Blast[2]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateRight0~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateRight0~17_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~15_combout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~18_combout\);

-- Location: LCCOMB_X35_Y23_N12
\ALUBuild|ShifterBuild|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux0~1_combout\ = (\ALUBuild|ShifterBuild|Mux0~0_combout\ & (((\ALUBuild|ShifterBuild|RotateRight0~18_combout\)) # (!OPClast(0)))) # (!\ALUBuild|ShifterBuild|Mux0~0_combout\ & (OPClast(0) & 
-- (\ALUBuild|ShifterBuild|RotateLeft0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ShifterBuild|Mux0~0_combout\,
	datab => OPClast(0),
	datac => \ALUBuild|ShifterBuild|RotateLeft0~18_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~18_combout\,
	combout => \ALUBuild|ShifterBuild|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y22_N8
\ALUBuild|ALUBuild|Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux31~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datac => \ALUBuild|ALUBuild|Add0~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux31~0_combout\);

-- Location: LCCOMB_X31_Y22_N2
\ALUBuild|ALUBuild|Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux30~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Add0~2_combout\,
	combout => \ALUBuild|ALUBuild|Mux30~0_combout\);

-- Location: LCCOMB_X31_Y22_N20
\ALUBuild|ALUBuild|Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux27~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datac => \ALUBuild|ALUBuild|Add0~8_combout\,
	combout => \ALUBuild|ALUBuild|Mux27~0_combout\);

-- Location: LCCOMB_X31_Y22_N22
\ALUBuild|ALUBuild|Mux26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux26~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datac => \ALUBuild|ALUBuild|Add0~10_combout\,
	combout => \ALUBuild|ALUBuild|Mux26~0_combout\);

-- Location: LCCOMB_X31_Y22_N12
\ALUBuild|ALUBuild|Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux25~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datac => \ALUBuild|ALUBuild|Add0~12_combout\,
	combout => \ALUBuild|ALUBuild|Mux25~0_combout\);

-- Location: LCCOMB_X31_Y22_N10
\ALUBuild|ALUBuild|Mux24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux24~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datac => \ALUBuild|ALUBuild|Add0~14_combout\,
	combout => \ALUBuild|ALUBuild|Mux24~0_combout\);

-- Location: LCCOMB_X31_Y22_N0
\ALUBuild|ALUBuild|Mux23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux23~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datac => \ALUBuild|ALUBuild|Add0~16_combout\,
	combout => \ALUBuild|ALUBuild|Mux23~0_combout\);

-- Location: LCCOMB_X31_Y22_N30
\ALUBuild|ALUBuild|Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux22~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Add0~18_combout\,
	combout => \ALUBuild|ALUBuild|Mux22~0_combout\);

-- Location: LCCOMB_X31_Y22_N14
\ALUBuild|ALUBuild|Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux18~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datac => \ALUBuild|ALUBuild|Add0~26_combout\,
	combout => \ALUBuild|ALUBuild|Mux18~0_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OPC[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OPC(4),
	combout => \OPC~combout\(4));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G1
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ena~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ena,
	combout => \ena~combout\);

-- Location: LCFF_X35_Y24_N1
\OPClast[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \OPC~combout\(4),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => OPClast(4));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCFF_X33_Y23_N23
\Alast[0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(0),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Alast[0]~_Duplicate_1_regout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OPC[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OPC(1),
	combout => \OPC~combout\(1));

-- Location: LCFF_X33_Y23_N17
\OPClast[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \OPC~combout\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => OPClast(1));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OPC[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OPC(3),
	combout => \OPC~combout\(3));

-- Location: LCFF_X33_Y24_N17
\OPClast[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \OPC~combout\(3),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => OPClast(3));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OPC[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OPC(2),
	combout => \OPC~combout\(2));

-- Location: LCFF_X33_Y24_N23
\OPClast[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \OPC~combout\(2),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => OPClast(2));

-- Location: LCCOMB_X33_Y24_N16
\ALUBuild|ALUBuild|RES[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|RES[3]~1_combout\ = (!OPClast(3) & (OPClast(2) & ((!OPClast(1)) # (!OPClast(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(0),
	datab => OPClast(1),
	datac => OPClast(3),
	datad => OPClast(2),
	combout => \ALUBuild|ALUBuild|RES[3]~1_combout\);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OPC[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_OPC(0),
	combout => \OPC~combout\(0));

-- Location: LCFF_X33_Y23_N15
\OPClast[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \OPC~combout\(0),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => OPClast(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCFF_X32_Y23_N15
\Blast[7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(7),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Blast[7]~_Duplicate_1_regout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCFF_X34_Y23_N1
\Alast[7]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(7),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Alast[7]~_Duplicate_1_regout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LCFF_X32_Y23_N7
\Blast[6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(6),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Blast[6]~_Duplicate_1_regout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCFF_X36_Y23_N17
\Alast[5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(5),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Alast[5]~_Duplicate_1_regout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCFF_X33_Y23_N31
\Blast[4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(4),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Blast[4]~_Duplicate_1_regout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCFF_X33_Y23_N11
\Alast[3]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(3),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Alast[3]~_Duplicate_1_regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCFF_X32_Y23_N23
\Blast[2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(2),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Blast[2]~_Duplicate_1_regout\);

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCFF_X33_Y23_N1
\Alast[1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Alast[1]~_Duplicate_1_regout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCFF_X33_Y23_N25
\Blast[0]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(0),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Blast[0]~_Duplicate_1_regout\);

-- Location: LCCOMB_X32_Y23_N6
\ALUBuild|ALUBuild|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|LessThan0~1_cout\ = CARRY((!\Alast[0]~_Duplicate_1_regout\ & \Blast[0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[0]~_Duplicate_1_regout\,
	datab => \Blast[0]~_Duplicate_1_regout\,
	datad => VCC,
	cout => \ALUBuild|ALUBuild|LessThan0~1_cout\);

-- Location: LCCOMB_X32_Y23_N8
\ALUBuild|ALUBuild|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|LessThan0~3_cout\ = CARRY((\Blast[1]~_Duplicate_1_regout\ & (\Alast[1]~_Duplicate_1_regout\ & !\ALUBuild|ALUBuild|LessThan0~1_cout\)) # (!\Blast[1]~_Duplicate_1_regout\ & ((\Alast[1]~_Duplicate_1_regout\) # 
-- (!\ALUBuild|ALUBuild|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[1]~_Duplicate_1_regout\,
	datab => \Alast[1]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|LessThan0~1_cout\,
	cout => \ALUBuild|ALUBuild|LessThan0~3_cout\);

-- Location: LCCOMB_X32_Y23_N10
\ALUBuild|ALUBuild|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|LessThan0~5_cout\ = CARRY((\Alast[2]~_Duplicate_1_regout\ & (\Blast[2]~_Duplicate_1_regout\ & !\ALUBuild|ALUBuild|LessThan0~3_cout\)) # (!\Alast[2]~_Duplicate_1_regout\ & ((\Blast[2]~_Duplicate_1_regout\) # 
-- (!\ALUBuild|ALUBuild|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[2]~_Duplicate_1_regout\,
	datab => \Blast[2]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|LessThan0~3_cout\,
	cout => \ALUBuild|ALUBuild|LessThan0~5_cout\);

-- Location: LCCOMB_X32_Y23_N12
\ALUBuild|ALUBuild|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|LessThan0~7_cout\ = CARRY((\Blast[3]~_Duplicate_1_regout\ & (\Alast[3]~_Duplicate_1_regout\ & !\ALUBuild|ALUBuild|LessThan0~5_cout\)) # (!\Blast[3]~_Duplicate_1_regout\ & ((\Alast[3]~_Duplicate_1_regout\) # 
-- (!\ALUBuild|ALUBuild|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[3]~_Duplicate_1_regout\,
	datab => \Alast[3]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|LessThan0~5_cout\,
	cout => \ALUBuild|ALUBuild|LessThan0~7_cout\);

-- Location: LCCOMB_X32_Y23_N14
\ALUBuild|ALUBuild|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|LessThan0~9_cout\ = CARRY((\Alast[4]~_Duplicate_1_regout\ & (\Blast[4]~_Duplicate_1_regout\ & !\ALUBuild|ALUBuild|LessThan0~7_cout\)) # (!\Alast[4]~_Duplicate_1_regout\ & ((\Blast[4]~_Duplicate_1_regout\) # 
-- (!\ALUBuild|ALUBuild|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[4]~_Duplicate_1_regout\,
	datab => \Blast[4]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|LessThan0~7_cout\,
	cout => \ALUBuild|ALUBuild|LessThan0~9_cout\);

-- Location: LCCOMB_X32_Y23_N16
\ALUBuild|ALUBuild|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|LessThan0~11_cout\ = CARRY((\Blast[5]~_Duplicate_1_regout\ & (\Alast[5]~_Duplicate_1_regout\ & !\ALUBuild|ALUBuild|LessThan0~9_cout\)) # (!\Blast[5]~_Duplicate_1_regout\ & ((\Alast[5]~_Duplicate_1_regout\) # 
-- (!\ALUBuild|ALUBuild|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[5]~_Duplicate_1_regout\,
	datab => \Alast[5]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|LessThan0~9_cout\,
	cout => \ALUBuild|ALUBuild|LessThan0~11_cout\);

-- Location: LCCOMB_X32_Y23_N18
\ALUBuild|ALUBuild|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|LessThan0~13_cout\ = CARRY((\Alast[6]~_Duplicate_1_regout\ & (\Blast[6]~_Duplicate_1_regout\ & !\ALUBuild|ALUBuild|LessThan0~11_cout\)) # (!\Alast[6]~_Duplicate_1_regout\ & ((\Blast[6]~_Duplicate_1_regout\) # 
-- (!\ALUBuild|ALUBuild|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[6]~_Duplicate_1_regout\,
	datab => \Blast[6]~_Duplicate_1_regout\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|LessThan0~11_cout\,
	cout => \ALUBuild|ALUBuild|LessThan0~13_cout\);

-- Location: LCCOMB_X32_Y23_N20
\ALUBuild|ALUBuild|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|LessThan0~14_combout\ = (\Blast[7]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|LessThan0~13_cout\) # (!\Alast[7]~_Duplicate_1_regout\))) # (!\Blast[7]~_Duplicate_1_regout\ & (\ALUBuild|ALUBuild|LessThan0~13_cout\ & 
-- !\Alast[7]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Blast[7]~_Duplicate_1_regout\,
	datad => \Alast[7]~_Duplicate_1_regout\,
	cin => \ALUBuild|ALUBuild|LessThan0~13_cout\,
	combout => \ALUBuild|ALUBuild|LessThan0~14_combout\);

-- Location: LCCOMB_X31_Y23_N14
\ALUBuild|ALUBuild|RES[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|RES[3]~5_combout\ = (OPClast(3) & (!OPClast(1) & (!OPClast(0) & \ALUBuild|ALUBuild|LessThan0~14_combout\))) # (!OPClast(3) & (OPClast(1) & (OPClast(0) & !\ALUBuild|ALUBuild|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => OPClast(1),
	datac => OPClast(0),
	datad => \ALUBuild|ALUBuild|LessThan0~14_combout\,
	combout => \ALUBuild|ALUBuild|RES[3]~5_combout\);

-- Location: LCCOMB_X31_Y23_N16
\ALUBuild|ALUBuild|RES[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|RES[3]~6_combout\ = (\ALUBuild|ALUBuild|RES[3]~5_combout\ & (OPClast(2) $ (OPClast(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => OPClast(2),
	datac => \ALUBuild|ALUBuild|RES[3]~5_combout\,
	datad => OPClast(3),
	combout => \ALUBuild|ALUBuild|RES[3]~6_combout\);

-- Location: LCCOMB_X33_Y22_N16
\ALUBuild|ALUBuild|Mux15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux15~5_combout\ = (OPClast(4)) # ((OPClast(1) & (\ALUBuild|ALUBuild|RES[3]~1_combout\ & !\ALUBuild|ALUBuild|RES[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datab => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datac => \ALUBuild|ALUBuild|RES[3]~6_combout\,
	datad => OPClast(4),
	combout => \ALUBuild|ALUBuild|Mux15~5_combout\);

-- Location: LCCOMB_X32_Y24_N6
\ALUBuild|ALUBuild|RES[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|RES[3]~0_combout\ = (OPClast(2) & (((!OPClast(3) & OPClast(0))))) # (!OPClast(2) & (!OPClast(1) & (OPClast(3) & !OPClast(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datab => OPClast(2),
	datac => OPClast(3),
	datad => OPClast(0),
	combout => \ALUBuild|ALUBuild|RES[3]~0_combout\);

-- Location: LCCOMB_X29_Y22_N28
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: DSPMULT_X28_Y22_N0
\ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1\ : cycloneii_mac_mult
-- pragma translate_off
GENERIC MAP (
	dataa_clock => "0",
	dataa_width => 9,
	datab_clock => "0",
	datab_width => 9,
	signa_clock => "none",
	signb_clock => "none")
-- pragma translate_on
PORT MAP (
	signa => \~GND~combout\,
	signb => \~GND~combout\,
	clk => \clk~clkctrl_outclk\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAA_bus\,
	datab => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAB_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	dataout => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_mult1_DATAOUT_bus\);

-- Location: LCCOMB_X32_Y22_N0
\ALUBuild|ALUBuild|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~0_combout\ = (\ALUBuild|ALUBuild|ACC\(0) & (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~dataout\ $ (VCC))) # (!\ALUBuild|ALUBuild|ACC\(0) & (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~dataout\ & VCC))
-- \ALUBuild|ALUBuild|Add0~1\ = CARRY((\ALUBuild|ALUBuild|ACC\(0) & \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~dataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|ACC\(0),
	datab => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~dataout\,
	datad => VCC,
	combout => \ALUBuild|ALUBuild|Add0~0_combout\,
	cout => \ALUBuild|ALUBuild|Add0~1\);

-- Location: LCCOMB_X34_Y24_N6
\ALUBuild|ALUBuild|Mux15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux15~4_combout\ = (\ALUBuild|ALUBuild|Mux15~3_combout\ & (((\ALUBuild|ALUBuild|Add0~0_combout\) # (!\ALUBuild|ALUBuild|RES[3]~0_combout\)))) # (!\ALUBuild|ALUBuild|Mux15~3_combout\ & (\Blast[0]~_Duplicate_1_regout\ & 
-- (\ALUBuild|ALUBuild|RES[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mux15~3_combout\,
	datab => \Blast[0]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	datad => \ALUBuild|ALUBuild|Add0~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux15~4_combout\);

-- Location: LCCOMB_X34_Y24_N28
\ALUBuild|ALUBuild|Mux15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux15~6_combout\ = (!\ALUBuild|ALUBuild|Mux15~5_combout\ & ((\ALUBuild|ALUBuild|RES[3]~6_combout\ & (\Alast[0]~_Duplicate_1_regout\)) # (!\ALUBuild|ALUBuild|RES[3]~6_combout\ & ((\ALUBuild|ALUBuild|Mux15~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~6_combout\,
	datab => \Alast[0]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|Mux15~5_combout\,
	datad => \ALUBuild|ALUBuild|Mux15~4_combout\,
	combout => \ALUBuild|ALUBuild|Mux15~6_combout\);

-- Location: LCCOMB_X34_Y24_N8
\ALUBuild|ALUBuild|Mux15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux15~7_combout\ = (OPClast(4)) # (\ALUBuild|ALUBuild|Mux15~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(4),
	datad => \ALUBuild|ALUBuild|Mux15~6_combout\,
	combout => \ALUBuild|ALUBuild|Mux15~7_combout\);

-- Location: LCFF_X34_Y24_N9
\ALUBuild|ALUBuild|RES[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux15~7_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(0));

-- Location: LCCOMB_X35_Y24_N16
\ALUBuild|ALUBuild|ACC[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|ACC[4]~0_combout\ = (OPClast(2) & OPClast(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(2),
	datad => OPClast(3),
	combout => \ALUBuild|ALUBuild|ACC[4]~0_combout\);

-- Location: LCFF_X34_Y23_N3
\Alast[6]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(6),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Alast[6]~_Duplicate_1_regout\);

-- Location: LCCOMB_X34_Y23_N22
\ALUBuild|ShifterBuild|RotateLeft0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~3_combout\ = (\Blast[0]~_Duplicate_1_regout\ & (\Alast[6]~_Duplicate_1_regout\)) # (!\Blast[0]~_Duplicate_1_regout\ & ((\Alast[7]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alast[6]~_Duplicate_1_regout\,
	datac => \Alast[7]~_Duplicate_1_regout\,
	datad => \Blast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~3_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cin~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_cin,
	combout => \cin~combout\);

-- Location: LCFF_X34_Y23_N5
cinlast : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \cin~combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cinlast~regout\);

-- Location: LCCOMB_X34_Y23_N14
\ALUBuild|ShifterBuild|RotateLeft0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~4_combout\ = (\Blast[0]~_Duplicate_1_regout\ & (\cinlast~regout\)) # (!\Blast[0]~_Duplicate_1_regout\ & ((\Alast[0]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[0]~_Duplicate_1_regout\,
	datac => \cinlast~regout\,
	datad => \Alast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~4_combout\);

-- Location: LCFF_X33_Y23_N7
\Blast[1]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Blast[1]~_Duplicate_1_regout\);

-- Location: LCCOMB_X34_Y23_N28
\ALUBuild|ShifterBuild|RotateLeft0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~5_combout\ = (\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateLeft0~3_combout\)) # (!\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ShifterBuild|RotateLeft0~3_combout\,
	datac => \ALUBuild|ShifterBuild|RotateLeft0~4_combout\,
	datad => \Blast[1]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~5_combout\);

-- Location: LCCOMB_X37_Y23_N30
\ALUBuild|ShifterBuild|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux8~0_combout\ = (\Blast[2]~_Duplicate_1_regout\ & (((OPClast(1))))) # (!\Blast[2]~_Duplicate_1_regout\ & ((OPClast(1) & (\ALUBuild|ShifterBuild|RotateRight0~2_combout\)) # (!OPClast(1) & 
-- ((\ALUBuild|ShifterBuild|RotateLeft0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ShifterBuild|RotateRight0~2_combout\,
	datab => \Blast[2]~_Duplicate_1_regout\,
	datac => OPClast(1),
	datad => \ALUBuild|ShifterBuild|RotateLeft0~5_combout\,
	combout => \ALUBuild|ShifterBuild|Mux8~0_combout\);

-- Location: LCFF_X36_Y23_N31
\Alast[4]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(4),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Alast[4]~_Duplicate_1_regout\);

-- Location: LCCOMB_X36_Y23_N26
\ALUBuild|ShifterBuild|RotateLeft0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~1_combout\ = (\Blast[0]~_Duplicate_1_regout\ & ((\Alast[4]~_Duplicate_1_regout\))) # (!\Blast[0]~_Duplicate_1_regout\ & (\Alast[5]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alast[5]~_Duplicate_1_regout\,
	datac => \Blast[0]~_Duplicate_1_regout\,
	datad => \Alast[4]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~1_combout\);

-- Location: LCFF_X33_Y23_N29
\Alast[2]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \A~combout\(2),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Alast[2]~_Duplicate_1_regout\);

-- Location: LCCOMB_X36_Y23_N28
\ALUBuild|ShifterBuild|RotateLeft0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~0_combout\ = (\Blast[0]~_Duplicate_1_regout\ & (\Alast[2]~_Duplicate_1_regout\)) # (!\Blast[0]~_Duplicate_1_regout\ & ((\Alast[3]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[0]~_Duplicate_1_regout\,
	datac => \Alast[2]~_Duplicate_1_regout\,
	datad => \Alast[3]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~0_combout\);

-- Location: LCCOMB_X36_Y23_N0
\ALUBuild|ShifterBuild|RotateLeft0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~2_combout\ = (\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateLeft0~0_combout\))) # (!\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateLeft0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ShifterBuild|RotateLeft0~1_combout\,
	datac => \Blast[1]~_Duplicate_1_regout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~0_combout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~2_combout\);

-- Location: LCCOMB_X36_Y23_N16
\ALUBuild|ShifterBuild|RotateRight0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~4_combout\ = (\Blast[0]~_Duplicate_1_regout\ & ((\Alast[5]~_Duplicate_1_regout\))) # (!\Blast[0]~_Duplicate_1_regout\ & (\Alast[4]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alast[4]~_Duplicate_1_regout\,
	datac => \Alast[5]~_Duplicate_1_regout\,
	datad => \Blast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~4_combout\);

-- Location: LCCOMB_X34_Y23_N6
\ALUBuild|ShifterBuild|RotateRight0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~3_combout\ = (\Blast[0]~_Duplicate_1_regout\ & ((\Alast[7]~_Duplicate_1_regout\))) # (!\Blast[0]~_Duplicate_1_regout\ & (\Alast[6]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alast[6]~_Duplicate_1_regout\,
	datac => \Alast[7]~_Duplicate_1_regout\,
	datad => \Blast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~3_combout\);

-- Location: LCCOMB_X36_Y23_N10
\ALUBuild|ShifterBuild|RotateRight0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~5_combout\ = (\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateRight0~3_combout\))) # (!\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateRight0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateRight0~4_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~3_combout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~5_combout\);

-- Location: LCCOMB_X37_Y23_N24
\ALUBuild|ShifterBuild|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux8~1_combout\ = (\Blast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|Mux8~0_combout\ & ((\ALUBuild|ShifterBuild|RotateRight0~5_combout\))) # (!\ALUBuild|ShifterBuild|Mux8~0_combout\ & 
-- (\ALUBuild|ShifterBuild|RotateLeft0~2_combout\)))) # (!\Blast[2]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => \ALUBuild|ShifterBuild|Mux8~0_combout\,
	datac => \ALUBuild|ShifterBuild|RotateLeft0~2_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~5_combout\,
	combout => \ALUBuild|ShifterBuild|Mux8~1_combout\);

-- Location: LCCOMB_X37_Y23_N2
\ALUBuild|ShifterBuild|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux8~2_combout\ = (OPClast(0) & (\ALUBuild|ShifterBuild|Mux8~1_combout\)) # (!OPClast(0) & ((\Alast[0]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(0),
	datac => \ALUBuild|ShifterBuild|Mux8~1_combout\,
	datad => \Alast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|Mux8~2_combout\);

-- Location: LCCOMB_X36_Y24_N14
\ALUBuild|ShifterBuild|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux8~3_combout\ = (\ALUBuild|ALUBuild|ACC[4]~0_combout\ & ((OPClast(4) & (\ALUBuild|ShifterBuild|Mux8~3_combout\)) # (!OPClast(4) & ((\ALUBuild|ShifterBuild|Mux8~2_combout\))))) # (!\ALUBuild|ALUBuild|ACC[4]~0_combout\ & 
-- (\ALUBuild|ShifterBuild|Mux8~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ShifterBuild|Mux8~3_combout\,
	datab => \ALUBuild|ALUBuild|ACC[4]~0_combout\,
	datac => OPClast(4),
	datad => \ALUBuild|ShifterBuild|Mux8~2_combout\,
	combout => \ALUBuild|ShifterBuild|Mux8~3_combout\);

-- Location: LCCOMB_X36_Y24_N8
\ALUBuild|tester|LO[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|LO[0]~0_combout\ = (OPClast(2) & ((OPClast(3) & ((\ALUBuild|ShifterBuild|Mux8~3_combout\))) # (!OPClast(3) & (\ALUBuild|ALUBuild|RES\(0))))) # (!OPClast(2) & (\ALUBuild|ALUBuild|RES\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(2),
	datab => \ALUBuild|ALUBuild|RES\(0),
	datac => OPClast(3),
	datad => \ALUBuild|ShifterBuild|Mux8~3_combout\,
	combout => \ALUBuild|tester|LO[0]~0_combout\);

-- Location: LCFF_X36_Y24_N9
\RESlast[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|LO[0]~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(0));

-- Location: LCCOMB_X34_Y22_N14
\ALUBuild|ALUBuild|Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux14~0_combout\ = (OPClast(2)) # ((\Alast[1]~_Duplicate_1_regout\ & \Blast[1]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alast[1]~_Duplicate_1_regout\,
	datac => OPClast(2),
	datad => \Blast[1]~_Duplicate_1_regout\,
	combout => \ALUBuild|ALUBuild|Mux14~0_combout\);

-- Location: LCCOMB_X33_Y24_N18
\ALUBuild|ALUBuild|RES[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|RES[3]~2_combout\ = (OPClast(3) & ((OPClast(2)) # ((!OPClast(1))))) # (!OPClast(3) & (((OPClast(1)) # (OPClast(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => OPClast(2),
	datac => OPClast(1),
	datad => OPClast(0),
	combout => \ALUBuild|ALUBuild|RES[3]~2_combout\);

-- Location: LCCOMB_X33_Y23_N8
\ALUBuild|ALUBuild|AddSub|yin[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|yin\(1) = OPClast(0) $ (\Blast[1]~_Duplicate_1_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(0),
	datad => \Blast[1]~_Duplicate_1_regout\,
	combout => \ALUBuild|ALUBuild|AddSub|yin\(1));

-- Location: LCCOMB_X33_Y23_N6
\ALUBuild|ALUBuild|AddSub|c0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|c0~combout\ = ((OPClast(1) & \cinlast~regout\)) # (!OPClast(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datab => OPClast(0),
	datad => \cinlast~regout\,
	combout => \ALUBuild|ALUBuild|AddSub|c0~combout\);

-- Location: LCCOMB_X33_Y23_N22
\ALUBuild|ALUBuild|AddSub|first|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|first|cout~0_combout\ = (\Alast[0]~_Duplicate_1_regout\ & ((\Blast[0]~_Duplicate_1_regout\) # (\ALUBuild|ALUBuild|AddSub|c0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[0]~_Duplicate_1_regout\,
	datac => \Alast[0]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|AddSub|c0~combout\,
	combout => \ALUBuild|ALUBuild|AddSub|first|cout~0_combout\);

-- Location: LCCOMB_X33_Y22_N2
\ALUBuild|ALUBuild|AddSub|rest:1:chain|s\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|rest:1:chain|s~combout\ = \ALUBuild|ALUBuild|AddSub|yin\(1) $ (\Alast[1]~_Duplicate_1_regout\ $ (((\ALUBuild|ALUBuild|AddSub|first|cout~0_combout\) # (!\ALUBuild|ALUBuild|AddSub|first|cout~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|AddSub|first|cout~1_combout\,
	datab => \ALUBuild|ALUBuild|AddSub|yin\(1),
	datac => \ALUBuild|ALUBuild|AddSub|first|cout~0_combout\,
	datad => \Alast[1]~_Duplicate_1_regout\,
	combout => \ALUBuild|ALUBuild|AddSub|rest:1:chain|s~combout\);

-- Location: LCCOMB_X33_Y22_N20
\ALUBuild|ALUBuild|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux14~1_combout\ = (\ALUBuild|ALUBuild|RES[3]~3_combout\ & (\ALUBuild|ALUBuild|Mux14~0_combout\ & (\ALUBuild|ALUBuild|RES[3]~2_combout\))) # (!\ALUBuild|ALUBuild|RES[3]~3_combout\ & (((!\ALUBuild|ALUBuild|AddSub|rest:1:chain|s~combout\) 
-- # (!\ALUBuild|ALUBuild|RES[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~3_combout\,
	datab => \ALUBuild|ALUBuild|Mux14~0_combout\,
	datac => \ALUBuild|ALUBuild|RES[3]~2_combout\,
	datad => \ALUBuild|ALUBuild|AddSub|rest:1:chain|s~combout\,
	combout => \ALUBuild|ALUBuild|Mux14~1_combout\);

-- Location: LCCOMB_X33_Y22_N14
\ALUBuild|ALUBuild|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux14~2_combout\ = (\ALUBuild|ALUBuild|RES[3]~4_combout\ & ((\Alast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|Mux14~1_combout\) # (!\Blast[1]~_Duplicate_1_regout\))) # (!\Alast[1]~_Duplicate_1_regout\ & 
-- ((\Blast[1]~_Duplicate_1_regout\))))) # (!\ALUBuild|ALUBuild|RES[3]~4_combout\ & (((\ALUBuild|ALUBuild|Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~4_combout\,
	datab => \Alast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|Mux14~1_combout\,
	datad => \Blast[1]~_Duplicate_1_regout\,
	combout => \ALUBuild|ALUBuild|Mux14~2_combout\);

-- Location: LCCOMB_X33_Y22_N4
\ALUBuild|ALUBuild|Mux14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux14~3_combout\ = (\ALUBuild|ALUBuild|RES[3]~0_combout\ & (\ALUBuild|ALUBuild|RES[3]~1_combout\)) # (!\ALUBuild|ALUBuild|RES[3]~0_combout\ & ((\ALUBuild|ALUBuild|RES[3]~1_combout\ & 
-- ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT1\))) # (!\ALUBuild|ALUBuild|RES[3]~1_combout\ & (\ALUBuild|ALUBuild|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datac => \ALUBuild|ALUBuild|Mux14~2_combout\,
	datad => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT1\,
	combout => \ALUBuild|ALUBuild|Mux14~3_combout\);

-- Location: LCCOMB_X32_Y22_N2
\ALUBuild|ALUBuild|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~2_combout\ = (\ALUBuild|ALUBuild|ACC\(1) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT1\ & (\ALUBuild|ALUBuild|Add0~1\ & VCC)) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT1\ & 
-- (!\ALUBuild|ALUBuild|Add0~1\)))) # (!\ALUBuild|ALUBuild|ACC\(1) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT1\ & (!\ALUBuild|ALUBuild|Add0~1\)) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT1\ & ((\ALUBuild|ALUBuild|Add0~1\) 
-- # (GND)))))
-- \ALUBuild|ALUBuild|Add0~3\ = CARRY((\ALUBuild|ALUBuild|ACC\(1) & (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT1\ & !\ALUBuild|ALUBuild|Add0~1\)) # (!\ALUBuild|ALUBuild|ACC\(1) & ((!\ALUBuild|ALUBuild|Add0~1\) # 
-- (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|ACC\(1),
	datab => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT1\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~1\,
	combout => \ALUBuild|ALUBuild|Add0~2_combout\,
	cout => \ALUBuild|ALUBuild|Add0~3\);

-- Location: LCCOMB_X33_Y22_N26
\ALUBuild|ALUBuild|Mux14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux14~4_combout\ = (\ALUBuild|ALUBuild|RES[3]~0_combout\ & ((\ALUBuild|ALUBuild|Mux14~3_combout\ & ((\ALUBuild|ALUBuild|Add0~2_combout\))) # (!\ALUBuild|ALUBuild|Mux14~3_combout\ & (\Blast[1]~_Duplicate_1_regout\)))) # 
-- (!\ALUBuild|ALUBuild|RES[3]~0_combout\ & (((\ALUBuild|ALUBuild|Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|Mux14~3_combout\,
	datad => \ALUBuild|ALUBuild|Add0~2_combout\,
	combout => \ALUBuild|ALUBuild|Mux14~4_combout\);

-- Location: LCCOMB_X33_Y22_N0
\ALUBuild|ALUBuild|Mux14~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux14~5_combout\ = (!\ALUBuild|ALUBuild|Mux15~5_combout\ & ((\ALUBuild|ALUBuild|RES[3]~6_combout\ & (\Alast[1]~_Duplicate_1_regout\)) # (!\ALUBuild|ALUBuild|RES[3]~6_combout\ & ((\ALUBuild|ALUBuild|Mux14~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mux15~5_combout\,
	datab => \Alast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|RES[3]~6_combout\,
	datad => \ALUBuild|ALUBuild|Mux14~4_combout\,
	combout => \ALUBuild|ALUBuild|Mux14~5_combout\);

-- Location: LCCOMB_X33_Y22_N12
\ALUBuild|ALUBuild|Mux14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux14~6_combout\ = (OPClast(4)) # (\ALUBuild|ALUBuild|Mux14~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => OPClast(4),
	datad => \ALUBuild|ALUBuild|Mux14~5_combout\,
	combout => \ALUBuild|ALUBuild|Mux14~6_combout\);

-- Location: LCFF_X33_Y22_N13
\ALUBuild|ALUBuild|RES[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux14~6_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(1));

-- Location: LCCOMB_X34_Y23_N30
\ALUBuild|ShifterBuild|RotateRight0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~9_combout\ = (\Blast[0]~_Duplicate_1_regout\ & (\cinlast~regout\)) # (!\Blast[0]~_Duplicate_1_regout\ & ((\Alast[7]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cinlast~regout\,
	datac => \Alast[7]~_Duplicate_1_regout\,
	datad => \Blast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~9_combout\);

-- Location: LCCOMB_X35_Y23_N22
\ALUBuild|ShifterBuild|RotateRight0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~10_combout\ = (\Blast[0]~_Duplicate_1_regout\ & ((\Alast[6]~_Duplicate_1_regout\))) # (!\Blast[0]~_Duplicate_1_regout\ & (\Alast[5]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[5]~_Duplicate_1_regout\,
	datab => \Blast[0]~_Duplicate_1_regout\,
	datad => \Alast[6]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~10_combout\);

-- Location: LCCOMB_X35_Y23_N4
\ALUBuild|ShifterBuild|RotateRight0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~11_combout\ = (\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateRight0~9_combout\)) # (!\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateRight0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateRight0~9_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~10_combout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~11_combout\);

-- Location: LCCOMB_X36_Y23_N24
\ALUBuild|ShifterBuild|RotateLeft0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~10_combout\ = (\Blast[0]~_Duplicate_1_regout\ & (\Alast[0]~_Duplicate_1_regout\)) # (!\Blast[0]~_Duplicate_1_regout\ & ((\Alast[1]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[0]~_Duplicate_1_regout\,
	datac => \Alast[1]~_Duplicate_1_regout\,
	datad => \Blast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~10_combout\);

-- Location: LCCOMB_X34_Y23_N8
\ALUBuild|ShifterBuild|RotateLeft0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~9_combout\ = (\Blast[0]~_Duplicate_1_regout\ & (\Alast[7]~_Duplicate_1_regout\)) # (!\Blast[0]~_Duplicate_1_regout\ & ((\cinlast~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[7]~_Duplicate_1_regout\,
	datab => \Blast[0]~_Duplicate_1_regout\,
	datac => \cinlast~regout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~9_combout\);

-- Location: LCCOMB_X36_Y23_N14
\ALUBuild|ShifterBuild|RotateLeft0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~11_combout\ = (\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateLeft0~9_combout\))) # (!\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateLeft0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateLeft0~10_combout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~9_combout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~11_combout\);

-- Location: LCCOMB_X35_Y23_N20
\ALUBuild|ShifterBuild|RotateRight0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~6_combout\ = (\Blast[0]~_Duplicate_1_regout\ & ((\Alast[4]~_Duplicate_1_regout\))) # (!\Blast[0]~_Duplicate_1_regout\ & (\Alast[3]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[3]~_Duplicate_1_regout\,
	datab => \Alast[4]~_Duplicate_1_regout\,
	datad => \Blast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~6_combout\);

-- Location: LCCOMB_X35_Y23_N6
\ALUBuild|ShifterBuild|RotateRight0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~7_combout\ = (\Blast[0]~_Duplicate_1_regout\ & ((\Alast[2]~_Duplicate_1_regout\))) # (!\Blast[0]~_Duplicate_1_regout\ & (\Alast[1]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alast[1]~_Duplicate_1_regout\,
	datac => \Alast[2]~_Duplicate_1_regout\,
	datad => \Blast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~7_combout\);

-- Location: LCCOMB_X35_Y23_N24
\ALUBuild|ShifterBuild|RotateRight0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~8_combout\ = (\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateRight0~6_combout\)) # (!\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateRight0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateRight0~6_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~7_combout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~8_combout\);

-- Location: LCCOMB_X36_Y23_N4
\ALUBuild|ShifterBuild|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux7~0_combout\ = (\Blast[2]~_Duplicate_1_regout\ & (OPClast(1))) # (!\Blast[2]~_Duplicate_1_regout\ & ((OPClast(1) & ((\ALUBuild|ShifterBuild|RotateRight0~8_combout\))) # (!OPClast(1) & 
-- (\ALUBuild|ShifterBuild|RotateLeft0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => OPClast(1),
	datac => \ALUBuild|ShifterBuild|RotateLeft0~11_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~8_combout\,
	combout => \ALUBuild|ShifterBuild|Mux7~0_combout\);

-- Location: LCCOMB_X36_Y23_N30
\ALUBuild|ShifterBuild|RotateLeft0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~6_combout\ = (\Blast[0]~_Duplicate_1_regout\ & ((\Alast[3]~_Duplicate_1_regout\))) # (!\Blast[0]~_Duplicate_1_regout\ & (\Alast[4]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[0]~_Duplicate_1_regout\,
	datac => \Alast[4]~_Duplicate_1_regout\,
	datad => \Alast[3]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~6_combout\);

-- Location: LCCOMB_X35_Y23_N10
\ALUBuild|ShifterBuild|RotateLeft0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~7_combout\ = (\Blast[0]~_Duplicate_1_regout\ & (\Alast[5]~_Duplicate_1_regout\)) # (!\Blast[0]~_Duplicate_1_regout\ & ((\Alast[6]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[0]~_Duplicate_1_regout\,
	datac => \Alast[5]~_Duplicate_1_regout\,
	datad => \Alast[6]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~7_combout\);

-- Location: LCCOMB_X37_Y23_N28
\ALUBuild|ShifterBuild|RotateLeft0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~8_combout\ = (\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateLeft0~6_combout\)) # (!\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateLeft0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateLeft0~6_combout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~7_combout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~8_combout\);

-- Location: LCCOMB_X36_Y23_N6
\ALUBuild|ShifterBuild|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux7~1_combout\ = (\Blast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|Mux7~0_combout\ & (\ALUBuild|ShifterBuild|RotateRight0~11_combout\)) # (!\ALUBuild|ShifterBuild|Mux7~0_combout\ & 
-- ((\ALUBuild|ShifterBuild|RotateLeft0~8_combout\))))) # (!\Blast[2]~_Duplicate_1_regout\ & (((\ALUBuild|ShifterBuild|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => \ALUBuild|ShifterBuild|RotateRight0~11_combout\,
	datac => \ALUBuild|ShifterBuild|Mux7~0_combout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~8_combout\,
	combout => \ALUBuild|ShifterBuild|Mux7~1_combout\);

-- Location: LCCOMB_X36_Y24_N4
\ALUBuild|ShifterBuild|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux7~2_combout\ = (OPClast(0) & ((\ALUBuild|ShifterBuild|Mux7~1_combout\))) # (!OPClast(0) & (\Alast[1]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alast[1]~_Duplicate_1_regout\,
	datac => OPClast(0),
	datad => \ALUBuild|ShifterBuild|Mux7~1_combout\,
	combout => \ALUBuild|ShifterBuild|Mux7~2_combout\);

-- Location: LCCOMB_X36_Y24_N6
\ALUBuild|ShifterBuild|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux7~3_combout\ = (OPClast(4) & (\ALUBuild|ShifterBuild|Mux7~3_combout\)) # (!OPClast(4) & ((\ALUBuild|ALUBuild|ACC[4]~0_combout\ & ((\ALUBuild|ShifterBuild|Mux7~2_combout\))) # (!\ALUBuild|ALUBuild|ACC[4]~0_combout\ & 
-- (\ALUBuild|ShifterBuild|Mux7~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ShifterBuild|Mux7~3_combout\,
	datab => \ALUBuild|ShifterBuild|Mux7~2_combout\,
	datac => OPClast(4),
	datad => \ALUBuild|ALUBuild|ACC[4]~0_combout\,
	combout => \ALUBuild|ShifterBuild|Mux7~3_combout\);

-- Location: LCCOMB_X36_Y24_N2
\ALUBuild|tester|LO[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|LO[1]~1_combout\ = (OPClast(2) & ((OPClast(3) & ((\ALUBuild|ShifterBuild|Mux7~3_combout\))) # (!OPClast(3) & (\ALUBuild|ALUBuild|RES\(1))))) # (!OPClast(2) & (\ALUBuild|ALUBuild|RES\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(2),
	datab => \ALUBuild|ALUBuild|RES\(1),
	datac => OPClast(3),
	datad => \ALUBuild|ShifterBuild|Mux7~3_combout\,
	combout => \ALUBuild|tester|LO[1]~1_combout\);

-- Location: LCFF_X36_Y24_N3
\RESlast[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|LO[1]~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(1));

-- Location: LCCOMB_X33_Y24_N22
\ALUBuild|ALUBuild|RES[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|RES[3]~4_combout\ = (OPClast(3) & (OPClast(1) & !OPClast(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => OPClast(1),
	datac => OPClast(2),
	combout => \ALUBuild|ALUBuild|RES[3]~4_combout\);

-- Location: LCCOMB_X34_Y24_N12
\ALUBuild|ALUBuild|Mux13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux13~2_combout\ = (\ALUBuild|ALUBuild|RES[3]~4_combout\ & ((\Blast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|Mux13~1_combout\) # (!\Alast[2]~_Duplicate_1_regout\))) # (!\Blast[2]~_Duplicate_1_regout\ & 
-- ((\Alast[2]~_Duplicate_1_regout\))))) # (!\ALUBuild|ALUBuild|RES[3]~4_combout\ & (\ALUBuild|ALUBuild|Mux13~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mux13~1_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~4_combout\,
	datac => \Blast[2]~_Duplicate_1_regout\,
	datad => \Alast[2]~_Duplicate_1_regout\,
	combout => \ALUBuild|ALUBuild|Mux13~2_combout\);

-- Location: LCCOMB_X34_Y24_N14
\ALUBuild|ALUBuild|Mux13~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux13~3_combout\ = (\ALUBuild|ALUBuild|RES[3]~1_combout\ & (\ALUBuild|ALUBuild|RES[3]~0_combout\)) # (!\ALUBuild|ALUBuild|RES[3]~1_combout\ & ((\ALUBuild|ALUBuild|RES[3]~0_combout\ & (\Blast[2]~_Duplicate_1_regout\)) # 
-- (!\ALUBuild|ALUBuild|RES[3]~0_combout\ & ((\ALUBuild|ALUBuild|Mux13~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	datac => \Blast[2]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|Mux13~2_combout\,
	combout => \ALUBuild|ALUBuild|Mux13~3_combout\);

-- Location: LCCOMB_X31_Y22_N24
\ALUBuild|ALUBuild|Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux29~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Add0~4_combout\,
	combout => \ALUBuild|ALUBuild|Mux29~0_combout\);

-- Location: LCCOMB_X34_Y22_N28
\ALUBuild|ALUBuild|ACC[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|ACC[15]~1_combout\ = (OPClast(2) & (!OPClast(3) & !OPClast(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(2),
	datab => OPClast(3),
	datac => OPClast(4),
	combout => \ALUBuild|ALUBuild|ACC[15]~1_combout\);

-- Location: LCCOMB_X31_Y23_N26
\ALUBuild|ALUBuild|ACC[15]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|ACC[15]~2_combout\ = (\ena~combout\ & (\ALUBuild|ALUBuild|ACC[15]~1_combout\ & (OPClast(0) $ (OPClast(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(0),
	datab => OPClast(1),
	datac => \ena~combout\,
	datad => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	combout => \ALUBuild|ALUBuild|ACC[15]~2_combout\);

-- Location: LCFF_X31_Y22_N25
\ALUBuild|ALUBuild|ACC[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux29~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(2));

-- Location: LCCOMB_X32_Y22_N4
\ALUBuild|ALUBuild|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~4_combout\ = ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT2\ $ (\ALUBuild|ALUBuild|ACC\(2) $ (!\ALUBuild|ALUBuild|Add0~3\)))) # (GND)
-- \ALUBuild|ALUBuild|Add0~5\ = CARRY((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT2\ & ((\ALUBuild|ALUBuild|ACC\(2)) # (!\ALUBuild|ALUBuild|Add0~3\))) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT2\ & (\ALUBuild|ALUBuild|ACC\(2) & 
-- !\ALUBuild|ALUBuild|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datab => \ALUBuild|ALUBuild|ACC\(2),
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~3\,
	combout => \ALUBuild|ALUBuild|Add0~4_combout\,
	cout => \ALUBuild|ALUBuild|Add0~5\);

-- Location: LCCOMB_X34_Y24_N0
\ALUBuild|ALUBuild|Mux13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux13~4_combout\ = (\ALUBuild|ALUBuild|RES[3]~1_combout\ & ((\ALUBuild|ALUBuild|Mux13~3_combout\ & ((\ALUBuild|ALUBuild|Add0~4_combout\))) # (!\ALUBuild|ALUBuild|Mux13~3_combout\ & 
-- (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT2\)))) # (!\ALUBuild|ALUBuild|RES[3]~1_combout\ & (((\ALUBuild|ALUBuild|Mux13~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datab => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT2\,
	datac => \ALUBuild|ALUBuild|Mux13~3_combout\,
	datad => \ALUBuild|ALUBuild|Add0~4_combout\,
	combout => \ALUBuild|ALUBuild|Mux13~4_combout\);

-- Location: LCCOMB_X34_Y24_N22
\ALUBuild|ALUBuild|Mux13~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux13~5_combout\ = (!\ALUBuild|ALUBuild|Mux15~5_combout\ & ((\ALUBuild|ALUBuild|RES[3]~6_combout\ & (\Alast[2]~_Duplicate_1_regout\)) # (!\ALUBuild|ALUBuild|RES[3]~6_combout\ & ((\ALUBuild|ALUBuild|Mux13~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~6_combout\,
	datab => \Alast[2]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|Mux15~5_combout\,
	datad => \ALUBuild|ALUBuild|Mux13~4_combout\,
	combout => \ALUBuild|ALUBuild|Mux13~5_combout\);

-- Location: LCCOMB_X34_Y24_N18
\ALUBuild|ALUBuild|Mux13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux13~6_combout\ = (OPClast(4)) # (\ALUBuild|ALUBuild|Mux13~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(4),
	datad => \ALUBuild|ALUBuild|Mux13~5_combout\,
	combout => \ALUBuild|ALUBuild|Mux13~6_combout\);

-- Location: LCFF_X34_Y24_N19
\ALUBuild|ALUBuild|RES[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux13~6_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(2));

-- Location: LCCOMB_X34_Y23_N0
\ALUBuild|ShifterBuild|RotateRight0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~13_combout\ = (\Blast[0]~_Duplicate_1_regout\ & ((\Alast[0]~_Duplicate_1_regout\))) # (!\Blast[0]~_Duplicate_1_regout\ & (\cinlast~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cinlast~regout\,
	datab => \Blast[0]~_Duplicate_1_regout\,
	datad => \Alast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~13_combout\);

-- Location: LCCOMB_X34_Y23_N2
\ALUBuild|ShifterBuild|RotateRight0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~14_combout\ = (\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateRight0~13_combout\))) # (!\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateRight0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ShifterBuild|RotateRight0~3_combout\,
	datab => \ALUBuild|ShifterBuild|RotateRight0~13_combout\,
	datad => \Blast[1]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~14_combout\);

-- Location: LCCOMB_X37_Y23_N22
\ALUBuild|ShifterBuild|RotateLeft0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~12_combout\ = (\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateLeft0~1_combout\))) # (!\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateLeft0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateLeft0~3_combout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~1_combout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~12_combout\);

-- Location: LCCOMB_X37_Y23_N8
\ALUBuild|ShifterBuild|RotateRight0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~0_combout\ = (\Blast[0]~_Duplicate_1_regout\ & (\Alast[3]~_Duplicate_1_regout\)) # (!\Blast[0]~_Duplicate_1_regout\ & ((\Alast[2]~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alast[3]~_Duplicate_1_regout\,
	datac => \Alast[2]~_Duplicate_1_regout\,
	datad => \Blast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~0_combout\);

-- Location: LCCOMB_X37_Y23_N16
\ALUBuild|ShifterBuild|RotateRight0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~12_combout\ = (\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateRight0~4_combout\))) # (!\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateRight0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateRight0~0_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~4_combout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~12_combout\);

-- Location: LCCOMB_X33_Y23_N16
\ALUBuild|ShifterBuild|RotateLeft0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~13_combout\ = (\Blast[0]~_Duplicate_1_regout\ & ((\Alast[1]~_Duplicate_1_regout\))) # (!\Blast[0]~_Duplicate_1_regout\ & (\Alast[2]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[2]~_Duplicate_1_regout\,
	datab => \Alast[1]~_Duplicate_1_regout\,
	datad => \Blast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~13_combout\);

-- Location: LCCOMB_X34_Y23_N12
\ALUBuild|ShifterBuild|RotateLeft0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~14_combout\ = (\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateLeft0~4_combout\)) # (!\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateLeft0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateLeft0~4_combout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~13_combout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~14_combout\);

-- Location: LCCOMB_X34_Y23_N26
\ALUBuild|ShifterBuild|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux6~0_combout\ = (\Blast[2]~_Duplicate_1_regout\ & (OPClast(1))) # (!\Blast[2]~_Duplicate_1_regout\ & ((OPClast(1) & (\ALUBuild|ShifterBuild|RotateRight0~12_combout\)) # (!OPClast(1) & 
-- ((\ALUBuild|ShifterBuild|RotateLeft0~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => OPClast(1),
	datac => \ALUBuild|ShifterBuild|RotateRight0~12_combout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~14_combout\,
	combout => \ALUBuild|ShifterBuild|Mux6~0_combout\);

-- Location: LCCOMB_X34_Y23_N16
\ALUBuild|ShifterBuild|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux6~1_combout\ = (\Blast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|Mux6~0_combout\ & (\ALUBuild|ShifterBuild|RotateRight0~14_combout\)) # (!\ALUBuild|ShifterBuild|Mux6~0_combout\ & 
-- ((\ALUBuild|ShifterBuild|RotateLeft0~12_combout\))))) # (!\Blast[2]~_Duplicate_1_regout\ & (((\ALUBuild|ShifterBuild|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => \ALUBuild|ShifterBuild|RotateRight0~14_combout\,
	datac => \ALUBuild|ShifterBuild|RotateLeft0~12_combout\,
	datad => \ALUBuild|ShifterBuild|Mux6~0_combout\,
	combout => \ALUBuild|ShifterBuild|Mux6~1_combout\);

-- Location: LCCOMB_X34_Y23_N10
\ALUBuild|ShifterBuild|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux6~2_combout\ = (OPClast(0) & ((\ALUBuild|ShifterBuild|Mux6~1_combout\))) # (!OPClast(0) & (\Alast[2]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alast[2]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|Mux6~1_combout\,
	datad => OPClast(0),
	combout => \ALUBuild|ShifterBuild|Mux6~2_combout\);

-- Location: LCCOMB_X35_Y24_N2
\ALUBuild|ShifterBuild|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux6~3_combout\ = (\ALUBuild|ALUBuild|ACC[4]~0_combout\ & ((OPClast(4) & (\ALUBuild|ShifterBuild|Mux6~3_combout\)) # (!OPClast(4) & ((\ALUBuild|ShifterBuild|Mux6~2_combout\))))) # (!\ALUBuild|ALUBuild|ACC[4]~0_combout\ & 
-- (\ALUBuild|ShifterBuild|Mux6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|ACC[4]~0_combout\,
	datab => \ALUBuild|ShifterBuild|Mux6~3_combout\,
	datac => \ALUBuild|ShifterBuild|Mux6~2_combout\,
	datad => OPClast(4),
	combout => \ALUBuild|ShifterBuild|Mux6~3_combout\);

-- Location: LCCOMB_X35_Y24_N8
\ALUBuild|tester|LO[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|LO[2]~2_combout\ = (OPClast(3) & ((OPClast(2) & ((\ALUBuild|ShifterBuild|Mux6~3_combout\))) # (!OPClast(2) & (\ALUBuild|ALUBuild|RES\(2))))) # (!OPClast(3) & (\ALUBuild|ALUBuild|RES\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => \ALUBuild|ALUBuild|RES\(2),
	datac => OPClast(2),
	datad => \ALUBuild|ShifterBuild|Mux6~3_combout\,
	combout => \ALUBuild|tester|LO[2]~2_combout\);

-- Location: LCFF_X35_Y24_N9
\RESlast[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|LO[2]~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(2));

-- Location: LCCOMB_X35_Y23_N26
\ALUBuild|ShifterBuild|RotateLeft0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~15_combout\ = (\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateLeft0~7_combout\))) # (!\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateLeft0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ShifterBuild|RotateLeft0~9_combout\,
	datac => \Blast[1]~_Duplicate_1_regout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~7_combout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~15_combout\);

-- Location: LCCOMB_X37_Y23_N10
\ALUBuild|ShifterBuild|RotateRight0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~1_combout\ = (\Blast[0]~_Duplicate_1_regout\ & ((\Alast[1]~_Duplicate_1_regout\))) # (!\Blast[0]~_Duplicate_1_regout\ & (\Alast[0]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alast[0]~_Duplicate_1_regout\,
	datac => \Alast[1]~_Duplicate_1_regout\,
	datad => \Blast[0]~_Duplicate_1_regout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~1_combout\);

-- Location: LCCOMB_X37_Y23_N26
\ALUBuild|ShifterBuild|RotateRight0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~16_combout\ = (\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateRight0~1_combout\))) # (!\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateRight0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateRight0~9_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~1_combout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~16_combout\);

-- Location: LCCOMB_X36_Y23_N12
\ALUBuild|ShifterBuild|RotateLeft0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~16_combout\ = (\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateLeft0~10_combout\)) # (!\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateLeft0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateLeft0~10_combout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~0_combout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~16_combout\);

-- Location: LCCOMB_X35_Y23_N28
\ALUBuild|ShifterBuild|RotateRight0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~15_combout\ = (\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateRight0~10_combout\))) # (!\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateRight0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateRight0~6_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~10_combout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~15_combout\);

-- Location: LCCOMB_X35_Y23_N18
\ALUBuild|ShifterBuild|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux5~0_combout\ = (\Blast[2]~_Duplicate_1_regout\ & (OPClast(1))) # (!\Blast[2]~_Duplicate_1_regout\ & ((OPClast(1) & ((\ALUBuild|ShifterBuild|RotateRight0~15_combout\))) # (!OPClast(1) & 
-- (\ALUBuild|ShifterBuild|RotateLeft0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => OPClast(1),
	datac => \ALUBuild|ShifterBuild|RotateLeft0~16_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~15_combout\,
	combout => \ALUBuild|ShifterBuild|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y23_N0
\ALUBuild|ShifterBuild|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux5~1_combout\ = (\Blast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|Mux5~0_combout\ & ((\ALUBuild|ShifterBuild|RotateRight0~16_combout\))) # (!\ALUBuild|ShifterBuild|Mux5~0_combout\ & 
-- (\ALUBuild|ShifterBuild|RotateLeft0~15_combout\)))) # (!\Blast[2]~_Duplicate_1_regout\ & (((\ALUBuild|ShifterBuild|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => \ALUBuild|ShifterBuild|RotateLeft0~15_combout\,
	datac => \ALUBuild|ShifterBuild|RotateRight0~16_combout\,
	datad => \ALUBuild|ShifterBuild|Mux5~0_combout\,
	combout => \ALUBuild|ShifterBuild|Mux5~1_combout\);

-- Location: LCCOMB_X35_Y24_N24
\ALUBuild|ShifterBuild|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux5~2_combout\ = (OPClast(0) & ((\ALUBuild|ShifterBuild|Mux5~1_combout\))) # (!OPClast(0) & (\Alast[3]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[3]~_Duplicate_1_regout\,
	datac => OPClast(0),
	datad => \ALUBuild|ShifterBuild|Mux5~1_combout\,
	combout => \ALUBuild|ShifterBuild|Mux5~2_combout\);

-- Location: LCCOMB_X35_Y24_N14
\ALUBuild|ShifterBuild|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux5~3_combout\ = (\ALUBuild|ALUBuild|ACC[4]~0_combout\ & ((OPClast(4) & (\ALUBuild|ShifterBuild|Mux5~3_combout\)) # (!OPClast(4) & ((\ALUBuild|ShifterBuild|Mux5~2_combout\))))) # (!\ALUBuild|ALUBuild|ACC[4]~0_combout\ & 
-- (\ALUBuild|ShifterBuild|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|ACC[4]~0_combout\,
	datab => \ALUBuild|ShifterBuild|Mux5~3_combout\,
	datac => \ALUBuild|ShifterBuild|Mux5~2_combout\,
	datad => OPClast(4),
	combout => \ALUBuild|ShifterBuild|Mux5~3_combout\);

-- Location: LCCOMB_X33_Y24_N14
\ALUBuild|ALUBuild|Mux12~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux12~3_combout\ = (\ALUBuild|ALUBuild|RES[3]~1_combout\ & (((\ALUBuild|ALUBuild|RES[3]~0_combout\) # (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT3\)))) # (!\ALUBuild|ALUBuild|RES[3]~1_combout\ & 
-- (\ALUBuild|ALUBuild|Mux12~2_combout\ & (!\ALUBuild|ALUBuild|RES[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mux12~2_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datac => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	datad => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT3\,
	combout => \ALUBuild|ALUBuild|Mux12~3_combout\);

-- Location: LCCOMB_X31_Y22_N6
\ALUBuild|ALUBuild|Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux28~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Add0~6_combout\,
	combout => \ALUBuild|ALUBuild|Mux28~0_combout\);

-- Location: LCFF_X31_Y22_N7
\ALUBuild|ALUBuild|ACC[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux28~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(3));

-- Location: LCCOMB_X32_Y22_N6
\ALUBuild|ALUBuild|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~6_combout\ = (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\ALUBuild|ALUBuild|ACC\(3) & (\ALUBuild|ALUBuild|Add0~5\ & VCC)) # (!\ALUBuild|ALUBuild|ACC\(3) & (!\ALUBuild|ALUBuild|Add0~5\)))) # 
-- (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((\ALUBuild|ALUBuild|ACC\(3) & (!\ALUBuild|ALUBuild|Add0~5\)) # (!\ALUBuild|ALUBuild|ACC\(3) & ((\ALUBuild|ALUBuild|Add0~5\) # (GND)))))
-- \ALUBuild|ALUBuild|Add0~7\ = CARRY((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT3\ & (!\ALUBuild|ALUBuild|ACC\(3) & !\ALUBuild|ALUBuild|Add0~5\)) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT3\ & ((!\ALUBuild|ALUBuild|Add0~5\) # 
-- (!\ALUBuild|ALUBuild|ACC\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT3\,
	datab => \ALUBuild|ALUBuild|ACC\(3),
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~5\,
	combout => \ALUBuild|ALUBuild|Add0~6_combout\,
	cout => \ALUBuild|ALUBuild|Add0~7\);

-- Location: LCCOMB_X33_Y24_N0
\ALUBuild|ALUBuild|Mux12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux12~4_combout\ = (\ALUBuild|ALUBuild|RES[3]~0_combout\ & ((\ALUBuild|ALUBuild|Mux12~3_combout\ & ((\ALUBuild|ALUBuild|Add0~6_combout\))) # (!\ALUBuild|ALUBuild|Mux12~3_combout\ & (\Blast[3]~_Duplicate_1_regout\)))) # 
-- (!\ALUBuild|ALUBuild|RES[3]~0_combout\ & (((\ALUBuild|ALUBuild|Mux12~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[3]~_Duplicate_1_regout\,
	datab => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	datac => \ALUBuild|ALUBuild|Mux12~3_combout\,
	datad => \ALUBuild|ALUBuild|Add0~6_combout\,
	combout => \ALUBuild|ALUBuild|Mux12~4_combout\);

-- Location: LCCOMB_X33_Y24_N6
\ALUBuild|ALUBuild|Mux12~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux12~5_combout\ = (!\ALUBuild|ALUBuild|Mux15~5_combout\ & ((\ALUBuild|ALUBuild|RES[3]~6_combout\ & (\Alast[3]~_Duplicate_1_regout\)) # (!\ALUBuild|ALUBuild|RES[3]~6_combout\ & ((\ALUBuild|ALUBuild|Mux12~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mux15~5_combout\,
	datab => \Alast[3]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|RES[3]~6_combout\,
	datad => \ALUBuild|ALUBuild|Mux12~4_combout\,
	combout => \ALUBuild|ALUBuild|Mux12~5_combout\);

-- Location: LCCOMB_X33_Y24_N28
\ALUBuild|ALUBuild|Mux12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux12~6_combout\ = (OPClast(4)) # (\ALUBuild|ALUBuild|Mux12~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(4),
	datad => \ALUBuild|ALUBuild|Mux12~5_combout\,
	combout => \ALUBuild|ALUBuild|Mux12~6_combout\);

-- Location: LCFF_X33_Y24_N29
\ALUBuild|ALUBuild|RES[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux12~6_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(3));

-- Location: LCCOMB_X35_Y24_N26
\ALUBuild|tester|LO[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|LO[3]~3_combout\ = (OPClast(3) & ((OPClast(2) & (\ALUBuild|ShifterBuild|Mux5~3_combout\)) # (!OPClast(2) & ((\ALUBuild|ALUBuild|RES\(3)))))) # (!OPClast(3) & (((\ALUBuild|ALUBuild|RES\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => OPClast(2),
	datac => \ALUBuild|ShifterBuild|Mux5~3_combout\,
	datad => \ALUBuild|ALUBuild|RES\(3),
	combout => \ALUBuild|tester|LO[3]~3_combout\);

-- Location: LCFF_X35_Y24_N27
\RESlast[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|LO[3]~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(3));

-- Location: LCCOMB_X33_Y23_N0
\ALUBuild|ALUBuild|AddSub|rest:1:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|rest:1:chain|cout~0_combout\ = (\ALUBuild|ALUBuild|AddSub|yin\(1) & (\Alast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|AddSub|first|cout~0_combout\) # (!\ALUBuild|ALUBuild|AddSub|first|cout~1_combout\)))) # 
-- (!\ALUBuild|ALUBuild|AddSub|yin\(1) & (((\Alast[1]~_Duplicate_1_regout\) # (\ALUBuild|ALUBuild|AddSub|first|cout~0_combout\)) # (!\ALUBuild|ALUBuild|AddSub|first|cout~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|AddSub|first|cout~1_combout\,
	datab => \ALUBuild|ALUBuild|AddSub|yin\(1),
	datac => \Alast[1]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|AddSub|first|cout~0_combout\,
	combout => \ALUBuild|ALUBuild|AddSub|rest:1:chain|cout~0_combout\);

-- Location: LCCOMB_X33_Y23_N28
\ALUBuild|ALUBuild|AddSub|rest:2:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|rest:2:chain|cout~0_combout\ = (\Alast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|AddSub|rest:1:chain|cout~0_combout\) # (\Blast[2]~_Duplicate_1_regout\ $ (!OPClast(0))))) # (!\Alast[2]~_Duplicate_1_regout\ & 
-- (\ALUBuild|ALUBuild|AddSub|rest:1:chain|cout~0_combout\ & (\Blast[2]~_Duplicate_1_regout\ $ (!OPClast(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => OPClast(0),
	datac => \Alast[2]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|AddSub|rest:1:chain|cout~0_combout\,
	combout => \ALUBuild|ALUBuild|AddSub|rest:2:chain|cout~0_combout\);

-- Location: LCCOMB_X33_Y23_N10
\ALUBuild|ALUBuild|AddSub|rest:3:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|rest:3:chain|cout~0_combout\ = (\Alast[3]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|AddSub|rest:2:chain|cout~0_combout\) # (\Blast[3]~_Duplicate_1_regout\ $ (!OPClast(0))))) # (!\Alast[3]~_Duplicate_1_regout\ & 
-- (\ALUBuild|ALUBuild|AddSub|rest:2:chain|cout~0_combout\ & (\Blast[3]~_Duplicate_1_regout\ $ (!OPClast(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[3]~_Duplicate_1_regout\,
	datab => OPClast(0),
	datac => \Alast[3]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|AddSub|rest:2:chain|cout~0_combout\,
	combout => \ALUBuild|ALUBuild|AddSub|rest:3:chain|cout~0_combout\);

-- Location: LCCOMB_X33_Y23_N14
\ALUBuild|ALUBuild|AddSub|rest:4:chain|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|rest:4:chain|s~0_combout\ = \Blast[4]~_Duplicate_1_regout\ $ (\Alast[4]~_Duplicate_1_regout\ $ (OPClast(0) $ (\ALUBuild|ALUBuild|AddSub|rest:3:chain|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[4]~_Duplicate_1_regout\,
	datab => \Alast[4]~_Duplicate_1_regout\,
	datac => OPClast(0),
	datad => \ALUBuild|ALUBuild|AddSub|rest:3:chain|cout~0_combout\,
	combout => \ALUBuild|ALUBuild|AddSub|rest:4:chain|s~0_combout\);

-- Location: LCCOMB_X33_Y24_N4
\ALUBuild|ALUBuild|RES[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|RES[3]~3_combout\ = (OPClast(3) & ((OPClast(2)) # ((OPClast(0)) # (!OPClast(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => OPClast(2),
	datac => OPClast(1),
	datad => OPClast(0),
	combout => \ALUBuild|ALUBuild|RES[3]~3_combout\);

-- Location: LCCOMB_X32_Y23_N2
\ALUBuild|ALUBuild|Mux11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux11~1_combout\ = (\ALUBuild|ALUBuild|RES[3]~2_combout\ & ((\ALUBuild|ALUBuild|RES[3]~3_combout\ & (\ALUBuild|ALUBuild|Mux11~0_combout\)) # (!\ALUBuild|ALUBuild|RES[3]~3_combout\ & 
-- ((!\ALUBuild|ALUBuild|AddSub|rest:4:chain|s~0_combout\))))) # (!\ALUBuild|ALUBuild|RES[3]~2_combout\ & (((!\ALUBuild|ALUBuild|RES[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mux11~0_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~2_combout\,
	datac => \ALUBuild|ALUBuild|AddSub|rest:4:chain|s~0_combout\,
	datad => \ALUBuild|ALUBuild|RES[3]~3_combout\,
	combout => \ALUBuild|ALUBuild|Mux11~1_combout\);

-- Location: LCCOMB_X32_Y23_N4
\ALUBuild|ALUBuild|Mux11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux11~2_combout\ = (\ALUBuild|ALUBuild|RES[3]~4_combout\ & ((\Blast[4]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|Mux11~1_combout\) # (!\Alast[4]~_Duplicate_1_regout\))) # (!\Blast[4]~_Duplicate_1_regout\ & 
-- (\Alast[4]~_Duplicate_1_regout\)))) # (!\ALUBuild|ALUBuild|RES[3]~4_combout\ & (((\ALUBuild|ALUBuild|Mux11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[4]~_Duplicate_1_regout\,
	datab => \ALUBuild|ALUBuild|RES[3]~4_combout\,
	datac => \Alast[4]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|Mux11~1_combout\,
	combout => \ALUBuild|ALUBuild|Mux11~2_combout\);

-- Location: LCCOMB_X32_Y23_N26
\ALUBuild|ALUBuild|Mux11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux11~3_combout\ = (\ALUBuild|ALUBuild|RES[3]~1_combout\ & (((\ALUBuild|ALUBuild|RES[3]~0_combout\)))) # (!\ALUBuild|ALUBuild|RES[3]~1_combout\ & ((\ALUBuild|ALUBuild|RES[3]~0_combout\ & (\Blast[4]~_Duplicate_1_regout\)) # 
-- (!\ALUBuild|ALUBuild|RES[3]~0_combout\ & ((\ALUBuild|ALUBuild|Mux11~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datab => \Blast[4]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|Mux11~2_combout\,
	datad => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux11~3_combout\);

-- Location: LCCOMB_X32_Y22_N8
\ALUBuild|ALUBuild|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~8_combout\ = ((\ALUBuild|ALUBuild|ACC\(4) $ (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT4\ $ (!\ALUBuild|ALUBuild|Add0~7\)))) # (GND)
-- \ALUBuild|ALUBuild|Add0~9\ = CARRY((\ALUBuild|ALUBuild|ACC\(4) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT4\) # (!\ALUBuild|ALUBuild|Add0~7\))) # (!\ALUBuild|ALUBuild|ACC\(4) & (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT4\ & 
-- !\ALUBuild|ALUBuild|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|ACC\(4),
	datab => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~7\,
	combout => \ALUBuild|ALUBuild|Add0~8_combout\,
	cout => \ALUBuild|ALUBuild|Add0~9\);

-- Location: LCCOMB_X32_Y23_N28
\ALUBuild|ALUBuild|Mux11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux11~4_combout\ = (\ALUBuild|ALUBuild|RES[3]~1_combout\ & ((\ALUBuild|ALUBuild|Mux11~3_combout\ & ((\ALUBuild|ALUBuild|Add0~8_combout\))) # (!\ALUBuild|ALUBuild|Mux11~3_combout\ & 
-- (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT4\)))) # (!\ALUBuild|ALUBuild|RES[3]~1_combout\ & (\ALUBuild|ALUBuild|Mux11~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datab => \ALUBuild|ALUBuild|Mux11~3_combout\,
	datac => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT4\,
	datad => \ALUBuild|ALUBuild|Add0~8_combout\,
	combout => \ALUBuild|ALUBuild|Mux11~4_combout\);

-- Location: LCCOMB_X32_Y23_N30
\ALUBuild|ALUBuild|Mux11~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux11~5_combout\ = (!\ALUBuild|ALUBuild|Mux15~5_combout\ & ((\ALUBuild|ALUBuild|RES[3]~6_combout\ & (\Alast[4]~_Duplicate_1_regout\)) # (!\ALUBuild|ALUBuild|RES[3]~6_combout\ & ((\ALUBuild|ALUBuild|Mux11~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[4]~_Duplicate_1_regout\,
	datab => \ALUBuild|ALUBuild|Mux15~5_combout\,
	datac => \ALUBuild|ALUBuild|RES[3]~6_combout\,
	datad => \ALUBuild|ALUBuild|Mux11~4_combout\,
	combout => \ALUBuild|ALUBuild|Mux11~5_combout\);

-- Location: LCCOMB_X32_Y23_N0
\ALUBuild|ALUBuild|Mux11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux11~6_combout\ = (OPClast(4)) # (\ALUBuild|ALUBuild|Mux11~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(4),
	datad => \ALUBuild|ALUBuild|Mux11~5_combout\,
	combout => \ALUBuild|ALUBuild|Mux11~6_combout\);

-- Location: LCFF_X32_Y23_N1
\ALUBuild|ALUBuild|RES[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux11~6_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(4));

-- Location: LCCOMB_X36_Y23_N18
\ALUBuild|ShifterBuild|RotateLeft0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateLeft0~17_combout\ = (\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateLeft0~13_combout\)) # (!\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateLeft0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[1]~_Duplicate_1_regout\,
	datab => \ALUBuild|ShifterBuild|RotateLeft0~13_combout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~6_combout\,
	combout => \ALUBuild|ShifterBuild|RotateLeft0~17_combout\);

-- Location: LCCOMB_X36_Y23_N8
\ALUBuild|ShifterBuild|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux4~0_combout\ = (\Blast[2]~_Duplicate_1_regout\ & (((OPClast(1))))) # (!\Blast[2]~_Duplicate_1_regout\ & ((OPClast(1) & ((\ALUBuild|ShifterBuild|RotateRight0~5_combout\))) # (!OPClast(1) & 
-- (\ALUBuild|ShifterBuild|RotateLeft0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => \ALUBuild|ShifterBuild|RotateLeft0~17_combout\,
	datac => OPClast(1),
	datad => \ALUBuild|ShifterBuild|RotateRight0~5_combout\,
	combout => \ALUBuild|ShifterBuild|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y23_N14
\ALUBuild|ShifterBuild|RotateRight0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~17_combout\ = (\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateRight0~7_combout\))) # (!\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateRight0~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateRight0~13_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~7_combout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~17_combout\);

-- Location: LCCOMB_X36_Y23_N2
\ALUBuild|ShifterBuild|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux4~1_combout\ = (\Blast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|Mux4~0_combout\ & ((\ALUBuild|ShifterBuild|RotateRight0~17_combout\))) # (!\ALUBuild|ShifterBuild|Mux4~0_combout\ & 
-- (\ALUBuild|ShifterBuild|RotateLeft0~5_combout\)))) # (!\Blast[2]~_Duplicate_1_regout\ & (((\ALUBuild|ShifterBuild|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => \ALUBuild|ShifterBuild|RotateLeft0~5_combout\,
	datac => \ALUBuild|ShifterBuild|Mux4~0_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~17_combout\,
	combout => \ALUBuild|ShifterBuild|Mux4~1_combout\);

-- Location: LCCOMB_X35_Y24_N12
\ALUBuild|ShifterBuild|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux4~2_combout\ = (OPClast(0) & ((\ALUBuild|ShifterBuild|Mux4~1_combout\))) # (!OPClast(0) & (\Alast[4]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => OPClast(0),
	datac => \Alast[4]~_Duplicate_1_regout\,
	datad => \ALUBuild|ShifterBuild|Mux4~1_combout\,
	combout => \ALUBuild|ShifterBuild|Mux4~2_combout\);

-- Location: LCCOMB_X35_Y24_N22
\ALUBuild|ShifterBuild|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux4~3_combout\ = (OPClast(4) & (\ALUBuild|ShifterBuild|Mux4~3_combout\)) # (!OPClast(4) & ((\ALUBuild|ALUBuild|ACC[4]~0_combout\ & ((\ALUBuild|ShifterBuild|Mux4~2_combout\))) # (!\ALUBuild|ALUBuild|ACC[4]~0_combout\ & 
-- (\ALUBuild|ShifterBuild|Mux4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ShifterBuild|Mux4~3_combout\,
	datab => OPClast(4),
	datac => \ALUBuild|ALUBuild|ACC[4]~0_combout\,
	datad => \ALUBuild|ShifterBuild|Mux4~2_combout\,
	combout => \ALUBuild|ShifterBuild|Mux4~3_combout\);

-- Location: LCCOMB_X35_Y24_N20
\ALUBuild|tester|LO[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|LO[4]~4_combout\ = (OPClast(2) & ((OPClast(3) & ((\ALUBuild|ShifterBuild|Mux4~3_combout\))) # (!OPClast(3) & (\ALUBuild|ALUBuild|RES\(4))))) # (!OPClast(2) & (((\ALUBuild|ALUBuild|RES\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(2),
	datab => OPClast(3),
	datac => \ALUBuild|ALUBuild|RES\(4),
	datad => \ALUBuild|ShifterBuild|Mux4~3_combout\,
	combout => \ALUBuild|tester|LO[4]~4_combout\);

-- Location: LCFF_X35_Y24_N21
\RESlast[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|LO[4]~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(4));

-- Location: LCCOMB_X33_Y22_N8
\ALUBuild|ALUBuild|Mux10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux10~6_combout\ = (!\ALUBuild|ALUBuild|RES[3]~6_combout\ & (!OPClast(4) & ((!\ALUBuild|ALUBuild|RES[3]~1_combout\) # (!OPClast(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datab => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datac => \ALUBuild|ALUBuild|RES[3]~6_combout\,
	datad => OPClast(4),
	combout => \ALUBuild|ALUBuild|Mux10~6_combout\);

-- Location: LCFF_X33_Y23_N13
\Blast[5]~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \B~combout\(5),
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Blast[5]~_Duplicate_1_regout\);

-- Location: LCCOMB_X32_Y23_N22
\ALUBuild|ALUBuild|Mux10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux10~1_combout\ = (OPClast(2)) # ((\Blast[5]~_Duplicate_1_regout\ & \Alast[5]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[5]~_Duplicate_1_regout\,
	datab => \Alast[5]~_Duplicate_1_regout\,
	datad => OPClast(2),
	combout => \ALUBuild|ALUBuild|Mux10~1_combout\);

-- Location: LCCOMB_X33_Y23_N30
\ALUBuild|ALUBuild|AddSub|rest:4:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|rest:4:chain|cout~0_combout\ = (\Alast[4]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|AddSub|rest:3:chain|cout~0_combout\) # (OPClast(0) $ (!\Blast[4]~_Duplicate_1_regout\)))) # (!\Alast[4]~_Duplicate_1_regout\ & 
-- (\ALUBuild|ALUBuild|AddSub|rest:3:chain|cout~0_combout\ & (OPClast(0) $ (!\Blast[4]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[4]~_Duplicate_1_regout\,
	datab => OPClast(0),
	datac => \Blast[4]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|AddSub|rest:3:chain|cout~0_combout\,
	combout => \ALUBuild|ALUBuild|AddSub|rest:4:chain|cout~0_combout\);

-- Location: LCCOMB_X33_Y23_N2
\ALUBuild|ALUBuild|AddSub|rest:5:chain|s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|rest:5:chain|s~0_combout\ = \Alast[5]~_Duplicate_1_regout\ $ (\Blast[5]~_Duplicate_1_regout\ $ (OPClast(0) $ (\ALUBuild|ALUBuild|AddSub|rest:4:chain|cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[5]~_Duplicate_1_regout\,
	datab => \Blast[5]~_Duplicate_1_regout\,
	datac => OPClast(0),
	datad => \ALUBuild|ALUBuild|AddSub|rest:4:chain|cout~0_combout\,
	combout => \ALUBuild|ALUBuild|AddSub|rest:5:chain|s~0_combout\);

-- Location: LCCOMB_X33_Y22_N28
\ALUBuild|ALUBuild|Mux10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux10~2_combout\ = (\ALUBuild|ALUBuild|RES[3]~3_combout\ & (\ALUBuild|ALUBuild|RES[3]~2_combout\ & (\ALUBuild|ALUBuild|Mux10~1_combout\))) # (!\ALUBuild|ALUBuild|RES[3]~3_combout\ & 
-- (((!\ALUBuild|ALUBuild|AddSub|rest:5:chain|s~0_combout\)) # (!\ALUBuild|ALUBuild|RES[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~3_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~2_combout\,
	datac => \ALUBuild|ALUBuild|Mux10~1_combout\,
	datad => \ALUBuild|ALUBuild|AddSub|rest:5:chain|s~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux10~2_combout\);

-- Location: LCCOMB_X33_Y22_N18
\ALUBuild|ALUBuild|Mux10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux10~3_combout\ = (\ALUBuild|ALUBuild|RES[3]~4_combout\ & ((\Blast[5]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|Mux10~2_combout\) # (!\Alast[5]~_Duplicate_1_regout\))) # (!\Blast[5]~_Duplicate_1_regout\ & 
-- (\Alast[5]~_Duplicate_1_regout\)))) # (!\ALUBuild|ALUBuild|RES[3]~4_combout\ & (((\ALUBuild|ALUBuild|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~4_combout\,
	datab => \Blast[5]~_Duplicate_1_regout\,
	datac => \Alast[5]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|Mux10~2_combout\,
	combout => \ALUBuild|ALUBuild|Mux10~3_combout\);

-- Location: LCCOMB_X33_Y22_N24
\ALUBuild|ALUBuild|Mux10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux10~4_combout\ = (\ALUBuild|ALUBuild|RES[3]~0_combout\ & (\ALUBuild|ALUBuild|RES[3]~1_combout\)) # (!\ALUBuild|ALUBuild|RES[3]~0_combout\ & ((\ALUBuild|ALUBuild|RES[3]~1_combout\ & 
-- (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT5\)) # (!\ALUBuild|ALUBuild|RES[3]~1_combout\ & ((\ALUBuild|ALUBuild|Mux10~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datac => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => \ALUBuild|ALUBuild|Mux10~3_combout\,
	combout => \ALUBuild|ALUBuild|Mux10~4_combout\);

-- Location: LCCOMB_X32_Y22_N10
\ALUBuild|ALUBuild|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~10_combout\ = (\ALUBuild|ALUBuild|ACC\(5) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT5\ & (\ALUBuild|ALUBuild|Add0~9\ & VCC)) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT5\ & 
-- (!\ALUBuild|ALUBuild|Add0~9\)))) # (!\ALUBuild|ALUBuild|ACC\(5) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT5\ & (!\ALUBuild|ALUBuild|Add0~9\)) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT5\ & ((\ALUBuild|ALUBuild|Add0~9\) 
-- # (GND)))))
-- \ALUBuild|ALUBuild|Add0~11\ = CARRY((\ALUBuild|ALUBuild|ACC\(5) & (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT5\ & !\ALUBuild|ALUBuild|Add0~9\)) # (!\ALUBuild|ALUBuild|ACC\(5) & ((!\ALUBuild|ALUBuild|Add0~9\) # 
-- (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|ACC\(5),
	datab => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT5\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~9\,
	combout => \ALUBuild|ALUBuild|Add0~10_combout\,
	cout => \ALUBuild|ALUBuild|Add0~11\);

-- Location: LCCOMB_X33_Y22_N6
\ALUBuild|ALUBuild|Mux10~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux10~5_combout\ = (\ALUBuild|ALUBuild|RES[3]~0_combout\ & ((\ALUBuild|ALUBuild|Mux10~4_combout\ & ((\ALUBuild|ALUBuild|Add0~10_combout\))) # (!\ALUBuild|ALUBuild|Mux10~4_combout\ & (\Blast[5]~_Duplicate_1_regout\)))) # 
-- (!\ALUBuild|ALUBuild|RES[3]~0_combout\ & (((\ALUBuild|ALUBuild|Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	datab => \Blast[5]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|Mux10~4_combout\,
	datad => \ALUBuild|ALUBuild|Add0~10_combout\,
	combout => \ALUBuild|ALUBuild|Mux10~5_combout\);

-- Location: LCCOMB_X33_Y22_N22
\ALUBuild|ALUBuild|Mux10~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux10~7_combout\ = (\ALUBuild|ALUBuild|Mux10~0_combout\) # ((OPClast(4)) # ((\ALUBuild|ALUBuild|Mux10~6_combout\ & \ALUBuild|ALUBuild|Mux10~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mux10~0_combout\,
	datab => OPClast(4),
	datac => \ALUBuild|ALUBuild|Mux10~6_combout\,
	datad => \ALUBuild|ALUBuild|Mux10~5_combout\,
	combout => \ALUBuild|ALUBuild|Mux10~7_combout\);

-- Location: LCFF_X33_Y22_N23
\ALUBuild|ALUBuild|RES[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux10~7_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(5));

-- Location: LCCOMB_X36_Y23_N20
\ALUBuild|ShifterBuild|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux3~0_combout\ = (\Blast[2]~_Duplicate_1_regout\ & (OPClast(1))) # (!\Blast[2]~_Duplicate_1_regout\ & ((OPClast(1) & (\ALUBuild|ShifterBuild|RotateRight0~11_combout\)) # (!OPClast(1) & 
-- ((\ALUBuild|ShifterBuild|RotateLeft0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => OPClast(1),
	datac => \ALUBuild|ShifterBuild|RotateRight0~11_combout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~2_combout\,
	combout => \ALUBuild|ShifterBuild|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y23_N20
\ALUBuild|ShifterBuild|RotateRight0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|RotateRight0~2_combout\ = (\Blast[1]~_Duplicate_1_regout\ & (\ALUBuild|ShifterBuild|RotateRight0~0_combout\)) # (!\Blast[1]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateRight0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Blast[1]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateRight0~0_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~1_combout\,
	combout => \ALUBuild|ShifterBuild|RotateRight0~2_combout\);

-- Location: LCCOMB_X36_Y23_N22
\ALUBuild|ShifterBuild|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux3~1_combout\ = (\Blast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|Mux3~0_combout\ & ((\ALUBuild|ShifterBuild|RotateRight0~2_combout\))) # (!\ALUBuild|ShifterBuild|Mux3~0_combout\ & 
-- (\ALUBuild|ShifterBuild|RotateLeft0~11_combout\)))) # (!\Blast[2]~_Duplicate_1_regout\ & (((\ALUBuild|ShifterBuild|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => \ALUBuild|ShifterBuild|RotateLeft0~11_combout\,
	datac => \ALUBuild|ShifterBuild|Mux3~0_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~2_combout\,
	combout => \ALUBuild|ShifterBuild|Mux3~1_combout\);

-- Location: LCCOMB_X35_Y24_N28
\ALUBuild|ShifterBuild|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux3~2_combout\ = (OPClast(0) & ((\ALUBuild|ShifterBuild|Mux3~1_combout\))) # (!OPClast(0) & (\Alast[5]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alast[5]~_Duplicate_1_regout\,
	datac => OPClast(0),
	datad => \ALUBuild|ShifterBuild|Mux3~1_combout\,
	combout => \ALUBuild|ShifterBuild|Mux3~2_combout\);

-- Location: LCCOMB_X35_Y24_N10
\ALUBuild|ShifterBuild|Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux3~3_combout\ = (OPClast(4) & (\ALUBuild|ShifterBuild|Mux3~3_combout\)) # (!OPClast(4) & ((\ALUBuild|ALUBuild|ACC[4]~0_combout\ & ((\ALUBuild|ShifterBuild|Mux3~2_combout\))) # (!\ALUBuild|ALUBuild|ACC[4]~0_combout\ & 
-- (\ALUBuild|ShifterBuild|Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ShifterBuild|Mux3~3_combout\,
	datab => OPClast(4),
	datac => \ALUBuild|ALUBuild|ACC[4]~0_combout\,
	datad => \ALUBuild|ShifterBuild|Mux3~2_combout\,
	combout => \ALUBuild|ShifterBuild|Mux3~3_combout\);

-- Location: LCCOMB_X35_Y24_N18
\ALUBuild|tester|LO[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|LO[5]~5_combout\ = (OPClast(2) & ((OPClast(3) & ((\ALUBuild|ShifterBuild|Mux3~3_combout\))) # (!OPClast(3) & (\ALUBuild|ALUBuild|RES\(5))))) # (!OPClast(2) & (((\ALUBuild|ALUBuild|RES\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(2),
	datab => OPClast(3),
	datac => \ALUBuild|ALUBuild|RES\(5),
	datad => \ALUBuild|ShifterBuild|Mux3~3_combout\,
	combout => \ALUBuild|tester|LO[5]~5_combout\);

-- Location: LCFF_X35_Y24_N19
\RESlast[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|LO[5]~5_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(5));

-- Location: LCCOMB_X33_Y23_N12
\ALUBuild|ALUBuild|AddSub|rest:5:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|rest:5:chain|cout~0_combout\ = (\Alast[5]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|AddSub|rest:4:chain|cout~0_combout\) # (OPClast(0) $ (!\Blast[5]~_Duplicate_1_regout\)))) # (!\Alast[5]~_Duplicate_1_regout\ & 
-- (\ALUBuild|ALUBuild|AddSub|rest:4:chain|cout~0_combout\ & (OPClast(0) $ (!\Blast[5]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[5]~_Duplicate_1_regout\,
	datab => OPClast(0),
	datac => \Blast[5]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|AddSub|rest:4:chain|cout~0_combout\,
	combout => \ALUBuild|ALUBuild|AddSub|rest:5:chain|cout~0_combout\);

-- Location: LCCOMB_X33_Y24_N12
\ALUBuild|ALUBuild|Mux9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux9~1_combout\ = (\ALUBuild|ALUBuild|RES[3]~3_combout\ & (\Alast[6]~_Duplicate_1_regout\ & (\Blast[6]~_Duplicate_1_regout\))) # (!\ALUBuild|ALUBuild|RES[3]~3_combout\ & (\Alast[6]~_Duplicate_1_regout\ $ (\Blast[6]~_Duplicate_1_regout\ 
-- $ (OPClast(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[6]~_Duplicate_1_regout\,
	datab => \ALUBuild|ALUBuild|RES[3]~3_combout\,
	datac => \Blast[6]~_Duplicate_1_regout\,
	datad => OPClast(0),
	combout => \ALUBuild|ALUBuild|Mux9~1_combout\);

-- Location: LCCOMB_X33_Y24_N30
\ALUBuild|ALUBuild|Mux9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux9~2_combout\ = (\ALUBuild|ALUBuild|Mux9~1_combout\) # ((OPClast(2) & \ALUBuild|ALUBuild|RES[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => OPClast(2),
	datac => \ALUBuild|ALUBuild|RES[3]~3_combout\,
	datad => \ALUBuild|ALUBuild|Mux9~1_combout\,
	combout => \ALUBuild|ALUBuild|Mux9~2_combout\);

-- Location: LCCOMB_X32_Y24_N10
\ALUBuild|ALUBuild|Mux9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux9~3_combout\ = (\ALUBuild|ALUBuild|RES[3]~2_combout\ & (\ALUBuild|ALUBuild|Mux9~2_combout\ $ (((!\ALUBuild|ALUBuild|RES[3]~3_combout\ & !\ALUBuild|ALUBuild|AddSub|rest:5:chain|cout~0_combout\))))) # 
-- (!\ALUBuild|ALUBuild|RES[3]~2_combout\ & (!\ALUBuild|ALUBuild|RES[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~3_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~2_combout\,
	datac => \ALUBuild|ALUBuild|AddSub|rest:5:chain|cout~0_combout\,
	datad => \ALUBuild|ALUBuild|Mux9~2_combout\,
	combout => \ALUBuild|ALUBuild|Mux9~3_combout\);

-- Location: LCCOMB_X32_Y24_N20
\ALUBuild|ALUBuild|Mux9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux9~4_combout\ = (\ALUBuild|ALUBuild|RES[3]~4_combout\ & ((\Blast[6]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|Mux9~3_combout\) # (!\Alast[6]~_Duplicate_1_regout\))) # (!\Blast[6]~_Duplicate_1_regout\ & 
-- (\Alast[6]~_Duplicate_1_regout\)))) # (!\ALUBuild|ALUBuild|RES[3]~4_combout\ & (((\ALUBuild|ALUBuild|Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[6]~_Duplicate_1_regout\,
	datab => \ALUBuild|ALUBuild|RES[3]~4_combout\,
	datac => \Alast[6]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|Mux9~3_combout\,
	combout => \ALUBuild|ALUBuild|Mux9~4_combout\);

-- Location: LCCOMB_X32_Y24_N14
\ALUBuild|ALUBuild|Mux9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux9~5_combout\ = (\ALUBuild|ALUBuild|RES[3]~1_combout\ & (((\ALUBuild|ALUBuild|RES[3]~0_combout\)))) # (!\ALUBuild|ALUBuild|RES[3]~1_combout\ & ((\ALUBuild|ALUBuild|RES[3]~0_combout\ & (\Blast[6]~_Duplicate_1_regout\)) # 
-- (!\ALUBuild|ALUBuild|RES[3]~0_combout\ & ((\ALUBuild|ALUBuild|Mux9~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[6]~_Duplicate_1_regout\,
	datab => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datac => \ALUBuild|ALUBuild|Mux9~4_combout\,
	datad => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux9~5_combout\);

-- Location: LCCOMB_X32_Y22_N12
\ALUBuild|ALUBuild|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~12_combout\ = ((\ALUBuild|ALUBuild|ACC\(6) $ (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT6\ $ (!\ALUBuild|ALUBuild|Add0~11\)))) # (GND)
-- \ALUBuild|ALUBuild|Add0~13\ = CARRY((\ALUBuild|ALUBuild|ACC\(6) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT6\) # (!\ALUBuild|ALUBuild|Add0~11\))) # (!\ALUBuild|ALUBuild|ACC\(6) & (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT6\ 
-- & !\ALUBuild|ALUBuild|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|ACC\(6),
	datab => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~11\,
	combout => \ALUBuild|ALUBuild|Add0~12_combout\,
	cout => \ALUBuild|ALUBuild|Add0~13\);

-- Location: LCCOMB_X32_Y24_N4
\ALUBuild|ALUBuild|Mux9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux9~6_combout\ = (\ALUBuild|ALUBuild|RES[3]~1_combout\ & ((\ALUBuild|ALUBuild|Mux9~5_combout\ & ((\ALUBuild|ALUBuild|Add0~12_combout\))) # (!\ALUBuild|ALUBuild|Mux9~5_combout\ & 
-- (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT6\)))) # (!\ALUBuild|ALUBuild|RES[3]~1_combout\ & (((\ALUBuild|ALUBuild|Mux9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT6\,
	datab => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datac => \ALUBuild|ALUBuild|Mux9~5_combout\,
	datad => \ALUBuild|ALUBuild|Add0~12_combout\,
	combout => \ALUBuild|ALUBuild|Mux9~6_combout\);

-- Location: LCCOMB_X32_Y24_N24
\ALUBuild|ALUBuild|Mux9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux9~7_combout\ = (\ALUBuild|ALUBuild|Mux9~0_combout\) # ((OPClast(4)) # ((\ALUBuild|ALUBuild|Mux9~6_combout\ & \ALUBuild|ALUBuild|Mux10~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mux9~0_combout\,
	datab => OPClast(4),
	datac => \ALUBuild|ALUBuild|Mux9~6_combout\,
	datad => \ALUBuild|ALUBuild|Mux10~6_combout\,
	combout => \ALUBuild|ALUBuild|Mux9~7_combout\);

-- Location: LCFF_X32_Y24_N25
\ALUBuild|ALUBuild|RES[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux9~7_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(6));

-- Location: LCCOMB_X37_Y23_N4
\ALUBuild|ShifterBuild|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux2~0_combout\ = (OPClast(1) & ((\Blast[2]~_Duplicate_1_regout\) # ((\ALUBuild|ShifterBuild|RotateRight0~14_combout\)))) # (!OPClast(1) & (!\Blast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|RotateLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datab => \Blast[2]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateRight0~14_combout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~8_combout\,
	combout => \ALUBuild|ShifterBuild|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y23_N14
\ALUBuild|ShifterBuild|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux2~1_combout\ = (\Blast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|Mux2~0_combout\ & ((\ALUBuild|ShifterBuild|RotateRight0~8_combout\))) # (!\ALUBuild|ShifterBuild|Mux2~0_combout\ & 
-- (\ALUBuild|ShifterBuild|RotateLeft0~14_combout\)))) # (!\Blast[2]~_Duplicate_1_regout\ & (((\ALUBuild|ShifterBuild|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[2]~_Duplicate_1_regout\,
	datab => \ALUBuild|ShifterBuild|RotateLeft0~14_combout\,
	datac => \ALUBuild|ShifterBuild|Mux2~0_combout\,
	datad => \ALUBuild|ShifterBuild|RotateRight0~8_combout\,
	combout => \ALUBuild|ShifterBuild|Mux2~1_combout\);

-- Location: LCCOMB_X36_Y24_N20
\ALUBuild|ShifterBuild|Mux2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux2~2_combout\ = (OPClast(0) & ((\ALUBuild|ShifterBuild|Mux2~1_combout\))) # (!OPClast(0) & (\Alast[6]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => OPClast(0),
	datac => \Alast[6]~_Duplicate_1_regout\,
	datad => \ALUBuild|ShifterBuild|Mux2~1_combout\,
	combout => \ALUBuild|ShifterBuild|Mux2~2_combout\);

-- Location: LCCOMB_X36_Y24_N22
\ALUBuild|ShifterBuild|Mux2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux2~3_combout\ = (OPClast(4) & (\ALUBuild|ShifterBuild|Mux2~3_combout\)) # (!OPClast(4) & ((\ALUBuild|ALUBuild|ACC[4]~0_combout\ & ((\ALUBuild|ShifterBuild|Mux2~2_combout\))) # (!\ALUBuild|ALUBuild|ACC[4]~0_combout\ & 
-- (\ALUBuild|ShifterBuild|Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(4),
	datab => \ALUBuild|ShifterBuild|Mux2~3_combout\,
	datac => \ALUBuild|ShifterBuild|Mux2~2_combout\,
	datad => \ALUBuild|ALUBuild|ACC[4]~0_combout\,
	combout => \ALUBuild|ShifterBuild|Mux2~3_combout\);

-- Location: LCCOMB_X36_Y24_N16
\ALUBuild|tester|LO[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|LO[6]~6_combout\ = (OPClast(3) & ((OPClast(2) & ((\ALUBuild|ShifterBuild|Mux2~3_combout\))) # (!OPClast(2) & (\ALUBuild|ALUBuild|RES\(6))))) # (!OPClast(3) & (\ALUBuild|ALUBuild|RES\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => \ALUBuild|ALUBuild|RES\(6),
	datac => OPClast(2),
	datad => \ALUBuild|ShifterBuild|Mux2~3_combout\,
	combout => \ALUBuild|tester|LO[6]~6_combout\);

-- Location: LCFF_X36_Y24_N17
\RESlast[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|LO[6]~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(6));

-- Location: LCCOMB_X33_Y22_N30
\ALUBuild|ALUBuild|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux8~0_combout\ = (\ALUBuild|ALUBuild|RES[3]~6_combout\ & (!\ALUBuild|ALUBuild|Mux15~5_combout\ & \Alast[7]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ALUBuild|RES[3]~6_combout\,
	datac => \ALUBuild|ALUBuild|Mux15~5_combout\,
	datad => \Alast[7]~_Duplicate_1_regout\,
	combout => \ALUBuild|ALUBuild|Mux8~0_combout\);

-- Location: LCCOMB_X33_Y24_N8
\ALUBuild|ALUBuild|Mux8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux8~1_combout\ = (\ALUBuild|ALUBuild|RES[3]~3_combout\ & (\Blast[7]~_Duplicate_1_regout\ & (\Alast[7]~_Duplicate_1_regout\))) # (!\ALUBuild|ALUBuild|RES[3]~3_combout\ & (\Blast[7]~_Duplicate_1_regout\ $ (\Alast[7]~_Duplicate_1_regout\ 
-- $ (OPClast(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[7]~_Duplicate_1_regout\,
	datab => \Alast[7]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|RES[3]~3_combout\,
	datad => OPClast(0),
	combout => \ALUBuild|ALUBuild|Mux8~1_combout\);

-- Location: LCCOMB_X33_Y24_N10
\ALUBuild|ALUBuild|Mux8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux8~2_combout\ = (\ALUBuild|ALUBuild|Mux8~1_combout\) # ((\ALUBuild|ALUBuild|RES[3]~3_combout\ & OPClast(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ALUBuild|RES[3]~3_combout\,
	datac => \ALUBuild|ALUBuild|Mux8~1_combout\,
	datad => OPClast(2),
	combout => \ALUBuild|ALUBuild|Mux8~2_combout\);

-- Location: LCCOMB_X33_Y23_N4
\ALUBuild|ALUBuild|AddSub|rest:6:chain|cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|AddSub|rest:6:chain|cout~0_combout\ = (\Alast[6]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|AddSub|rest:5:chain|cout~0_combout\) # (OPClast(0) $ (!\Blast[6]~_Duplicate_1_regout\)))) # (!\Alast[6]~_Duplicate_1_regout\ & 
-- (\ALUBuild|ALUBuild|AddSub|rest:5:chain|cout~0_combout\ & (OPClast(0) $ (!\Blast[6]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Alast[6]~_Duplicate_1_regout\,
	datab => OPClast(0),
	datac => \Blast[6]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|AddSub|rest:5:chain|cout~0_combout\,
	combout => \ALUBuild|ALUBuild|AddSub|rest:6:chain|cout~0_combout\);

-- Location: LCCOMB_X32_Y24_N26
\ALUBuild|ALUBuild|Mux8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux8~3_combout\ = (\ALUBuild|ALUBuild|RES[3]~2_combout\ & (\ALUBuild|ALUBuild|Mux8~2_combout\ $ (((!\ALUBuild|ALUBuild|RES[3]~3_combout\ & !\ALUBuild|ALUBuild|AddSub|rest:6:chain|cout~0_combout\))))) # 
-- (!\ALUBuild|ALUBuild|RES[3]~2_combout\ & (!\ALUBuild|ALUBuild|RES[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000110010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~3_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~2_combout\,
	datac => \ALUBuild|ALUBuild|Mux8~2_combout\,
	datad => \ALUBuild|ALUBuild|AddSub|rest:6:chain|cout~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux8~3_combout\);

-- Location: LCCOMB_X32_Y24_N8
\ALUBuild|ALUBuild|Mux8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux8~4_combout\ = (\ALUBuild|ALUBuild|RES[3]~4_combout\ & ((\Blast[7]~_Duplicate_1_regout\ & ((\ALUBuild|ALUBuild|Mux8~3_combout\) # (!\Alast[7]~_Duplicate_1_regout\))) # (!\Blast[7]~_Duplicate_1_regout\ & 
-- (\Alast[7]~_Duplicate_1_regout\)))) # (!\ALUBuild|ALUBuild|RES[3]~4_combout\ & (((\ALUBuild|ALUBuild|Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[7]~_Duplicate_1_regout\,
	datab => \ALUBuild|ALUBuild|RES[3]~4_combout\,
	datac => \Alast[7]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|Mux8~3_combout\,
	combout => \ALUBuild|ALUBuild|Mux8~4_combout\);

-- Location: LCCOMB_X32_Y24_N18
\ALUBuild|ALUBuild|Mux8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux8~5_combout\ = (\ALUBuild|ALUBuild|RES[3]~0_combout\ & (\ALUBuild|ALUBuild|RES[3]~1_combout\)) # (!\ALUBuild|ALUBuild|RES[3]~0_combout\ & ((\ALUBuild|ALUBuild|RES[3]~1_combout\ & 
-- ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT7\))) # (!\ALUBuild|ALUBuild|RES[3]~1_combout\ & (\ALUBuild|ALUBuild|Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~1_combout\,
	datac => \ALUBuild|ALUBuild|Mux8~4_combout\,
	datad => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT7\,
	combout => \ALUBuild|ALUBuild|Mux8~5_combout\);

-- Location: LCCOMB_X32_Y24_N12
\ALUBuild|ALUBuild|Mux8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux8~6_combout\ = (\ALUBuild|ALUBuild|RES[3]~0_combout\ & ((\ALUBuild|ALUBuild|Mux8~5_combout\ & (\ALUBuild|ALUBuild|Add0~14_combout\)) # (!\ALUBuild|ALUBuild|Mux8~5_combout\ & ((\Blast[7]~_Duplicate_1_regout\))))) # 
-- (!\ALUBuild|ALUBuild|RES[3]~0_combout\ & (((\ALUBuild|ALUBuild|Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Add0~14_combout\,
	datab => \ALUBuild|ALUBuild|RES[3]~0_combout\,
	datac => \Blast[7]~_Duplicate_1_regout\,
	datad => \ALUBuild|ALUBuild|Mux8~5_combout\,
	combout => \ALUBuild|ALUBuild|Mux8~6_combout\);

-- Location: LCCOMB_X32_Y24_N30
\ALUBuild|ALUBuild|Mux8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux8~7_combout\ = (OPClast(4)) # ((\ALUBuild|ALUBuild|Mux8~0_combout\) # ((\ALUBuild|ALUBuild|Mux10~6_combout\ & \ALUBuild|ALUBuild|Mux8~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mux10~6_combout\,
	datab => OPClast(4),
	datac => \ALUBuild|ALUBuild|Mux8~0_combout\,
	datad => \ALUBuild|ALUBuild|Mux8~6_combout\,
	combout => \ALUBuild|ALUBuild|Mux8~7_combout\);

-- Location: LCFF_X32_Y24_N31
\ALUBuild|ALUBuild|RES[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux8~7_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(7));

-- Location: LCCOMB_X37_Y23_N12
\ALUBuild|ShifterBuild|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux1~0_combout\ = (OPClast(1) & ((\ALUBuild|ShifterBuild|RotateRight0~16_combout\) # ((\Blast[2]~_Duplicate_1_regout\)))) # (!OPClast(1) & (((!\Blast[2]~_Duplicate_1_regout\ & \ALUBuild|ShifterBuild|RotateLeft0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datab => \ALUBuild|ShifterBuild|RotateRight0~16_combout\,
	datac => \Blast[2]~_Duplicate_1_regout\,
	datad => \ALUBuild|ShifterBuild|RotateLeft0~12_combout\,
	combout => \ALUBuild|ShifterBuild|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y23_N6
\ALUBuild|ShifterBuild|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux1~1_combout\ = (\Blast[2]~_Duplicate_1_regout\ & ((\ALUBuild|ShifterBuild|Mux1~0_combout\ & ((\ALUBuild|ShifterBuild|RotateRight0~12_combout\))) # (!\ALUBuild|ShifterBuild|Mux1~0_combout\ & 
-- (\ALUBuild|ShifterBuild|RotateLeft0~16_combout\)))) # (!\Blast[2]~_Duplicate_1_regout\ & (((\ALUBuild|ShifterBuild|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ShifterBuild|RotateLeft0~16_combout\,
	datab => \Blast[2]~_Duplicate_1_regout\,
	datac => \ALUBuild|ShifterBuild|RotateRight0~12_combout\,
	datad => \ALUBuild|ShifterBuild|Mux1~0_combout\,
	combout => \ALUBuild|ShifterBuild|Mux1~1_combout\);

-- Location: LCCOMB_X36_Y24_N12
\ALUBuild|ShifterBuild|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux1~2_combout\ = (OPClast(0) & ((\ALUBuild|ShifterBuild|Mux1~1_combout\))) # (!OPClast(0) & (\Alast[7]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Alast[7]~_Duplicate_1_regout\,
	datac => OPClast(0),
	datad => \ALUBuild|ShifterBuild|Mux1~1_combout\,
	combout => \ALUBuild|ShifterBuild|Mux1~2_combout\);

-- Location: LCCOMB_X36_Y24_N30
\ALUBuild|ShifterBuild|Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux1~3_combout\ = (\ALUBuild|ALUBuild|ACC[4]~0_combout\ & ((OPClast(4) & (\ALUBuild|ShifterBuild|Mux1~3_combout\)) # (!OPClast(4) & ((\ALUBuild|ShifterBuild|Mux1~2_combout\))))) # (!\ALUBuild|ALUBuild|ACC[4]~0_combout\ & 
-- (\ALUBuild|ShifterBuild|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ShifterBuild|Mux1~3_combout\,
	datab => \ALUBuild|ALUBuild|ACC[4]~0_combout\,
	datac => OPClast(4),
	datad => \ALUBuild|ShifterBuild|Mux1~2_combout\,
	combout => \ALUBuild|ShifterBuild|Mux1~3_combout\);

-- Location: LCCOMB_X36_Y24_N18
\ALUBuild|tester|LO[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|LO[7]~7_combout\ = (OPClast(3) & ((OPClast(2) & ((\ALUBuild|ShifterBuild|Mux1~3_combout\))) # (!OPClast(2) & (\ALUBuild|ALUBuild|RES\(7))))) # (!OPClast(3) & (((\ALUBuild|ALUBuild|RES\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => OPClast(2),
	datac => \ALUBuild|ALUBuild|RES\(7),
	datad => \ALUBuild|ShifterBuild|Mux1~3_combout\,
	combout => \ALUBuild|tester|LO[7]~7_combout\);

-- Location: LCFF_X36_Y24_N19
\RESlast[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|LO[7]~7_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(7));

-- Location: LCCOMB_X32_Y24_N2
\ALUBuild|ALUBuild|Mux7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux7~2_combout\ = (OPClast(0) & ((\ALUBuild|ALUBuild|AddSub|rest:6:chain|cout~0_combout\ & ((\Alast[7]~_Duplicate_1_regout\) # (\Blast[7]~_Duplicate_1_regout\))) # (!\ALUBuild|ALUBuild|AddSub|rest:6:chain|cout~0_combout\ & 
-- (\Alast[7]~_Duplicate_1_regout\ & \Blast[7]~_Duplicate_1_regout\)))) # (!OPClast(0) & (\ALUBuild|ALUBuild|AddSub|rest:6:chain|cout~0_combout\ $ (\Alast[7]~_Duplicate_1_regout\ $ (\Blast[7]~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(0),
	datab => \ALUBuild|ALUBuild|AddSub|rest:6:chain|cout~0_combout\,
	datac => \Alast[7]~_Duplicate_1_regout\,
	datad => \Blast[7]~_Duplicate_1_regout\,
	combout => \ALUBuild|ALUBuild|Mux7~2_combout\);

-- Location: LCCOMB_X32_Y22_N16
\ALUBuild|ALUBuild|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~16_combout\ = ((\ALUBuild|ALUBuild|ACC\(8) $ (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT8\ $ (!\ALUBuild|ALUBuild|Add0~15\)))) # (GND)
-- \ALUBuild|ALUBuild|Add0~17\ = CARRY((\ALUBuild|ALUBuild|ACC\(8) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT8\) # (!\ALUBuild|ALUBuild|Add0~15\))) # (!\ALUBuild|ALUBuild|ACC\(8) & (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT8\ 
-- & !\ALUBuild|ALUBuild|Add0~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|ACC\(8),
	datab => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~15\,
	combout => \ALUBuild|ALUBuild|Add0~16_combout\,
	cout => \ALUBuild|ALUBuild|Add0~17\);

-- Location: LCCOMB_X32_Y24_N28
\ALUBuild|ALUBuild|Mux7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux7~4_combout\ = (OPClast(0) & (OPClast(2) & ((\ALUBuild|ALUBuild|Add0~16_combout\)))) # (!OPClast(0) & (((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT8\)) # (!OPClast(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(0),
	datab => OPClast(2),
	datac => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT8\,
	datad => \ALUBuild|ALUBuild|Add0~16_combout\,
	combout => \ALUBuild|ALUBuild|Mux7~4_combout\);

-- Location: LCCOMB_X32_Y24_N22
\ALUBuild|ALUBuild|Mux7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux7~5_combout\ = (\ALUBuild|ALUBuild|Mux7~4_combout\ & (((!OPClast(2) & !\ALUBuild|ALUBuild|Mux7~2_combout\)) # (!OPClast(1)))) # (!\ALUBuild|ALUBuild|Mux7~4_combout\ & (((!OPClast(2) & \ALUBuild|ALUBuild|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datab => OPClast(2),
	datac => \ALUBuild|ALUBuild|Mux7~2_combout\,
	datad => \ALUBuild|ALUBuild|Mux7~4_combout\,
	combout => \ALUBuild|ALUBuild|Mux7~5_combout\);

-- Location: LCCOMB_X32_Y24_N0
\ALUBuild|ALUBuild|Mux7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux7~3_combout\ = (OPClast(4)) # ((OPClast(3) & (OPClast(2))) # (!OPClast(3) & ((\ALUBuild|ALUBuild|Mux7~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => OPClast(2),
	datac => OPClast(4),
	datad => \ALUBuild|ALUBuild|Mux7~5_combout\,
	combout => \ALUBuild|ALUBuild|Mux7~3_combout\);

-- Location: LCFF_X32_Y24_N1
\ALUBuild|ALUBuild|RES[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux7~3_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(8));

-- Location: LCCOMB_X34_Y23_N20
\ALUBuild|tester|HI[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|HI[0]~0_combout\ = (\ALUBuild|ALUBuild|RES\(8) & ((!OPClast(2)) # (!OPClast(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => OPClast(2),
	datad => \ALUBuild|ALUBuild|RES\(8),
	combout => \ALUBuild|tester|HI[0]~0_combout\);

-- Location: LCFF_X34_Y23_N21
\RESlast[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|HI[0]~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(8));

-- Location: LCCOMB_X33_Y23_N18
\ALUBuild|ALUBuild|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux6~0_combout\ = \Blast[7]~_Duplicate_1_regout\ $ (\ALUBuild|ALUBuild|AddSub|rest:6:chain|cout~0_combout\ $ (\Alast[7]~_Duplicate_1_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Blast[7]~_Duplicate_1_regout\,
	datac => \ALUBuild|ALUBuild|AddSub|rest:6:chain|cout~0_combout\,
	datad => \Alast[7]~_Duplicate_1_regout\,
	combout => \ALUBuild|ALUBuild|Mux6~0_combout\);

-- Location: LCCOMB_X33_Y23_N20
\ALUBuild|ALUBuild|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux6~1_combout\ = (OPClast(0)) # ((OPClast(1) & (!OPClast(2) & \ALUBuild|ALUBuild|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(1),
	datab => OPClast(2),
	datac => OPClast(0),
	datad => \ALUBuild|ALUBuild|Mux6~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux6~1_combout\);

-- Location: LCCOMB_X33_Y23_N26
\ALUBuild|ALUBuild|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux6~2_combout\ = (OPClast(4)) # ((OPClast(3) & ((OPClast(2)))) # (!OPClast(3) & (!\ALUBuild|ALUBuild|Mux6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => OPClast(4),
	datac => \ALUBuild|ALUBuild|Mux6~1_combout\,
	datad => OPClast(2),
	combout => \ALUBuild|ALUBuild|Mux6~2_combout\);

-- Location: LCCOMB_X32_Y22_N18
\ALUBuild|ALUBuild|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~18_combout\ = (\ALUBuild|ALUBuild|ACC\(9) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT9\ & (\ALUBuild|ALUBuild|Add0~17\ & VCC)) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- (!\ALUBuild|ALUBuild|Add0~17\)))) # (!\ALUBuild|ALUBuild|ACC\(9) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT9\ & (!\ALUBuild|ALUBuild|Add0~17\)) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT9\ & 
-- ((\ALUBuild|ALUBuild|Add0~17\) # (GND)))))
-- \ALUBuild|ALUBuild|Add0~19\ = CARRY((\ALUBuild|ALUBuild|ACC\(9) & (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT9\ & !\ALUBuild|ALUBuild|Add0~17\)) # (!\ALUBuild|ALUBuild|ACC\(9) & ((!\ALUBuild|ALUBuild|Add0~17\) # 
-- (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|ACC\(9),
	datab => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~17\,
	combout => \ALUBuild|ALUBuild|Add0~18_combout\,
	cout => \ALUBuild|ALUBuild|Add0~19\);

-- Location: LCCOMB_X34_Y22_N18
\ALUBuild|ALUBuild|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux6~3_combout\ = (\ALUBuild|ALUBuild|ACC[15]~1_combout\ & ((\ALUBuild|ALUBuild|Mux6~2_combout\ & (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT9\)) # (!\ALUBuild|ALUBuild|Mux6~2_combout\ & 
-- ((\ALUBuild|ALUBuild|Add0~18_combout\))))) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\ & (((\ALUBuild|ALUBuild|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT9\,
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => \ALUBuild|ALUBuild|Mux6~2_combout\,
	datad => \ALUBuild|ALUBuild|Add0~18_combout\,
	combout => \ALUBuild|ALUBuild|Mux6~3_combout\);

-- Location: LCCOMB_X34_Y22_N26
\ALUBuild|ALUBuild|Mux6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux6~4_combout\ = (\ALUBuild|ALUBuild|Mux6~3_combout\ & ((!OPClast(1)) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Mux6~3_combout\,
	combout => \ALUBuild|ALUBuild|Mux6~4_combout\);

-- Location: LCFF_X34_Y22_N27
\ALUBuild|ALUBuild|RES[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux6~4_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(9));

-- Location: LCCOMB_X34_Y22_N16
\ALUBuild|tester|HI[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|HI[1]~1_combout\ = (\ALUBuild|ALUBuild|RES\(9) & ((!OPClast(2)) # (!OPClast(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => OPClast(3),
	datac => OPClast(2),
	datad => \ALUBuild|ALUBuild|RES\(9),
	combout => \ALUBuild|tester|HI[1]~1_combout\);

-- Location: LCFF_X34_Y22_N17
\RESlast[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|HI[1]~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(9));

-- Location: LCCOMB_X31_Y22_N4
\ALUBuild|ALUBuild|Mux21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux21~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Add0~20_combout\,
	combout => \ALUBuild|ALUBuild|Mux21~0_combout\);

-- Location: LCFF_X31_Y22_N5
\ALUBuild|ALUBuild|ACC[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux21~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(10));

-- Location: LCCOMB_X32_Y22_N20
\ALUBuild|ALUBuild|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~20_combout\ = ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT10\ $ (\ALUBuild|ALUBuild|ACC\(10) $ (!\ALUBuild|ALUBuild|Add0~19\)))) # (GND)
-- \ALUBuild|ALUBuild|Add0~21\ = CARRY((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT10\ & ((\ALUBuild|ALUBuild|ACC\(10)) # (!\ALUBuild|ALUBuild|Add0~19\))) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT10\ & 
-- (\ALUBuild|ALUBuild|ACC\(10) & !\ALUBuild|ALUBuild|Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \ALUBuild|ALUBuild|ACC\(10),
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~19\,
	combout => \ALUBuild|ALUBuild|Add0~20_combout\,
	cout => \ALUBuild|ALUBuild|Add0~21\);

-- Location: LCCOMB_X34_Y22_N12
\ALUBuild|ALUBuild|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux5~0_combout\ = (\ALUBuild|ALUBuild|ACC[15]~1_combout\ & ((\ALUBuild|ALUBuild|Mux6~2_combout\ & (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT10\)) # (!\ALUBuild|ALUBuild|Mux6~2_combout\ & 
-- ((\ALUBuild|ALUBuild|Add0~20_combout\))))) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\ & (((\ALUBuild|ALUBuild|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT10\,
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => \ALUBuild|ALUBuild|Mux6~2_combout\,
	datad => \ALUBuild|ALUBuild|Add0~20_combout\,
	combout => \ALUBuild|ALUBuild|Mux5~0_combout\);

-- Location: LCCOMB_X34_Y22_N0
\ALUBuild|ALUBuild|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux5~1_combout\ = (\ALUBuild|ALUBuild|Mux5~0_combout\ & ((!OPClast(1)) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Mux5~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux5~1_combout\);

-- Location: LCFF_X34_Y22_N1
\ALUBuild|ALUBuild|RES[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux5~1_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(10));

-- Location: LCCOMB_X34_Y23_N18
\ALUBuild|tester|HI[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|HI[2]~2_combout\ = (\ALUBuild|ALUBuild|RES\(10) & ((!OPClast(2)) # (!OPClast(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datac => OPClast(2),
	datad => \ALUBuild|ALUBuild|RES\(10),
	combout => \ALUBuild|tester|HI[2]~2_combout\);

-- Location: LCFF_X34_Y23_N19
\RESlast[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|HI[2]~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(10));

-- Location: LCCOMB_X31_Y22_N18
\ALUBuild|ALUBuild|Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux20~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Add0~22_combout\,
	combout => \ALUBuild|ALUBuild|Mux20~0_combout\);

-- Location: LCFF_X31_Y22_N19
\ALUBuild|ALUBuild|ACC[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux20~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(11));

-- Location: LCCOMB_X32_Y22_N22
\ALUBuild|ALUBuild|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~22_combout\ = (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\ALUBuild|ALUBuild|ACC\(11) & (\ALUBuild|ALUBuild|Add0~21\ & VCC)) # (!\ALUBuild|ALUBuild|ACC\(11) & (!\ALUBuild|ALUBuild|Add0~21\)))) # 
-- (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT11\ & ((\ALUBuild|ALUBuild|ACC\(11) & (!\ALUBuild|ALUBuild|Add0~21\)) # (!\ALUBuild|ALUBuild|ACC\(11) & ((\ALUBuild|ALUBuild|Add0~21\) # (GND)))))
-- \ALUBuild|ALUBuild|Add0~23\ = CARRY((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT11\ & (!\ALUBuild|ALUBuild|ACC\(11) & !\ALUBuild|ALUBuild|Add0~21\)) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT11\ & 
-- ((!\ALUBuild|ALUBuild|Add0~21\) # (!\ALUBuild|ALUBuild|ACC\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \ALUBuild|ALUBuild|ACC\(11),
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~21\,
	combout => \ALUBuild|ALUBuild|Add0~22_combout\,
	cout => \ALUBuild|ALUBuild|Add0~23\);

-- Location: LCCOMB_X34_Y22_N2
\ALUBuild|ALUBuild|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux4~0_combout\ = (\ALUBuild|ALUBuild|ACC[15]~1_combout\ & ((\ALUBuild|ALUBuild|Mux6~2_combout\ & (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT11\)) # (!\ALUBuild|ALUBuild|Mux6~2_combout\ & 
-- ((\ALUBuild|ALUBuild|Add0~22_combout\))))) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\ & (((\ALUBuild|ALUBuild|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT11\,
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => \ALUBuild|ALUBuild|Mux6~2_combout\,
	datad => \ALUBuild|ALUBuild|Add0~22_combout\,
	combout => \ALUBuild|ALUBuild|Mux4~0_combout\);

-- Location: LCCOMB_X34_Y22_N6
\ALUBuild|ALUBuild|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux4~1_combout\ = (\ALUBuild|ALUBuild|Mux4~0_combout\ & ((!OPClast(1)) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Mux4~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux4~1_combout\);

-- Location: LCFF_X34_Y22_N7
\ALUBuild|ALUBuild|RES[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux4~1_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(11));

-- Location: LCCOMB_X34_Y23_N24
\ALUBuild|tester|HI[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|HI[3]~3_combout\ = (\ALUBuild|ALUBuild|RES\(11) & ((!OPClast(2)) # (!OPClast(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datac => OPClast(2),
	datad => \ALUBuild|ALUBuild|RES\(11),
	combout => \ALUBuild|tester|HI[3]~3_combout\);

-- Location: LCFF_X34_Y23_N25
\RESlast[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|HI[3]~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(11));

-- Location: LCCOMB_X31_Y22_N28
\ALUBuild|ALUBuild|Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux19~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Add0~24_combout\,
	combout => \ALUBuild|ALUBuild|Mux19~0_combout\);

-- Location: LCFF_X31_Y22_N29
\ALUBuild|ALUBuild|ACC[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux19~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(12));

-- Location: LCCOMB_X32_Y22_N24
\ALUBuild|ALUBuild|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~24_combout\ = ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT12\ $ (\ALUBuild|ALUBuild|ACC\(12) $ (!\ALUBuild|ALUBuild|Add0~23\)))) # (GND)
-- \ALUBuild|ALUBuild|Add0~25\ = CARRY((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT12\ & ((\ALUBuild|ALUBuild|ACC\(12)) # (!\ALUBuild|ALUBuild|Add0~23\))) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT12\ & 
-- (\ALUBuild|ALUBuild|ACC\(12) & !\ALUBuild|ALUBuild|Add0~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \ALUBuild|ALUBuild|ACC\(12),
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~23\,
	combout => \ALUBuild|ALUBuild|Add0~24_combout\,
	cout => \ALUBuild|ALUBuild|Add0~25\);

-- Location: LCCOMB_X31_Y23_N30
\ALUBuild|ALUBuild|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux3~0_combout\ = (\ALUBuild|ALUBuild|ACC[15]~1_combout\ & ((\ALUBuild|ALUBuild|Mux6~2_combout\ & (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT12\)) # (!\ALUBuild|ALUBuild|Mux6~2_combout\ & 
-- ((\ALUBuild|ALUBuild|Add0~24_combout\))))) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\ & (((\ALUBuild|ALUBuild|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT12\,
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => \ALUBuild|ALUBuild|Add0~24_combout\,
	datad => \ALUBuild|ALUBuild|Mux6~2_combout\,
	combout => \ALUBuild|ALUBuild|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y23_N8
\ALUBuild|ALUBuild|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux3~1_combout\ = (\ALUBuild|ALUBuild|Mux3~0_combout\ & ((!OPClast(1)) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Mux3~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux3~1_combout\);

-- Location: LCFF_X31_Y23_N9
\ALUBuild|ALUBuild|RES[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux3~1_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(12));

-- Location: LCCOMB_X31_Y23_N4
\ALUBuild|tester|HI[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|HI[4]~4_combout\ = (\ALUBuild|ALUBuild|RES\(12) & ((!OPClast(3)) # (!OPClast(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => OPClast(2),
	datac => \ALUBuild|ALUBuild|RES\(12),
	datad => OPClast(3),
	combout => \ALUBuild|tester|HI[4]~4_combout\);

-- Location: LCFF_X31_Y23_N5
\RESlast[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|HI[4]~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(12));

-- Location: LCCOMB_X32_Y22_N26
\ALUBuild|ALUBuild|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~26_combout\ = (\ALUBuild|ALUBuild|ACC\(13) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT13\ & (\ALUBuild|ALUBuild|Add0~25\ & VCC)) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT13\ & 
-- (!\ALUBuild|ALUBuild|Add0~25\)))) # (!\ALUBuild|ALUBuild|ACC\(13) & ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT13\ & (!\ALUBuild|ALUBuild|Add0~25\)) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT13\ & 
-- ((\ALUBuild|ALUBuild|Add0~25\) # (GND)))))
-- \ALUBuild|ALUBuild|Add0~27\ = CARRY((\ALUBuild|ALUBuild|ACC\(13) & (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT13\ & !\ALUBuild|ALUBuild|Add0~25\)) # (!\ALUBuild|ALUBuild|ACC\(13) & ((!\ALUBuild|ALUBuild|Add0~25\) # 
-- (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|ACC\(13),
	datab => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~25\,
	combout => \ALUBuild|ALUBuild|Add0~26_combout\,
	cout => \ALUBuild|ALUBuild|Add0~27\);

-- Location: LCCOMB_X31_Y23_N28
\ALUBuild|ALUBuild|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux2~0_combout\ = (\ALUBuild|ALUBuild|ACC[15]~1_combout\ & ((\ALUBuild|ALUBuild|Mux6~2_combout\ & (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT13\)) # (!\ALUBuild|ALUBuild|Mux6~2_combout\ & 
-- ((\ALUBuild|ALUBuild|Add0~26_combout\))))) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\ & (((\ALUBuild|ALUBuild|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT13\,
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => \ALUBuild|ALUBuild|Mux6~2_combout\,
	datad => \ALUBuild|ALUBuild|Add0~26_combout\,
	combout => \ALUBuild|ALUBuild|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y23_N22
\ALUBuild|ALUBuild|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux2~1_combout\ = (\ALUBuild|ALUBuild|Mux2~0_combout\ & ((!OPClast(1)) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Mux2~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux2~1_combout\);

-- Location: LCFF_X31_Y23_N23
\ALUBuild|ALUBuild|RES[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux2~1_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(13));

-- Location: LCCOMB_X31_Y23_N6
\ALUBuild|tester|HI[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|HI[5]~5_combout\ = (\ALUBuild|ALUBuild|RES\(13) & ((!OPClast(2)) # (!OPClast(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => \ALUBuild|ALUBuild|RES\(13),
	datad => OPClast(2),
	combout => \ALUBuild|tester|HI[5]~5_combout\);

-- Location: LCFF_X31_Y23_N7
\RESlast[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|HI[5]~5_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(13));

-- Location: LCCOMB_X31_Y22_N16
\ALUBuild|ALUBuild|Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux17~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Add0~28_combout\,
	combout => \ALUBuild|ALUBuild|Mux17~0_combout\);

-- Location: LCFF_X31_Y22_N17
\ALUBuild|ALUBuild|ACC[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux17~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(14));

-- Location: LCCOMB_X32_Y22_N28
\ALUBuild|ALUBuild|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~28_combout\ = ((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT14\ $ (\ALUBuild|ALUBuild|ACC\(14) $ (!\ALUBuild|ALUBuild|Add0~27\)))) # (GND)
-- \ALUBuild|ALUBuild|Add0~29\ = CARRY((\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT14\ & ((\ALUBuild|ALUBuild|ACC\(14)) # (!\ALUBuild|ALUBuild|Add0~27\))) # (!\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT14\ & 
-- (\ALUBuild|ALUBuild|ACC\(14) & !\ALUBuild|ALUBuild|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \ALUBuild|ALUBuild|ACC\(14),
	datad => VCC,
	cin => \ALUBuild|ALUBuild|Add0~27\,
	combout => \ALUBuild|ALUBuild|Add0~28_combout\,
	cout => \ALUBuild|ALUBuild|Add0~29\);

-- Location: LCCOMB_X31_Y23_N10
\ALUBuild|ALUBuild|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux1~0_combout\ = (\ALUBuild|ALUBuild|ACC[15]~1_combout\ & ((\ALUBuild|ALUBuild|Mux6~2_combout\ & (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT14\)) # (!\ALUBuild|ALUBuild|Mux6~2_combout\ & 
-- ((\ALUBuild|ALUBuild|Add0~28_combout\))))) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\ & (((\ALUBuild|ALUBuild|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT14\,
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => \ALUBuild|ALUBuild|Add0~28_combout\,
	datad => \ALUBuild|ALUBuild|Mux6~2_combout\,
	combout => \ALUBuild|ALUBuild|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y23_N24
\ALUBuild|ALUBuild|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux1~1_combout\ = (\ALUBuild|ALUBuild|Mux1~0_combout\ & ((!OPClast(1)) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Mux1~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux1~1_combout\);

-- Location: LCFF_X31_Y23_N25
\ALUBuild|ALUBuild|RES[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux1~1_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(14));

-- Location: LCCOMB_X31_Y23_N12
\ALUBuild|tester|HI[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|HI[6]~6_combout\ = (\ALUBuild|ALUBuild|RES\(14) & ((!OPClast(3)) # (!OPClast(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => OPClast(2),
	datac => \ALUBuild|ALUBuild|RES\(14),
	datad => OPClast(3),
	combout => \ALUBuild|tester|HI[6]~6_combout\);

-- Location: LCFF_X31_Y23_N13
\RESlast[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|HI[6]~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(14));

-- Location: LCCOMB_X31_Y22_N26
\ALUBuild|ALUBuild|Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux16~0_combout\ = (!OPClast(1) & \ALUBuild|ALUBuild|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Add0~30_combout\,
	combout => \ALUBuild|ALUBuild|Mux16~0_combout\);

-- Location: LCFF_X31_Y22_N27
\ALUBuild|ALUBuild|ACC[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux16~0_combout\,
	ena => \ALUBuild|ALUBuild|ACC[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|ACC\(15));

-- Location: LCCOMB_X32_Y22_N30
\ALUBuild|ALUBuild|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Add0~30_combout\ = \ALUBuild|ALUBuild|ACC\(15) $ (\ALUBuild|ALUBuild|Add0~29\ $ (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ALUBuild|ACC\(15),
	datad => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT15\,
	cin => \ALUBuild|ALUBuild|Add0~29\,
	combout => \ALUBuild|ALUBuild|Add0~30_combout\);

-- Location: LCCOMB_X31_Y23_N0
\ALUBuild|ALUBuild|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux0~0_combout\ = (\ALUBuild|ALUBuild|ACC[15]~1_combout\ & ((\ALUBuild|ALUBuild|Mux6~2_combout\ & (\ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT15\)) # (!\ALUBuild|ALUBuild|Mux6~2_combout\ & 
-- ((\ALUBuild|ALUBuild|Add0~30_combout\))))) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\ & (((\ALUBuild|ALUBuild|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|Mult0|auto_generated|mac_out2~DATAOUT15\,
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => \ALUBuild|ALUBuild|Add0~30_combout\,
	datad => \ALUBuild|ALUBuild|Mux6~2_combout\,
	combout => \ALUBuild|ALUBuild|Mux0~0_combout\);

-- Location: LCCOMB_X31_Y23_N18
\ALUBuild|ALUBuild|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ALUBuild|Mux0~1_combout\ = (\ALUBuild|ALUBuild|Mux0~0_combout\ & ((!OPClast(1)) # (!\ALUBuild|ALUBuild|ACC[15]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ALUBuild|ALUBuild|ACC[15]~1_combout\,
	datac => OPClast(1),
	datad => \ALUBuild|ALUBuild|Mux0~0_combout\,
	combout => \ALUBuild|ALUBuild|Mux0~1_combout\);

-- Location: LCFF_X31_Y23_N19
\ALUBuild|ALUBuild|RES[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|ALUBuild|Mux0~1_combout\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ALUBuild|ALUBuild|RES\(15));

-- Location: LCCOMB_X31_Y23_N2
\ALUBuild|tester|HI[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|HI[7]~7_combout\ = (\ALUBuild|ALUBuild|RES\(15) & ((!OPClast(2)) # (!OPClast(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => \ALUBuild|ALUBuild|RES\(15),
	datad => OPClast(2),
	combout => \ALUBuild|tester|HI[7]~7_combout\);

-- Location: LCFF_X31_Y23_N3
\RESlast[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|HI[7]~7_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \ena~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => RESlast(15));

-- Location: LCCOMB_X31_Y23_N20
\ALUBuild|tester|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|LessThan0~0_combout\ = (\ALUBuild|ALUBuild|RES\(14)) # ((\ALUBuild|ALUBuild|RES\(15)) # ((\ALUBuild|ALUBuild|RES\(12)) # (\ALUBuild|ALUBuild|RES\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ALUBuild|RES\(14),
	datab => \ALUBuild|ALUBuild|RES\(15),
	datac => \ALUBuild|ALUBuild|RES\(12),
	datad => \ALUBuild|ALUBuild|RES\(13),
	combout => \ALUBuild|tester|LessThan0~0_combout\);

-- Location: LCCOMB_X35_Y23_N30
\ALUBuild|ShifterBuild|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|ShifterBuild|Mux0~2_combout\ = (\ALUBuild|ALUBuild|ACC[4]~0_combout\ & ((OPClast(4) & ((\ALUBuild|ShifterBuild|Mux0~2_combout\))) # (!OPClast(4) & (\ALUBuild|ShifterBuild|Mux0~1_combout\)))) # (!\ALUBuild|ALUBuild|ACC[4]~0_combout\ & 
-- (((\ALUBuild|ShifterBuild|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ShifterBuild|Mux0~1_combout\,
	datab => \ALUBuild|ShifterBuild|Mux0~2_combout\,
	datac => \ALUBuild|ALUBuild|ACC[4]~0_combout\,
	datad => OPClast(4),
	combout => \ALUBuild|ShifterBuild|Mux0~2_combout\);

-- Location: LCCOMB_X35_Y23_N8
\ALUBuild|tester|Status[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|Status[0]~0_combout\ = (\ALUBuild|ALUBuild|ACC[4]~0_combout\ & (((\ALUBuild|ShifterBuild|Mux0~2_combout\)))) # (!\ALUBuild|ALUBuild|ACC[4]~0_combout\ & ((\ALUBuild|tester|LessThan0~1_combout\) # ((\ALUBuild|tester|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|tester|LessThan0~1_combout\,
	datab => \ALUBuild|tester|LessThan0~0_combout\,
	datac => \ALUBuild|ALUBuild|ACC[4]~0_combout\,
	datad => \ALUBuild|ShifterBuild|Mux0~2_combout\,
	combout => \ALUBuild|tester|Status[0]~0_combout\);

-- Location: LCCOMB_X35_Y24_N6
\STATUSlast[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \STATUSlast[0]~0_combout\ = (!\rst~combout\ & \ena~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \ena~combout\,
	combout => \STATUSlast[0]~0_combout\);

-- Location: LCFF_X35_Y23_N9
\STATUSlast[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|Status[0]~0_combout\,
	ena => \STATUSlast[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => STATUSlast(0));

-- Location: LCCOMB_X36_Y24_N26
\ALUBuild|tester|Status[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|Status[1]~4_combout\ = (!\ALUBuild|ALUBuild|RES\(7) & (!\ALUBuild|ALUBuild|RES\(6) & ((!OPClast(2)) # (!OPClast(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => OPClast(3),
	datab => \ALUBuild|ALUBuild|RES\(7),
	datac => OPClast(2),
	datad => \ALUBuild|ALUBuild|RES\(6),
	combout => \ALUBuild|tester|Status[1]~4_combout\);

-- Location: LCCOMB_X36_Y24_N24
\ALUBuild|tester|Status[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|Status[1]~6_combout\ = (!\ALUBuild|ALUBuild|RES\(1) & !\ALUBuild|ALUBuild|RES\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ALUBuild|ALUBuild|RES\(1),
	datad => \ALUBuild|ALUBuild|RES\(0),
	combout => \ALUBuild|tester|Status[1]~6_combout\);

-- Location: LCCOMB_X35_Y24_N4
\ALUBuild|tester|Status[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|Status[1]~2_combout\ = (!\ALUBuild|ShifterBuild|Mux3~3_combout\ & (!\ALUBuild|ShifterBuild|Mux4~3_combout\ & (!\ALUBuild|ShifterBuild|Mux5~3_combout\ & !\ALUBuild|ShifterBuild|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|ShifterBuild|Mux3~3_combout\,
	datab => \ALUBuild|ShifterBuild|Mux4~3_combout\,
	datac => \ALUBuild|ShifterBuild|Mux5~3_combout\,
	datad => \ALUBuild|ShifterBuild|Mux6~3_combout\,
	combout => \ALUBuild|tester|Status[1]~2_combout\);

-- Location: LCCOMB_X36_Y24_N28
\ALUBuild|tester|Status[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|Status[1]~3_combout\ = (\ALUBuild|tester|Status[1]~1_combout\ & (!\ALUBuild|ShifterBuild|Mux1~3_combout\ & (\ALUBuild|tester|Status[1]~2_combout\ & !\ALUBuild|ShifterBuild|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|tester|Status[1]~1_combout\,
	datab => \ALUBuild|ShifterBuild|Mux1~3_combout\,
	datac => \ALUBuild|tester|Status[1]~2_combout\,
	datad => \ALUBuild|ShifterBuild|Mux2~3_combout\,
	combout => \ALUBuild|tester|Status[1]~3_combout\);

-- Location: LCCOMB_X36_Y24_N0
\ALUBuild|tester|Status[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \ALUBuild|tester|Status[1]~7_combout\ = (\ALUBuild|tester|Status[1]~3_combout\) # ((\ALUBuild|tester|Status[1]~5_combout\ & (\ALUBuild|tester|Status[1]~4_combout\ & \ALUBuild|tester|Status[1]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUBuild|tester|Status[1]~5_combout\,
	datab => \ALUBuild|tester|Status[1]~4_combout\,
	datac => \ALUBuild|tester|Status[1]~6_combout\,
	datad => \ALUBuild|tester|Status[1]~3_combout\,
	combout => \ALUBuild|tester|Status[1]~7_combout\);

-- Location: LCFF_X36_Y24_N1
\STATUSlast[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \ALUBuild|tester|Status[1]~7_combout\,
	ena => \STATUSlast[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => STATUSlast(1));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(0));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(1));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(2));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(3));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(4));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(5));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(6));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(7));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(8));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(9));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(10));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(11));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(12));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(13));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(14));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\RES[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => RESlast(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_RES(15));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\STATUS[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => STATUSlast(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_STATUS(0));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\STATUS[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => STATUSlast(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_STATUS(1));
END structure;


