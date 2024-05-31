-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "04/25/2023 21:14:48"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	P3_top IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	PC_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	INSTR_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	Reg1Data_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	Reg2Data_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	WriteData_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	DMEM_ADDR_OUTPUT : BUFFER std_logic_vector(7 DOWNTO 0);
	DMEM_Write_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	DMEM_Read_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	ALU_OP_OUTPUT : BUFFER std_logic_vector(1 DOWNTO 0);
	ALU_RESULT_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	WR_EN_OUTPUT : BUFFER std_logic;
	BRANCH_OUTPUT : BUFFER std_logic;
	BRANCH_TAKEN_OUTPUT : BUFFER std_logic;
	SL2_OUTPUT : BUFFER std_logic_vector(31 DOWNTO 0);
	ALU_SRC_OUTPUT : BUFFER std_logic;
	RegWrite_OUTPUT : BUFFER std_logic;
	MemWrite_OUTPUT : BUFFER std_logic;
	WriteRegDst_OUTPUT : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END P3_top;

-- Design Ports Information
-- RST	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[2]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[3]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[4]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[5]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[6]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[7]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[8]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[9]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[10]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[11]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[12]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[13]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[14]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[15]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[16]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[17]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[18]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[19]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[20]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[21]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[22]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[23]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[24]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[25]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[26]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[27]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[28]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[29]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[30]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUTPUT[31]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[0]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[1]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[2]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[3]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[4]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[5]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[6]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[7]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[8]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[9]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[10]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[11]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[12]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[13]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[14]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[15]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[16]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[17]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[18]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[19]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[20]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[21]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[22]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[23]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[24]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[25]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[26]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[27]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[28]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[29]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[30]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTR_OUTPUT[31]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[0]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[3]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[4]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[5]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[6]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[7]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[8]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[9]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[10]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[11]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[12]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[13]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[14]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[15]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[16]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[17]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[18]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[19]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[20]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[21]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[22]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[23]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[24]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[25]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[26]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[27]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[28]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[29]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[30]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg1Data_OUTPUT[31]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[1]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[3]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[4]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[5]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[6]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[7]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[8]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[9]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[10]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[11]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[12]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[13]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[14]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[15]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[16]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[17]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[18]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[19]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[20]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[21]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[22]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[23]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[24]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[25]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[26]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[27]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[28]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[29]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[30]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reg2Data_OUTPUT[31]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[0]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[2]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[4]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[5]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[6]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[8]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[9]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[10]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[11]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[12]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[13]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[14]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[15]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[16]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[17]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[18]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[19]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[20]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[21]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[22]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[23]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[24]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[25]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[26]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[27]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[28]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[29]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[30]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteData_OUTPUT[31]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_ADDR_OUTPUT[0]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_ADDR_OUTPUT[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_ADDR_OUTPUT[2]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_ADDR_OUTPUT[3]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_ADDR_OUTPUT[4]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_ADDR_OUTPUT[5]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_ADDR_OUTPUT[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_ADDR_OUTPUT[7]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[0]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[2]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[3]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[4]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[5]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[7]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[8]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[9]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[10]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[11]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[12]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[13]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[14]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[15]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[16]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[17]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[18]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[19]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[20]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[21]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[22]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[23]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[24]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[25]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[26]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[27]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[28]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[29]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[30]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Write_OUTPUT[31]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[2]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[4]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[7]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[8]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[9]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[10]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[11]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[12]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[14]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[15]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[16]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[17]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[18]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[19]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[20]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[21]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[22]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[23]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[24]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[25]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[26]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[27]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[28]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[29]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[30]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DMEM_Read_OUTPUT[31]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OP_OUTPUT[0]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_OP_OUTPUT[1]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[4]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[5]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[6]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[7]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[8]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[9]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[10]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[11]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[12]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[13]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[14]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[15]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[16]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[17]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[18]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[19]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[20]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[21]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[22]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[23]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[24]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[25]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[26]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[27]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[28]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[29]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[30]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_RESULT_OUTPUT[31]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_EN_OUTPUT	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRANCH_OUTPUT	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BRANCH_TAKEN_OUTPUT	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[2]	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[3]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[4]	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[5]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[6]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[7]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[8]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[9]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[10]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[11]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[12]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[13]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[14]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[15]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[16]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[17]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[18]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[19]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[20]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[21]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[22]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[23]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[24]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[25]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[26]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[27]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[28]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[29]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[30]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SL2_OUTPUT[31]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ALU_SRC_OUTPUT	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RegWrite_OUTPUT	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MemWrite_OUTPUT	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteRegDst_OUTPUT[0]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteRegDst_OUTPUT[1]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteRegDst_OUTPUT[2]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteRegDst_OUTPUT[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WriteRegDst_OUTPUT[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF P3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_PC_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_INSTR_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Reg1Data_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_Reg2Data_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_WriteData_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DMEM_ADDR_OUTPUT : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_DMEM_Write_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_DMEM_Read_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALU_OP_OUTPUT : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_ALU_RESULT_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_WR_EN_OUTPUT : std_logic;
SIGNAL ww_BRANCH_OUTPUT : std_logic;
SIGNAL ww_BRANCH_TAKEN_OUTPUT : std_logic;
SIGNAL ww_SL2_OUTPUT : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ALU_SRC_OUTPUT : std_logic;
SIGNAL ww_RegWrite_OUTPUT : std_logic;
SIGNAL ww_MemWrite_OUTPUT : std_logic;
SIGNAL ww_WriteRegDst_OUTPUT : std_logic_vector(4 DOWNTO 0);
SIGNAL \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \PC_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[8]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[9]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[10]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[11]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[12]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[13]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[14]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[15]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[16]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[17]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[18]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[19]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[20]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[21]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[22]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[23]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[24]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[25]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[26]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[27]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[28]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[29]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[30]~output_o\ : std_logic;
SIGNAL \PC_OUTPUT[31]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[8]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[9]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[10]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[11]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[12]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[13]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[14]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[15]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[16]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[17]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[18]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[19]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[20]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[21]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[22]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[23]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[24]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[25]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[26]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[27]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[28]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[29]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[30]~output_o\ : std_logic;
SIGNAL \INSTR_OUTPUT[31]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[8]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[9]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[10]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[11]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[12]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[13]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[14]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[15]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[16]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[17]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[18]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[19]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[20]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[21]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[22]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[23]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[24]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[25]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[26]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[27]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[28]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[29]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[30]~output_o\ : std_logic;
SIGNAL \Reg1Data_OUTPUT[31]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[8]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[9]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[10]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[11]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[12]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[13]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[14]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[15]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[16]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[17]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[18]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[19]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[20]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[21]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[22]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[23]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[24]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[25]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[26]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[27]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[28]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[29]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[30]~output_o\ : std_logic;
SIGNAL \Reg2Data_OUTPUT[31]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[8]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[9]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[10]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[11]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[12]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[13]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[14]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[15]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[16]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[17]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[18]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[19]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[20]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[21]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[22]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[23]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[24]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[25]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[26]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[27]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[28]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[29]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[30]~output_o\ : std_logic;
SIGNAL \WriteData_OUTPUT[31]~output_o\ : std_logic;
SIGNAL \DMEM_ADDR_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \DMEM_ADDR_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \DMEM_ADDR_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \DMEM_ADDR_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \DMEM_ADDR_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \DMEM_ADDR_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \DMEM_ADDR_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \DMEM_ADDR_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[8]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[9]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[10]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[11]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[12]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[13]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[14]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[15]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[16]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[17]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[18]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[19]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[20]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[21]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[22]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[23]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[24]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[25]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[26]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[27]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[28]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[29]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[30]~output_o\ : std_logic;
SIGNAL \DMEM_Write_OUTPUT[31]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[8]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[9]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[10]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[11]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[12]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[13]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[14]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[15]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[16]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[17]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[18]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[19]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[20]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[21]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[22]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[23]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[24]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[25]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[26]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[27]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[28]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[29]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[30]~output_o\ : std_logic;
SIGNAL \DMEM_Read_OUTPUT[31]~output_o\ : std_logic;
SIGNAL \ALU_OP_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \ALU_OP_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[8]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[9]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[10]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[11]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[12]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[13]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[14]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[15]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[16]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[17]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[18]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[19]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[20]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[21]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[22]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[23]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[24]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[25]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[26]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[27]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[28]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[29]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[30]~output_o\ : std_logic;
SIGNAL \ALU_RESULT_OUTPUT[31]~output_o\ : std_logic;
SIGNAL \WR_EN_OUTPUT~output_o\ : std_logic;
SIGNAL \BRANCH_OUTPUT~output_o\ : std_logic;
SIGNAL \BRANCH_TAKEN_OUTPUT~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[5]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[6]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[7]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[8]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[9]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[10]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[11]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[12]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[13]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[14]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[15]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[16]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[17]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[18]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[19]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[20]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[21]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[22]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[23]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[24]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[25]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[26]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[27]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[28]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[29]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[30]~output_o\ : std_logic;
SIGNAL \SL2_OUTPUT[31]~output_o\ : std_logic;
SIGNAL \ALU_SRC_OUTPUT~output_o\ : std_logic;
SIGNAL \RegWrite_OUTPUT~output_o\ : std_logic;
SIGNAL \MemWrite_OUTPUT~output_o\ : std_logic;
SIGNAL \WriteRegDst_OUTPUT[0]~output_o\ : std_logic;
SIGNAL \WriteRegDst_OUTPUT[1]~output_o\ : std_logic;
SIGNAL \WriteRegDst_OUTPUT[2]~output_o\ : std_logic;
SIGNAL \WriteRegDst_OUTPUT[3]~output_o\ : std_logic;
SIGNAL \WriteRegDst_OUTPUT[4]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[2]~30_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[2]~31\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[3]~32_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[3]~33\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[4]~34_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[4]~35\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[5]~36_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[5]~37\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[6]~38_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[6]~39\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[7]~40_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[7]~41\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[8]~42_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[8]~43\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[9]~44_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[9]~45\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[10]~46_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[10]~47\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[11]~48_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[11]~49\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[12]~50_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[12]~51\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[13]~52_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[13]~53\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[14]~54_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[14]~55\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[15]~56_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[15]~57\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[16]~58_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[16]~59\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[17]~60_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[17]~61\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[18]~62_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[18]~63\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[19]~64_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[19]~65\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[20]~66_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[20]~67\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[21]~68_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[21]~69\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[22]~70_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[22]~71\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[23]~72_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[23]~73\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[24]~74_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[24]~75\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[25]~76_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[25]~77\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[26]~78_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[26]~79\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[27]~80_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[27]~81\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[28]~82_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[28]~83\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[29]~84_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[29]~85\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[30]~86_combout\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[30]~87\ : std_logic;
SIGNAL \DUT_PC|PC_OUT[31]~88_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \DUT_DMEM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DUT_IMEM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \DUT_PC|PC_OUT\ : std_logic_vector(31 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
PC_OUTPUT <= ww_PC_OUTPUT;
INSTR_OUTPUT <= ww_INSTR_OUTPUT;
Reg1Data_OUTPUT <= ww_Reg1Data_OUTPUT;
Reg2Data_OUTPUT <= ww_Reg2Data_OUTPUT;
WriteData_OUTPUT <= ww_WriteData_OUTPUT;
DMEM_ADDR_OUTPUT <= ww_DMEM_ADDR_OUTPUT;
DMEM_Write_OUTPUT <= ww_DMEM_Write_OUTPUT;
DMEM_Read_OUTPUT <= ww_DMEM_Read_OUTPUT;
ALU_OP_OUTPUT <= ww_ALU_OP_OUTPUT;
ALU_RESULT_OUTPUT <= ww_ALU_RESULT_OUTPUT;
WR_EN_OUTPUT <= ww_WR_EN_OUTPUT;
BRANCH_OUTPUT <= ww_BRANCH_OUTPUT;
BRANCH_TAKEN_OUTPUT <= ww_BRANCH_TAKEN_OUTPUT;
SL2_OUTPUT <= ww_SL2_OUTPUT;
ALU_SRC_OUTPUT <= ww_ALU_SRC_OUTPUT;
RegWrite_OUTPUT <= ww_RegWrite_OUTPUT;
MemWrite_OUTPUT <= ww_MemWrite_OUTPUT;
WriteRegDst_OUTPUT <= ww_WriteRegDst_OUTPUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\DUT_PC|PC_OUT\(7) & \DUT_PC|PC_OUT\(6) & \DUT_PC|PC_OUT\(5) & \DUT_PC|PC_OUT\(4) & \DUT_PC|PC_OUT\(3) & \DUT_PC|PC_OUT\(2) & \~GND~combout\ & \~GND~combout\);

\DUT_IMEM|altsyncram_component|auto_generated|q_a\(0) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(1) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(2) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(3) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(4) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(5) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(6) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(7) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(8) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(9) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(10) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(11) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(12) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(13) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\DUT_PC|PC_OUT\(7) & \DUT_PC|PC_OUT\(6) & \DUT_PC|PC_OUT\(5) & \DUT_PC|PC_OUT\(4) & \DUT_PC|PC_OUT\(3) & \DUT_PC|PC_OUT\(2) & \~GND~combout\ & \~GND~combout\);

\DUT_IMEM|altsyncram_component|auto_generated|q_a\(14) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(15) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(16) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(17) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(18) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(19) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(20) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(21) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(22) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(23) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(24) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(25) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(26) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(27) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(28) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(29) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(30) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\DUT_IMEM|altsyncram_component|auto_generated|q_a\(31) <= \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\
& \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \~GND~combout\;

\DUT_DMEM|altsyncram_component|auto_generated|q_a\(0) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(1) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(2) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(3) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(4) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(5) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(6) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(7) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(8) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(9) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(10) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(11) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(12) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(13) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);

\DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & 
\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\(0) <= \~GND~combout\;

\DUT_DMEM|altsyncram_component|auto_generated|q_a\(14) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(15) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(1);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(16) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(2);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(17) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(3);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(18) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(4);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(19) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(5);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(20) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(6);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(21) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(7);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(22) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(8);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(23) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(9);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(24) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(10);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(25) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(11);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(26) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(12);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(27) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(13);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(28) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(14);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(29) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(15);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(30) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(16);
\DUT_DMEM|altsyncram_component|auto_generated|q_a\(31) <= \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(17);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X62_Y54_N30
\PC_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N30
\PC_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \PC_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\PC_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(2),
	devoe => ww_devoe,
	o => \PC_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\PC_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(3),
	devoe => ww_devoe,
	o => \PC_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\PC_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(4),
	devoe => ww_devoe,
	o => \PC_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\PC_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(5),
	devoe => ww_devoe,
	o => \PC_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\PC_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(6),
	devoe => ww_devoe,
	o => \PC_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\PC_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(7),
	devoe => ww_devoe,
	o => \PC_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\PC_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(8),
	devoe => ww_devoe,
	o => \PC_OUTPUT[8]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\PC_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(9),
	devoe => ww_devoe,
	o => \PC_OUTPUT[9]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\PC_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(10),
	devoe => ww_devoe,
	o => \PC_OUTPUT[10]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\PC_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(11),
	devoe => ww_devoe,
	o => \PC_OUTPUT[11]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\PC_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(12),
	devoe => ww_devoe,
	o => \PC_OUTPUT[12]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\PC_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(13),
	devoe => ww_devoe,
	o => \PC_OUTPUT[13]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\PC_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(14),
	devoe => ww_devoe,
	o => \PC_OUTPUT[14]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\PC_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(15),
	devoe => ww_devoe,
	o => \PC_OUTPUT[15]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\PC_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(16),
	devoe => ww_devoe,
	o => \PC_OUTPUT[16]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\PC_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(17),
	devoe => ww_devoe,
	o => \PC_OUTPUT[17]~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\PC_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(18),
	devoe => ww_devoe,
	o => \PC_OUTPUT[18]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\PC_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(19),
	devoe => ww_devoe,
	o => \PC_OUTPUT[19]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\PC_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(20),
	devoe => ww_devoe,
	o => \PC_OUTPUT[20]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\PC_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(21),
	devoe => ww_devoe,
	o => \PC_OUTPUT[21]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\PC_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(22),
	devoe => ww_devoe,
	o => \PC_OUTPUT[22]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\PC_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(23),
	devoe => ww_devoe,
	o => \PC_OUTPUT[23]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\PC_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(24),
	devoe => ww_devoe,
	o => \PC_OUTPUT[24]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\PC_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(25),
	devoe => ww_devoe,
	o => \PC_OUTPUT[25]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\PC_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(26),
	devoe => ww_devoe,
	o => \PC_OUTPUT[26]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\PC_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(27),
	devoe => ww_devoe,
	o => \PC_OUTPUT[27]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\PC_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(28),
	devoe => ww_devoe,
	o => \PC_OUTPUT[28]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\PC_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(29),
	devoe => ww_devoe,
	o => \PC_OUTPUT[29]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\PC_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(30),
	devoe => ww_devoe,
	o => \PC_OUTPUT[30]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\PC_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_PC|PC_OUT\(31),
	devoe => ww_devoe,
	o => \PC_OUTPUT[31]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\INSTR_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\INSTR_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\INSTR_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\INSTR_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\INSTR_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\INSTR_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\INSTR_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X34_Y39_N9
\INSTR_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\INSTR_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[8]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\INSTR_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[9]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\INSTR_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[10]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\INSTR_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[11]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\INSTR_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[12]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\INSTR_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[13]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\INSTR_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[14]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\INSTR_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[15]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\INSTR_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[16]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\INSTR_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[17]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\INSTR_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[18]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\INSTR_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[19]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\INSTR_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[20]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\INSTR_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[21]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\INSTR_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[22]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\INSTR_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[23]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\INSTR_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[24]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\INSTR_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[25]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\INSTR_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[26]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\INSTR_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[27]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\INSTR_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[28]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\INSTR_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[29]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\INSTR_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[30]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\INSTR_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \INSTR_OUTPUT[31]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\Reg1Data_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\Reg1Data_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\Reg1Data_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\Reg1Data_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\Reg1Data_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\Reg1Data_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\Reg1Data_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\Reg1Data_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\Reg1Data_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[8]~output_o\);

-- Location: IOOBUF_X0_Y34_N2
\Reg1Data_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[9]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\Reg1Data_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[10]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Reg1Data_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[11]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\Reg1Data_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[12]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\Reg1Data_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[13]~output_o\);

-- Location: IOOBUF_X34_Y0_N30
\Reg1Data_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[14]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\Reg1Data_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[15]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\Reg1Data_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[16]~output_o\);

-- Location: IOOBUF_X51_Y0_N23
\Reg1Data_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[17]~output_o\);

-- Location: IOOBUF_X51_Y0_N16
\Reg1Data_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[18]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\Reg1Data_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[19]~output_o\);

-- Location: IOOBUF_X16_Y0_N30
\Reg1Data_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[20]~output_o\);

-- Location: IOOBUF_X29_Y39_N2
\Reg1Data_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[21]~output_o\);

-- Location: IOOBUF_X0_Y34_N23
\Reg1Data_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[22]~output_o\);

-- Location: IOOBUF_X40_Y0_N30
\Reg1Data_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[23]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\Reg1Data_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[24]~output_o\);

-- Location: IOOBUF_X0_Y3_N16
\Reg1Data_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[25]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\Reg1Data_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[26]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\Reg1Data_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[27]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\Reg1Data_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[28]~output_o\);

-- Location: IOOBUF_X0_Y15_N23
\Reg1Data_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[29]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\Reg1Data_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[30]~output_o\);

-- Location: IOOBUF_X36_Y0_N2
\Reg1Data_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg1Data_OUTPUT[31]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\Reg2Data_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\Reg2Data_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\Reg2Data_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\Reg2Data_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X78_Y3_N9
\Reg2Data_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\Reg2Data_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\Reg2Data_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N2
\Reg2Data_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X0_Y30_N16
\Reg2Data_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\Reg2Data_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[9]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\Reg2Data_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[10]~output_o\);

-- Location: IOOBUF_X0_Y16_N23
\Reg2Data_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[11]~output_o\);

-- Location: IOOBUF_X78_Y3_N23
\Reg2Data_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[12]~output_o\);

-- Location: IOOBUF_X78_Y20_N2
\Reg2Data_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[13]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\Reg2Data_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[14]~output_o\);

-- Location: IOOBUF_X49_Y0_N30
\Reg2Data_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[15]~output_o\);

-- Location: IOOBUF_X0_Y27_N9
\Reg2Data_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[16]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\Reg2Data_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[17]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\Reg2Data_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[18]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\Reg2Data_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[19]~output_o\);

-- Location: IOOBUF_X22_Y0_N16
\Reg2Data_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[20]~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\Reg2Data_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[21]~output_o\);

-- Location: IOOBUF_X0_Y30_N23
\Reg2Data_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[22]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\Reg2Data_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[23]~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\Reg2Data_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[24]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\Reg2Data_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[25]~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\Reg2Data_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[26]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\Reg2Data_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[27]~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\Reg2Data_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[28]~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\Reg2Data_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[29]~output_o\);

-- Location: IOOBUF_X0_Y3_N9
\Reg2Data_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[30]~output_o\);

-- Location: IOOBUF_X22_Y0_N23
\Reg2Data_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Reg2Data_OUTPUT[31]~output_o\);

-- Location: IOOBUF_X0_Y29_N2
\WriteData_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\WriteData_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X0_Y15_N2
\WriteData_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\WriteData_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\WriteData_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\WriteData_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\WriteData_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\WriteData_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X0_Y36_N9
\WriteData_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[8]~output_o\);

-- Location: IOOBUF_X24_Y0_N16
\WriteData_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[9]~output_o\);

-- Location: IOOBUF_X26_Y0_N9
\WriteData_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[10]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\WriteData_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[11]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\WriteData_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[12]~output_o\);

-- Location: IOOBUF_X34_Y39_N23
\WriteData_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[13]~output_o\);

-- Location: IOOBUF_X38_Y0_N23
\WriteData_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[14]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\WriteData_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[15]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\WriteData_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[16]~output_o\);

-- Location: IOOBUF_X78_Y15_N9
\WriteData_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[17]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\WriteData_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[18]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\WriteData_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[19]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\WriteData_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[20]~output_o\);

-- Location: IOOBUF_X0_Y35_N9
\WriteData_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[21]~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\WriteData_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[22]~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\WriteData_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[23]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\WriteData_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[24]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\WriteData_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[25]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\WriteData_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[26]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\WriteData_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[27]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\WriteData_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[28]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\WriteData_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[29]~output_o\);

-- Location: IOOBUF_X58_Y0_N16
\WriteData_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[30]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\WriteData_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteData_OUTPUT[31]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\DMEM_ADDR_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_ADDR_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\DMEM_ADDR_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_ADDR_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\DMEM_ADDR_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_ADDR_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\DMEM_ADDR_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_ADDR_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\DMEM_ADDR_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_ADDR_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\DMEM_ADDR_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_ADDR_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\DMEM_ADDR_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_ADDR_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X0_Y18_N9
\DMEM_ADDR_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_ADDR_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\DMEM_Write_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\DMEM_Write_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\DMEM_Write_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\DMEM_Write_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\DMEM_Write_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\DMEM_Write_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X29_Y0_N30
\DMEM_Write_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\DMEM_Write_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\DMEM_Write_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[8]~output_o\);

-- Location: IOOBUF_X34_Y39_N16
\DMEM_Write_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[9]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\DMEM_Write_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[10]~output_o\);

-- Location: IOOBUF_X31_Y0_N30
\DMEM_Write_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[11]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\DMEM_Write_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[12]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\DMEM_Write_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\DMEM_Write_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[14]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\DMEM_Write_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[15]~output_o\);

-- Location: IOOBUF_X31_Y0_N23
\DMEM_Write_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[16]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\DMEM_Write_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[17]~output_o\);

-- Location: IOOBUF_X58_Y0_N2
\DMEM_Write_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[18]~output_o\);

-- Location: IOOBUF_X38_Y0_N30
\DMEM_Write_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[19]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\DMEM_Write_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[20]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\DMEM_Write_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[21]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\DMEM_Write_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[22]~output_o\);

-- Location: IOOBUF_X0_Y36_N23
\DMEM_Write_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[23]~output_o\);

-- Location: IOOBUF_X0_Y35_N16
\DMEM_Write_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[24]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\DMEM_Write_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[25]~output_o\);

-- Location: IOOBUF_X40_Y0_N2
\DMEM_Write_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[26]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\DMEM_Write_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[27]~output_o\);

-- Location: IOOBUF_X0_Y35_N23
\DMEM_Write_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[28]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\DMEM_Write_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[29]~output_o\);

-- Location: IOOBUF_X0_Y34_N16
\DMEM_Write_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[30]~output_o\);

-- Location: IOOBUF_X0_Y15_N16
\DMEM_Write_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \DMEM_Write_OUTPUT[31]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\DMEM_Read_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\DMEM_Read_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\DMEM_Read_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\DMEM_Read_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\DMEM_Read_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\DMEM_Read_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\DMEM_Read_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\DMEM_Read_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\DMEM_Read_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[8]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\DMEM_Read_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[9]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\DMEM_Read_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[10]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\DMEM_Read_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[11]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\DMEM_Read_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[12]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\DMEM_Read_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[13]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\DMEM_Read_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[14]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\DMEM_Read_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[15]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\DMEM_Read_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(16),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[16]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\DMEM_Read_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(17),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[17]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\DMEM_Read_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(18),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[18]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\DMEM_Read_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(19),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[19]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\DMEM_Read_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(20),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[20]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\DMEM_Read_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(21),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[21]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\DMEM_Read_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(22),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[22]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\DMEM_Read_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(23),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[23]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\DMEM_Read_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(24),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[24]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\DMEM_Read_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(25),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[25]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\DMEM_Read_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(26),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[26]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\DMEM_Read_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(27),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[27]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\DMEM_Read_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(28),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[28]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\DMEM_Read_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(29),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[29]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\DMEM_Read_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[30]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\DMEM_Read_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_DMEM|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \DMEM_Read_OUTPUT[31]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\ALU_OP_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(30),
	devoe => ww_devoe,
	o => \ALU_OP_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\ALU_OP_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(31),
	devoe => ww_devoe,
	o => \ALU_OP_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\ALU_RESULT_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\ALU_RESULT_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\ALU_RESULT_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\ALU_RESULT_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\ALU_RESULT_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X26_Y39_N30
\ALU_RESULT_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\ALU_RESULT_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X58_Y0_N9
\ALU_RESULT_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\ALU_RESULT_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[8]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\ALU_RESULT_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[9]~output_o\);

-- Location: IOOBUF_X58_Y0_N23
\ALU_RESULT_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[10]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\ALU_RESULT_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[11]~output_o\);

-- Location: IOOBUF_X0_Y16_N2
\ALU_RESULT_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[12]~output_o\);

-- Location: IOOBUF_X51_Y0_N2
\ALU_RESULT_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[13]~output_o\);

-- Location: IOOBUF_X0_Y30_N2
\ALU_RESULT_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[14]~output_o\);

-- Location: IOOBUF_X78_Y3_N16
\ALU_RESULT_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[15]~output_o\);

-- Location: IOOBUF_X31_Y0_N2
\ALU_RESULT_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[16]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\ALU_RESULT_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[17]~output_o\);

-- Location: IOOBUF_X0_Y28_N2
\ALU_RESULT_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[18]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\ALU_RESULT_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[19]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\ALU_RESULT_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[20]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\ALU_RESULT_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[21]~output_o\);

-- Location: IOOBUF_X0_Y36_N2
\ALU_RESULT_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[22]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\ALU_RESULT_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[23]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\ALU_RESULT_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[24]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\ALU_RESULT_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[25]~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\ALU_RESULT_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[26]~output_o\);

-- Location: IOOBUF_X0_Y15_N9
\ALU_RESULT_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[27]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\ALU_RESULT_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[28]~output_o\);

-- Location: IOOBUF_X69_Y0_N16
\ALU_RESULT_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[29]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\ALU_RESULT_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[30]~output_o\);

-- Location: IOOBUF_X0_Y30_N9
\ALU_RESULT_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_RESULT_OUTPUT[31]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\WR_EN_OUTPUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WR_EN_OUTPUT~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\BRANCH_OUTPUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BRANCH_OUTPUT~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\BRANCH_TAKEN_OUTPUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BRANCH_TAKEN_OUTPUT~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\SL2_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SL2_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\SL2_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SL2_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\SL2_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\SL2_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X78_Y24_N2
\SL2_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[4]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\SL2_OUTPUT[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\SL2_OUTPUT[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\SL2_OUTPUT[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[7]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\SL2_OUTPUT[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[8]~output_o\);

-- Location: IOOBUF_X34_Y39_N2
\SL2_OUTPUT[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[9]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\SL2_OUTPUT[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[10]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\SL2_OUTPUT[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[11]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\SL2_OUTPUT[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[12]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\SL2_OUTPUT[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[13]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\SL2_OUTPUT[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[14]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\SL2_OUTPUT[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[15]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\SL2_OUTPUT[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[16]~output_o\);

-- Location: IOOBUF_X51_Y0_N9
\SL2_OUTPUT[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[17]~output_o\);

-- Location: IOOBUF_X56_Y0_N9
\SL2_OUTPUT[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[18]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\SL2_OUTPUT[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[19]~output_o\);

-- Location: IOOBUF_X54_Y0_N30
\SL2_OUTPUT[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[20]~output_o\);

-- Location: IOOBUF_X56_Y0_N23
\SL2_OUTPUT[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[21]~output_o\);

-- Location: IOOBUF_X60_Y0_N30
\SL2_OUTPUT[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[22]~output_o\);

-- Location: IOOBUF_X0_Y37_N16
\SL2_OUTPUT[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[23]~output_o\);

-- Location: IOOBUF_X0_Y37_N9
\SL2_OUTPUT[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[24]~output_o\);

-- Location: IOOBUF_X62_Y0_N30
\SL2_OUTPUT[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[25]~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\SL2_OUTPUT[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[26]~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\SL2_OUTPUT[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[27]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\SL2_OUTPUT[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[28]~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\SL2_OUTPUT[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[29]~output_o\);

-- Location: IOOBUF_X56_Y0_N16
\SL2_OUTPUT[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[30]~output_o\);

-- Location: IOOBUF_X0_Y37_N23
\SL2_OUTPUT[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT_IMEM|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => \SL2_OUTPUT[31]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\ALU_SRC_OUTPUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ALU_SRC_OUTPUT~output_o\);

-- Location: IOOBUF_X26_Y39_N9
\RegWrite_OUTPUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RegWrite_OUTPUT~output_o\);

-- Location: IOOBUF_X49_Y0_N23
\MemWrite_OUTPUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \MemWrite_OUTPUT~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\WriteRegDst_OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteRegDst_OUTPUT[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\WriteRegDst_OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteRegDst_OUTPUT[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\WriteRegDst_OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteRegDst_OUTPUT[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\WriteRegDst_OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteRegDst_OUTPUT[3]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\WriteRegDst_OUTPUT[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \WriteRegDst_OUTPUT[4]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X77_Y34_N2
\DUT_PC|PC_OUT[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[2]~30_combout\ = \DUT_PC|PC_OUT\(2) $ (VCC)
-- \DUT_PC|PC_OUT[2]~31\ = CARRY(\DUT_PC|PC_OUT\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(2),
	datad => VCC,
	combout => \DUT_PC|PC_OUT[2]~30_combout\,
	cout => \DUT_PC|PC_OUT[2]~31\);

-- Location: FF_X77_Y34_N3
\DUT_PC|PC_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[2]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(2));

-- Location: LCCOMB_X77_Y34_N4
\DUT_PC|PC_OUT[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[3]~32_combout\ = (\DUT_PC|PC_OUT\(3) & (!\DUT_PC|PC_OUT[2]~31\)) # (!\DUT_PC|PC_OUT\(3) & ((\DUT_PC|PC_OUT[2]~31\) # (GND)))
-- \DUT_PC|PC_OUT[3]~33\ = CARRY((!\DUT_PC|PC_OUT[2]~31\) # (!\DUT_PC|PC_OUT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(3),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[2]~31\,
	combout => \DUT_PC|PC_OUT[3]~32_combout\,
	cout => \DUT_PC|PC_OUT[3]~33\);

-- Location: FF_X77_Y34_N5
\DUT_PC|PC_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[3]~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(3));

-- Location: LCCOMB_X77_Y34_N6
\DUT_PC|PC_OUT[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[4]~34_combout\ = (\DUT_PC|PC_OUT\(4) & (\DUT_PC|PC_OUT[3]~33\ $ (GND))) # (!\DUT_PC|PC_OUT\(4) & (!\DUT_PC|PC_OUT[3]~33\ & VCC))
-- \DUT_PC|PC_OUT[4]~35\ = CARRY((\DUT_PC|PC_OUT\(4) & !\DUT_PC|PC_OUT[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_PC|PC_OUT\(4),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[3]~33\,
	combout => \DUT_PC|PC_OUT[4]~34_combout\,
	cout => \DUT_PC|PC_OUT[4]~35\);

-- Location: FF_X77_Y34_N7
\DUT_PC|PC_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[4]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(4));

-- Location: LCCOMB_X77_Y34_N8
\DUT_PC|PC_OUT[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[5]~36_combout\ = (\DUT_PC|PC_OUT\(5) & (!\DUT_PC|PC_OUT[4]~35\)) # (!\DUT_PC|PC_OUT\(5) & ((\DUT_PC|PC_OUT[4]~35\) # (GND)))
-- \DUT_PC|PC_OUT[5]~37\ = CARRY((!\DUT_PC|PC_OUT[4]~35\) # (!\DUT_PC|PC_OUT\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(5),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[4]~35\,
	combout => \DUT_PC|PC_OUT[5]~36_combout\,
	cout => \DUT_PC|PC_OUT[5]~37\);

-- Location: FF_X77_Y34_N9
\DUT_PC|PC_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[5]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(5));

-- Location: LCCOMB_X77_Y34_N10
\DUT_PC|PC_OUT[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[6]~38_combout\ = (\DUT_PC|PC_OUT\(6) & (\DUT_PC|PC_OUT[5]~37\ $ (GND))) # (!\DUT_PC|PC_OUT\(6) & (!\DUT_PC|PC_OUT[5]~37\ & VCC))
-- \DUT_PC|PC_OUT[6]~39\ = CARRY((\DUT_PC|PC_OUT\(6) & !\DUT_PC|PC_OUT[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_PC|PC_OUT\(6),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[5]~37\,
	combout => \DUT_PC|PC_OUT[6]~38_combout\,
	cout => \DUT_PC|PC_OUT[6]~39\);

-- Location: FF_X77_Y34_N11
\DUT_PC|PC_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[6]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(6));

-- Location: LCCOMB_X77_Y34_N12
\DUT_PC|PC_OUT[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[7]~40_combout\ = (\DUT_PC|PC_OUT\(7) & (!\DUT_PC|PC_OUT[6]~39\)) # (!\DUT_PC|PC_OUT\(7) & ((\DUT_PC|PC_OUT[6]~39\) # (GND)))
-- \DUT_PC|PC_OUT[7]~41\ = CARRY((!\DUT_PC|PC_OUT[6]~39\) # (!\DUT_PC|PC_OUT\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_PC|PC_OUT\(7),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[6]~39\,
	combout => \DUT_PC|PC_OUT[7]~40_combout\,
	cout => \DUT_PC|PC_OUT[7]~41\);

-- Location: FF_X77_Y34_N13
\DUT_PC|PC_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[7]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(7));

-- Location: LCCOMB_X77_Y34_N14
\DUT_PC|PC_OUT[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[8]~42_combout\ = (\DUT_PC|PC_OUT\(8) & (\DUT_PC|PC_OUT[7]~41\ $ (GND))) # (!\DUT_PC|PC_OUT\(8) & (!\DUT_PC|PC_OUT[7]~41\ & VCC))
-- \DUT_PC|PC_OUT[8]~43\ = CARRY((\DUT_PC|PC_OUT\(8) & !\DUT_PC|PC_OUT[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(8),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[7]~41\,
	combout => \DUT_PC|PC_OUT[8]~42_combout\,
	cout => \DUT_PC|PC_OUT[8]~43\);

-- Location: FF_X77_Y34_N15
\DUT_PC|PC_OUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[8]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(8));

-- Location: LCCOMB_X77_Y34_N16
\DUT_PC|PC_OUT[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[9]~44_combout\ = (\DUT_PC|PC_OUT\(9) & (!\DUT_PC|PC_OUT[8]~43\)) # (!\DUT_PC|PC_OUT\(9) & ((\DUT_PC|PC_OUT[8]~43\) # (GND)))
-- \DUT_PC|PC_OUT[9]~45\ = CARRY((!\DUT_PC|PC_OUT[8]~43\) # (!\DUT_PC|PC_OUT\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(9),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[8]~43\,
	combout => \DUT_PC|PC_OUT[9]~44_combout\,
	cout => \DUT_PC|PC_OUT[9]~45\);

-- Location: FF_X77_Y34_N17
\DUT_PC|PC_OUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[9]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(9));

-- Location: LCCOMB_X77_Y34_N18
\DUT_PC|PC_OUT[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[10]~46_combout\ = (\DUT_PC|PC_OUT\(10) & (\DUT_PC|PC_OUT[9]~45\ $ (GND))) # (!\DUT_PC|PC_OUT\(10) & (!\DUT_PC|PC_OUT[9]~45\ & VCC))
-- \DUT_PC|PC_OUT[10]~47\ = CARRY((\DUT_PC|PC_OUT\(10) & !\DUT_PC|PC_OUT[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(10),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[9]~45\,
	combout => \DUT_PC|PC_OUT[10]~46_combout\,
	cout => \DUT_PC|PC_OUT[10]~47\);

-- Location: FF_X77_Y34_N19
\DUT_PC|PC_OUT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[10]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(10));

-- Location: LCCOMB_X77_Y34_N20
\DUT_PC|PC_OUT[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[11]~48_combout\ = (\DUT_PC|PC_OUT\(11) & (!\DUT_PC|PC_OUT[10]~47\)) # (!\DUT_PC|PC_OUT\(11) & ((\DUT_PC|PC_OUT[10]~47\) # (GND)))
-- \DUT_PC|PC_OUT[11]~49\ = CARRY((!\DUT_PC|PC_OUT[10]~47\) # (!\DUT_PC|PC_OUT\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(11),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[10]~47\,
	combout => \DUT_PC|PC_OUT[11]~48_combout\,
	cout => \DUT_PC|PC_OUT[11]~49\);

-- Location: FF_X77_Y34_N21
\DUT_PC|PC_OUT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[11]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(11));

-- Location: LCCOMB_X77_Y34_N22
\DUT_PC|PC_OUT[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[12]~50_combout\ = (\DUT_PC|PC_OUT\(12) & (\DUT_PC|PC_OUT[11]~49\ $ (GND))) # (!\DUT_PC|PC_OUT\(12) & (!\DUT_PC|PC_OUT[11]~49\ & VCC))
-- \DUT_PC|PC_OUT[12]~51\ = CARRY((\DUT_PC|PC_OUT\(12) & !\DUT_PC|PC_OUT[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_PC|PC_OUT\(12),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[11]~49\,
	combout => \DUT_PC|PC_OUT[12]~50_combout\,
	cout => \DUT_PC|PC_OUT[12]~51\);

-- Location: FF_X77_Y34_N23
\DUT_PC|PC_OUT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[12]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(12));

-- Location: LCCOMB_X77_Y34_N24
\DUT_PC|PC_OUT[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[13]~52_combout\ = (\DUT_PC|PC_OUT\(13) & (!\DUT_PC|PC_OUT[12]~51\)) # (!\DUT_PC|PC_OUT\(13) & ((\DUT_PC|PC_OUT[12]~51\) # (GND)))
-- \DUT_PC|PC_OUT[13]~53\ = CARRY((!\DUT_PC|PC_OUT[12]~51\) # (!\DUT_PC|PC_OUT\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(13),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[12]~51\,
	combout => \DUT_PC|PC_OUT[13]~52_combout\,
	cout => \DUT_PC|PC_OUT[13]~53\);

-- Location: FF_X77_Y34_N25
\DUT_PC|PC_OUT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[13]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(13));

-- Location: LCCOMB_X77_Y34_N26
\DUT_PC|PC_OUT[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[14]~54_combout\ = (\DUT_PC|PC_OUT\(14) & (\DUT_PC|PC_OUT[13]~53\ $ (GND))) # (!\DUT_PC|PC_OUT\(14) & (!\DUT_PC|PC_OUT[13]~53\ & VCC))
-- \DUT_PC|PC_OUT[14]~55\ = CARRY((\DUT_PC|PC_OUT\(14) & !\DUT_PC|PC_OUT[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_PC|PC_OUT\(14),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[13]~53\,
	combout => \DUT_PC|PC_OUT[14]~54_combout\,
	cout => \DUT_PC|PC_OUT[14]~55\);

-- Location: FF_X77_Y34_N27
\DUT_PC|PC_OUT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[14]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(14));

-- Location: LCCOMB_X77_Y34_N28
\DUT_PC|PC_OUT[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[15]~56_combout\ = (\DUT_PC|PC_OUT\(15) & (!\DUT_PC|PC_OUT[14]~55\)) # (!\DUT_PC|PC_OUT\(15) & ((\DUT_PC|PC_OUT[14]~55\) # (GND)))
-- \DUT_PC|PC_OUT[15]~57\ = CARRY((!\DUT_PC|PC_OUT[14]~55\) # (!\DUT_PC|PC_OUT\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(15),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[14]~55\,
	combout => \DUT_PC|PC_OUT[15]~56_combout\,
	cout => \DUT_PC|PC_OUT[15]~57\);

-- Location: FF_X77_Y34_N29
\DUT_PC|PC_OUT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[15]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(15));

-- Location: LCCOMB_X77_Y34_N30
\DUT_PC|PC_OUT[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[16]~58_combout\ = (\DUT_PC|PC_OUT\(16) & (\DUT_PC|PC_OUT[15]~57\ $ (GND))) # (!\DUT_PC|PC_OUT\(16) & (!\DUT_PC|PC_OUT[15]~57\ & VCC))
-- \DUT_PC|PC_OUT[16]~59\ = CARRY((\DUT_PC|PC_OUT\(16) & !\DUT_PC|PC_OUT[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_PC|PC_OUT\(16),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[15]~57\,
	combout => \DUT_PC|PC_OUT[16]~58_combout\,
	cout => \DUT_PC|PC_OUT[16]~59\);

-- Location: FF_X77_Y34_N31
\DUT_PC|PC_OUT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[16]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(16));

-- Location: LCCOMB_X77_Y33_N0
\DUT_PC|PC_OUT[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[17]~60_combout\ = (\DUT_PC|PC_OUT\(17) & (!\DUT_PC|PC_OUT[16]~59\)) # (!\DUT_PC|PC_OUT\(17) & ((\DUT_PC|PC_OUT[16]~59\) # (GND)))
-- \DUT_PC|PC_OUT[17]~61\ = CARRY((!\DUT_PC|PC_OUT[16]~59\) # (!\DUT_PC|PC_OUT\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(17),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[16]~59\,
	combout => \DUT_PC|PC_OUT[17]~60_combout\,
	cout => \DUT_PC|PC_OUT[17]~61\);

-- Location: FF_X77_Y33_N1
\DUT_PC|PC_OUT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[17]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(17));

-- Location: LCCOMB_X77_Y33_N2
\DUT_PC|PC_OUT[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[18]~62_combout\ = (\DUT_PC|PC_OUT\(18) & (\DUT_PC|PC_OUT[17]~61\ $ (GND))) # (!\DUT_PC|PC_OUT\(18) & (!\DUT_PC|PC_OUT[17]~61\ & VCC))
-- \DUT_PC|PC_OUT[18]~63\ = CARRY((\DUT_PC|PC_OUT\(18) & !\DUT_PC|PC_OUT[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(18),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[17]~61\,
	combout => \DUT_PC|PC_OUT[18]~62_combout\,
	cout => \DUT_PC|PC_OUT[18]~63\);

-- Location: FF_X77_Y33_N3
\DUT_PC|PC_OUT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[18]~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(18));

-- Location: LCCOMB_X77_Y33_N4
\DUT_PC|PC_OUT[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[19]~64_combout\ = (\DUT_PC|PC_OUT\(19) & (!\DUT_PC|PC_OUT[18]~63\)) # (!\DUT_PC|PC_OUT\(19) & ((\DUT_PC|PC_OUT[18]~63\) # (GND)))
-- \DUT_PC|PC_OUT[19]~65\ = CARRY((!\DUT_PC|PC_OUT[18]~63\) # (!\DUT_PC|PC_OUT\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(19),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[18]~63\,
	combout => \DUT_PC|PC_OUT[19]~64_combout\,
	cout => \DUT_PC|PC_OUT[19]~65\);

-- Location: FF_X77_Y33_N5
\DUT_PC|PC_OUT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[19]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(19));

-- Location: LCCOMB_X77_Y33_N6
\DUT_PC|PC_OUT[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[20]~66_combout\ = (\DUT_PC|PC_OUT\(20) & (\DUT_PC|PC_OUT[19]~65\ $ (GND))) # (!\DUT_PC|PC_OUT\(20) & (!\DUT_PC|PC_OUT[19]~65\ & VCC))
-- \DUT_PC|PC_OUT[20]~67\ = CARRY((\DUT_PC|PC_OUT\(20) & !\DUT_PC|PC_OUT[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_PC|PC_OUT\(20),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[19]~65\,
	combout => \DUT_PC|PC_OUT[20]~66_combout\,
	cout => \DUT_PC|PC_OUT[20]~67\);

-- Location: FF_X77_Y33_N7
\DUT_PC|PC_OUT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[20]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(20));

-- Location: LCCOMB_X77_Y33_N8
\DUT_PC|PC_OUT[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[21]~68_combout\ = (\DUT_PC|PC_OUT\(21) & (!\DUT_PC|PC_OUT[20]~67\)) # (!\DUT_PC|PC_OUT\(21) & ((\DUT_PC|PC_OUT[20]~67\) # (GND)))
-- \DUT_PC|PC_OUT[21]~69\ = CARRY((!\DUT_PC|PC_OUT[20]~67\) # (!\DUT_PC|PC_OUT\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(21),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[20]~67\,
	combout => \DUT_PC|PC_OUT[21]~68_combout\,
	cout => \DUT_PC|PC_OUT[21]~69\);

-- Location: FF_X77_Y33_N9
\DUT_PC|PC_OUT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[21]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(21));

-- Location: LCCOMB_X77_Y33_N10
\DUT_PC|PC_OUT[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[22]~70_combout\ = (\DUT_PC|PC_OUT\(22) & (\DUT_PC|PC_OUT[21]~69\ $ (GND))) # (!\DUT_PC|PC_OUT\(22) & (!\DUT_PC|PC_OUT[21]~69\ & VCC))
-- \DUT_PC|PC_OUT[22]~71\ = CARRY((\DUT_PC|PC_OUT\(22) & !\DUT_PC|PC_OUT[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_PC|PC_OUT\(22),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[21]~69\,
	combout => \DUT_PC|PC_OUT[22]~70_combout\,
	cout => \DUT_PC|PC_OUT[22]~71\);

-- Location: FF_X77_Y33_N11
\DUT_PC|PC_OUT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[22]~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(22));

-- Location: LCCOMB_X77_Y33_N12
\DUT_PC|PC_OUT[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[23]~72_combout\ = (\DUT_PC|PC_OUT\(23) & (!\DUT_PC|PC_OUT[22]~71\)) # (!\DUT_PC|PC_OUT\(23) & ((\DUT_PC|PC_OUT[22]~71\) # (GND)))
-- \DUT_PC|PC_OUT[23]~73\ = CARRY((!\DUT_PC|PC_OUT[22]~71\) # (!\DUT_PC|PC_OUT\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_PC|PC_OUT\(23),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[22]~71\,
	combout => \DUT_PC|PC_OUT[23]~72_combout\,
	cout => \DUT_PC|PC_OUT[23]~73\);

-- Location: FF_X77_Y33_N13
\DUT_PC|PC_OUT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[23]~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(23));

-- Location: LCCOMB_X77_Y33_N14
\DUT_PC|PC_OUT[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[24]~74_combout\ = (\DUT_PC|PC_OUT\(24) & (\DUT_PC|PC_OUT[23]~73\ $ (GND))) # (!\DUT_PC|PC_OUT\(24) & (!\DUT_PC|PC_OUT[23]~73\ & VCC))
-- \DUT_PC|PC_OUT[24]~75\ = CARRY((\DUT_PC|PC_OUT\(24) & !\DUT_PC|PC_OUT[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(24),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[23]~73\,
	combout => \DUT_PC|PC_OUT[24]~74_combout\,
	cout => \DUT_PC|PC_OUT[24]~75\);

-- Location: FF_X77_Y33_N15
\DUT_PC|PC_OUT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[24]~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(24));

-- Location: LCCOMB_X77_Y33_N16
\DUT_PC|PC_OUT[25]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[25]~76_combout\ = (\DUT_PC|PC_OUT\(25) & (!\DUT_PC|PC_OUT[24]~75\)) # (!\DUT_PC|PC_OUT\(25) & ((\DUT_PC|PC_OUT[24]~75\) # (GND)))
-- \DUT_PC|PC_OUT[25]~77\ = CARRY((!\DUT_PC|PC_OUT[24]~75\) # (!\DUT_PC|PC_OUT\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(25),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[24]~75\,
	combout => \DUT_PC|PC_OUT[25]~76_combout\,
	cout => \DUT_PC|PC_OUT[25]~77\);

-- Location: FF_X77_Y33_N17
\DUT_PC|PC_OUT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[25]~76_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(25));

-- Location: LCCOMB_X77_Y33_N18
\DUT_PC|PC_OUT[26]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[26]~78_combout\ = (\DUT_PC|PC_OUT\(26) & (\DUT_PC|PC_OUT[25]~77\ $ (GND))) # (!\DUT_PC|PC_OUT\(26) & (!\DUT_PC|PC_OUT[25]~77\ & VCC))
-- \DUT_PC|PC_OUT[26]~79\ = CARRY((\DUT_PC|PC_OUT\(26) & !\DUT_PC|PC_OUT[25]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(26),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[25]~77\,
	combout => \DUT_PC|PC_OUT[26]~78_combout\,
	cout => \DUT_PC|PC_OUT[26]~79\);

-- Location: FF_X77_Y33_N19
\DUT_PC|PC_OUT[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[26]~78_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(26));

-- Location: LCCOMB_X77_Y33_N20
\DUT_PC|PC_OUT[27]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[27]~80_combout\ = (\DUT_PC|PC_OUT\(27) & (!\DUT_PC|PC_OUT[26]~79\)) # (!\DUT_PC|PC_OUT\(27) & ((\DUT_PC|PC_OUT[26]~79\) # (GND)))
-- \DUT_PC|PC_OUT[27]~81\ = CARRY((!\DUT_PC|PC_OUT[26]~79\) # (!\DUT_PC|PC_OUT\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(27),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[26]~79\,
	combout => \DUT_PC|PC_OUT[27]~80_combout\,
	cout => \DUT_PC|PC_OUT[27]~81\);

-- Location: FF_X77_Y33_N21
\DUT_PC|PC_OUT[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[27]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(27));

-- Location: LCCOMB_X77_Y33_N22
\DUT_PC|PC_OUT[28]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[28]~82_combout\ = (\DUT_PC|PC_OUT\(28) & (\DUT_PC|PC_OUT[27]~81\ $ (GND))) # (!\DUT_PC|PC_OUT\(28) & (!\DUT_PC|PC_OUT[27]~81\ & VCC))
-- \DUT_PC|PC_OUT[28]~83\ = CARRY((\DUT_PC|PC_OUT\(28) & !\DUT_PC|PC_OUT[27]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_PC|PC_OUT\(28),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[27]~81\,
	combout => \DUT_PC|PC_OUT[28]~82_combout\,
	cout => \DUT_PC|PC_OUT[28]~83\);

-- Location: FF_X77_Y33_N23
\DUT_PC|PC_OUT[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[28]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(28));

-- Location: LCCOMB_X77_Y33_N24
\DUT_PC|PC_OUT[29]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[29]~84_combout\ = (\DUT_PC|PC_OUT\(29) & (!\DUT_PC|PC_OUT[28]~83\)) # (!\DUT_PC|PC_OUT\(29) & ((\DUT_PC|PC_OUT[28]~83\) # (GND)))
-- \DUT_PC|PC_OUT[29]~85\ = CARRY((!\DUT_PC|PC_OUT[28]~83\) # (!\DUT_PC|PC_OUT\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DUT_PC|PC_OUT\(29),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[28]~83\,
	combout => \DUT_PC|PC_OUT[29]~84_combout\,
	cout => \DUT_PC|PC_OUT[29]~85\);

-- Location: FF_X77_Y33_N25
\DUT_PC|PC_OUT[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[29]~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(29));

-- Location: LCCOMB_X77_Y33_N26
\DUT_PC|PC_OUT[30]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[30]~86_combout\ = (\DUT_PC|PC_OUT\(30) & (\DUT_PC|PC_OUT[29]~85\ $ (GND))) # (!\DUT_PC|PC_OUT\(30) & (!\DUT_PC|PC_OUT[29]~85\ & VCC))
-- \DUT_PC|PC_OUT[30]~87\ = CARRY((\DUT_PC|PC_OUT\(30) & !\DUT_PC|PC_OUT[29]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT_PC|PC_OUT\(30),
	datad => VCC,
	cin => \DUT_PC|PC_OUT[29]~85\,
	combout => \DUT_PC|PC_OUT[30]~86_combout\,
	cout => \DUT_PC|PC_OUT[30]~87\);

-- Location: FF_X77_Y33_N27
\DUT_PC|PC_OUT[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[30]~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(30));

-- Location: LCCOMB_X77_Y33_N28
\DUT_PC|PC_OUT[31]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT_PC|PC_OUT[31]~88_combout\ = \DUT_PC|PC_OUT[30]~87\ $ (\DUT_PC|PC_OUT\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DUT_PC|PC_OUT\(31),
	cin => \DUT_PC|PC_OUT[30]~87\,
	combout => \DUT_PC|PC_OUT[31]~88_combout\);

-- Location: FF_X77_Y33_N29
\DUT_PC|PC_OUT[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \DUT_PC|PC_OUT[31]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT_PC|PC_OUT\(31));

-- Location: LCCOMB_X59_Y49_N24
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M9K_X73_Y41_N0
\DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000825000000000000000820000000000000000008000000000000000005000000000000000009000000000000000000000000000000000000000000000000000004000000000000000008",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "IMEM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "IMEM:DUT_IMEM|altsyncram:altsyncram_component|altsyncram_jvp3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X73_Y41_N0
\DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000004A90000000000000004A90000000000000235240000000000000044A800000000000000804400000000000000804C000000000000008030000000000000008828000000000000008024",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "IMEM.mif",
	init_file_layout => "port_a",
	logical_ram_name => "IMEM:DUT_IMEM|altsyncram:altsyncram_component|altsyncram_jvp3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DUT_IMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y53_N0
\DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMEM:DUT_DMEM|altsyncram:altsyncram_component|altsyncram_odn3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 1,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X53_Y53_N0
\DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "DMEM:DUT_DMEM|altsyncram:altsyncram_component|altsyncram_odn3:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 14,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 32,
	port_a_read_during_write_mode => "old_data",
	port_b_address_width => 1,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	portadatain => \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAIN_bus\,
	portaaddr => \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \DUT_DMEM|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: IOIBUF_X0_Y10_N22
\RST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_PC_OUTPUT(0) <= \PC_OUTPUT[0]~output_o\;

ww_PC_OUTPUT(1) <= \PC_OUTPUT[1]~output_o\;

ww_PC_OUTPUT(2) <= \PC_OUTPUT[2]~output_o\;

ww_PC_OUTPUT(3) <= \PC_OUTPUT[3]~output_o\;

ww_PC_OUTPUT(4) <= \PC_OUTPUT[4]~output_o\;

ww_PC_OUTPUT(5) <= \PC_OUTPUT[5]~output_o\;

ww_PC_OUTPUT(6) <= \PC_OUTPUT[6]~output_o\;

ww_PC_OUTPUT(7) <= \PC_OUTPUT[7]~output_o\;

ww_PC_OUTPUT(8) <= \PC_OUTPUT[8]~output_o\;

ww_PC_OUTPUT(9) <= \PC_OUTPUT[9]~output_o\;

ww_PC_OUTPUT(10) <= \PC_OUTPUT[10]~output_o\;

ww_PC_OUTPUT(11) <= \PC_OUTPUT[11]~output_o\;

ww_PC_OUTPUT(12) <= \PC_OUTPUT[12]~output_o\;

ww_PC_OUTPUT(13) <= \PC_OUTPUT[13]~output_o\;

ww_PC_OUTPUT(14) <= \PC_OUTPUT[14]~output_o\;

ww_PC_OUTPUT(15) <= \PC_OUTPUT[15]~output_o\;

ww_PC_OUTPUT(16) <= \PC_OUTPUT[16]~output_o\;

ww_PC_OUTPUT(17) <= \PC_OUTPUT[17]~output_o\;

ww_PC_OUTPUT(18) <= \PC_OUTPUT[18]~output_o\;

ww_PC_OUTPUT(19) <= \PC_OUTPUT[19]~output_o\;

ww_PC_OUTPUT(20) <= \PC_OUTPUT[20]~output_o\;

ww_PC_OUTPUT(21) <= \PC_OUTPUT[21]~output_o\;

ww_PC_OUTPUT(22) <= \PC_OUTPUT[22]~output_o\;

ww_PC_OUTPUT(23) <= \PC_OUTPUT[23]~output_o\;

ww_PC_OUTPUT(24) <= \PC_OUTPUT[24]~output_o\;

ww_PC_OUTPUT(25) <= \PC_OUTPUT[25]~output_o\;

ww_PC_OUTPUT(26) <= \PC_OUTPUT[26]~output_o\;

ww_PC_OUTPUT(27) <= \PC_OUTPUT[27]~output_o\;

ww_PC_OUTPUT(28) <= \PC_OUTPUT[28]~output_o\;

ww_PC_OUTPUT(29) <= \PC_OUTPUT[29]~output_o\;

ww_PC_OUTPUT(30) <= \PC_OUTPUT[30]~output_o\;

ww_PC_OUTPUT(31) <= \PC_OUTPUT[31]~output_o\;

ww_INSTR_OUTPUT(0) <= \INSTR_OUTPUT[0]~output_o\;

ww_INSTR_OUTPUT(1) <= \INSTR_OUTPUT[1]~output_o\;

ww_INSTR_OUTPUT(2) <= \INSTR_OUTPUT[2]~output_o\;

ww_INSTR_OUTPUT(3) <= \INSTR_OUTPUT[3]~output_o\;

ww_INSTR_OUTPUT(4) <= \INSTR_OUTPUT[4]~output_o\;

ww_INSTR_OUTPUT(5) <= \INSTR_OUTPUT[5]~output_o\;

ww_INSTR_OUTPUT(6) <= \INSTR_OUTPUT[6]~output_o\;

ww_INSTR_OUTPUT(7) <= \INSTR_OUTPUT[7]~output_o\;

ww_INSTR_OUTPUT(8) <= \INSTR_OUTPUT[8]~output_o\;

ww_INSTR_OUTPUT(9) <= \INSTR_OUTPUT[9]~output_o\;

ww_INSTR_OUTPUT(10) <= \INSTR_OUTPUT[10]~output_o\;

ww_INSTR_OUTPUT(11) <= \INSTR_OUTPUT[11]~output_o\;

ww_INSTR_OUTPUT(12) <= \INSTR_OUTPUT[12]~output_o\;

ww_INSTR_OUTPUT(13) <= \INSTR_OUTPUT[13]~output_o\;

ww_INSTR_OUTPUT(14) <= \INSTR_OUTPUT[14]~output_o\;

ww_INSTR_OUTPUT(15) <= \INSTR_OUTPUT[15]~output_o\;

ww_INSTR_OUTPUT(16) <= \INSTR_OUTPUT[16]~output_o\;

ww_INSTR_OUTPUT(17) <= \INSTR_OUTPUT[17]~output_o\;

ww_INSTR_OUTPUT(18) <= \INSTR_OUTPUT[18]~output_o\;

ww_INSTR_OUTPUT(19) <= \INSTR_OUTPUT[19]~output_o\;

ww_INSTR_OUTPUT(20) <= \INSTR_OUTPUT[20]~output_o\;

ww_INSTR_OUTPUT(21) <= \INSTR_OUTPUT[21]~output_o\;

ww_INSTR_OUTPUT(22) <= \INSTR_OUTPUT[22]~output_o\;

ww_INSTR_OUTPUT(23) <= \INSTR_OUTPUT[23]~output_o\;

ww_INSTR_OUTPUT(24) <= \INSTR_OUTPUT[24]~output_o\;

ww_INSTR_OUTPUT(25) <= \INSTR_OUTPUT[25]~output_o\;

ww_INSTR_OUTPUT(26) <= \INSTR_OUTPUT[26]~output_o\;

ww_INSTR_OUTPUT(27) <= \INSTR_OUTPUT[27]~output_o\;

ww_INSTR_OUTPUT(28) <= \INSTR_OUTPUT[28]~output_o\;

ww_INSTR_OUTPUT(29) <= \INSTR_OUTPUT[29]~output_o\;

ww_INSTR_OUTPUT(30) <= \INSTR_OUTPUT[30]~output_o\;

ww_INSTR_OUTPUT(31) <= \INSTR_OUTPUT[31]~output_o\;

ww_Reg1Data_OUTPUT(0) <= \Reg1Data_OUTPUT[0]~output_o\;

ww_Reg1Data_OUTPUT(1) <= \Reg1Data_OUTPUT[1]~output_o\;

ww_Reg1Data_OUTPUT(2) <= \Reg1Data_OUTPUT[2]~output_o\;

ww_Reg1Data_OUTPUT(3) <= \Reg1Data_OUTPUT[3]~output_o\;

ww_Reg1Data_OUTPUT(4) <= \Reg1Data_OUTPUT[4]~output_o\;

ww_Reg1Data_OUTPUT(5) <= \Reg1Data_OUTPUT[5]~output_o\;

ww_Reg1Data_OUTPUT(6) <= \Reg1Data_OUTPUT[6]~output_o\;

ww_Reg1Data_OUTPUT(7) <= \Reg1Data_OUTPUT[7]~output_o\;

ww_Reg1Data_OUTPUT(8) <= \Reg1Data_OUTPUT[8]~output_o\;

ww_Reg1Data_OUTPUT(9) <= \Reg1Data_OUTPUT[9]~output_o\;

ww_Reg1Data_OUTPUT(10) <= \Reg1Data_OUTPUT[10]~output_o\;

ww_Reg1Data_OUTPUT(11) <= \Reg1Data_OUTPUT[11]~output_o\;

ww_Reg1Data_OUTPUT(12) <= \Reg1Data_OUTPUT[12]~output_o\;

ww_Reg1Data_OUTPUT(13) <= \Reg1Data_OUTPUT[13]~output_o\;

ww_Reg1Data_OUTPUT(14) <= \Reg1Data_OUTPUT[14]~output_o\;

ww_Reg1Data_OUTPUT(15) <= \Reg1Data_OUTPUT[15]~output_o\;

ww_Reg1Data_OUTPUT(16) <= \Reg1Data_OUTPUT[16]~output_o\;

ww_Reg1Data_OUTPUT(17) <= \Reg1Data_OUTPUT[17]~output_o\;

ww_Reg1Data_OUTPUT(18) <= \Reg1Data_OUTPUT[18]~output_o\;

ww_Reg1Data_OUTPUT(19) <= \Reg1Data_OUTPUT[19]~output_o\;

ww_Reg1Data_OUTPUT(20) <= \Reg1Data_OUTPUT[20]~output_o\;

ww_Reg1Data_OUTPUT(21) <= \Reg1Data_OUTPUT[21]~output_o\;

ww_Reg1Data_OUTPUT(22) <= \Reg1Data_OUTPUT[22]~output_o\;

ww_Reg1Data_OUTPUT(23) <= \Reg1Data_OUTPUT[23]~output_o\;

ww_Reg1Data_OUTPUT(24) <= \Reg1Data_OUTPUT[24]~output_o\;

ww_Reg1Data_OUTPUT(25) <= \Reg1Data_OUTPUT[25]~output_o\;

ww_Reg1Data_OUTPUT(26) <= \Reg1Data_OUTPUT[26]~output_o\;

ww_Reg1Data_OUTPUT(27) <= \Reg1Data_OUTPUT[27]~output_o\;

ww_Reg1Data_OUTPUT(28) <= \Reg1Data_OUTPUT[28]~output_o\;

ww_Reg1Data_OUTPUT(29) <= \Reg1Data_OUTPUT[29]~output_o\;

ww_Reg1Data_OUTPUT(30) <= \Reg1Data_OUTPUT[30]~output_o\;

ww_Reg1Data_OUTPUT(31) <= \Reg1Data_OUTPUT[31]~output_o\;

ww_Reg2Data_OUTPUT(0) <= \Reg2Data_OUTPUT[0]~output_o\;

ww_Reg2Data_OUTPUT(1) <= \Reg2Data_OUTPUT[1]~output_o\;

ww_Reg2Data_OUTPUT(2) <= \Reg2Data_OUTPUT[2]~output_o\;

ww_Reg2Data_OUTPUT(3) <= \Reg2Data_OUTPUT[3]~output_o\;

ww_Reg2Data_OUTPUT(4) <= \Reg2Data_OUTPUT[4]~output_o\;

ww_Reg2Data_OUTPUT(5) <= \Reg2Data_OUTPUT[5]~output_o\;

ww_Reg2Data_OUTPUT(6) <= \Reg2Data_OUTPUT[6]~output_o\;

ww_Reg2Data_OUTPUT(7) <= \Reg2Data_OUTPUT[7]~output_o\;

ww_Reg2Data_OUTPUT(8) <= \Reg2Data_OUTPUT[8]~output_o\;

ww_Reg2Data_OUTPUT(9) <= \Reg2Data_OUTPUT[9]~output_o\;

ww_Reg2Data_OUTPUT(10) <= \Reg2Data_OUTPUT[10]~output_o\;

ww_Reg2Data_OUTPUT(11) <= \Reg2Data_OUTPUT[11]~output_o\;

ww_Reg2Data_OUTPUT(12) <= \Reg2Data_OUTPUT[12]~output_o\;

ww_Reg2Data_OUTPUT(13) <= \Reg2Data_OUTPUT[13]~output_o\;

ww_Reg2Data_OUTPUT(14) <= \Reg2Data_OUTPUT[14]~output_o\;

ww_Reg2Data_OUTPUT(15) <= \Reg2Data_OUTPUT[15]~output_o\;

ww_Reg2Data_OUTPUT(16) <= \Reg2Data_OUTPUT[16]~output_o\;

ww_Reg2Data_OUTPUT(17) <= \Reg2Data_OUTPUT[17]~output_o\;

ww_Reg2Data_OUTPUT(18) <= \Reg2Data_OUTPUT[18]~output_o\;

ww_Reg2Data_OUTPUT(19) <= \Reg2Data_OUTPUT[19]~output_o\;

ww_Reg2Data_OUTPUT(20) <= \Reg2Data_OUTPUT[20]~output_o\;

ww_Reg2Data_OUTPUT(21) <= \Reg2Data_OUTPUT[21]~output_o\;

ww_Reg2Data_OUTPUT(22) <= \Reg2Data_OUTPUT[22]~output_o\;

ww_Reg2Data_OUTPUT(23) <= \Reg2Data_OUTPUT[23]~output_o\;

ww_Reg2Data_OUTPUT(24) <= \Reg2Data_OUTPUT[24]~output_o\;

ww_Reg2Data_OUTPUT(25) <= \Reg2Data_OUTPUT[25]~output_o\;

ww_Reg2Data_OUTPUT(26) <= \Reg2Data_OUTPUT[26]~output_o\;

ww_Reg2Data_OUTPUT(27) <= \Reg2Data_OUTPUT[27]~output_o\;

ww_Reg2Data_OUTPUT(28) <= \Reg2Data_OUTPUT[28]~output_o\;

ww_Reg2Data_OUTPUT(29) <= \Reg2Data_OUTPUT[29]~output_o\;

ww_Reg2Data_OUTPUT(30) <= \Reg2Data_OUTPUT[30]~output_o\;

ww_Reg2Data_OUTPUT(31) <= \Reg2Data_OUTPUT[31]~output_o\;

ww_WriteData_OUTPUT(0) <= \WriteData_OUTPUT[0]~output_o\;

ww_WriteData_OUTPUT(1) <= \WriteData_OUTPUT[1]~output_o\;

ww_WriteData_OUTPUT(2) <= \WriteData_OUTPUT[2]~output_o\;

ww_WriteData_OUTPUT(3) <= \WriteData_OUTPUT[3]~output_o\;

ww_WriteData_OUTPUT(4) <= \WriteData_OUTPUT[4]~output_o\;

ww_WriteData_OUTPUT(5) <= \WriteData_OUTPUT[5]~output_o\;

ww_WriteData_OUTPUT(6) <= \WriteData_OUTPUT[6]~output_o\;

ww_WriteData_OUTPUT(7) <= \WriteData_OUTPUT[7]~output_o\;

ww_WriteData_OUTPUT(8) <= \WriteData_OUTPUT[8]~output_o\;

ww_WriteData_OUTPUT(9) <= \WriteData_OUTPUT[9]~output_o\;

ww_WriteData_OUTPUT(10) <= \WriteData_OUTPUT[10]~output_o\;

ww_WriteData_OUTPUT(11) <= \WriteData_OUTPUT[11]~output_o\;

ww_WriteData_OUTPUT(12) <= \WriteData_OUTPUT[12]~output_o\;

ww_WriteData_OUTPUT(13) <= \WriteData_OUTPUT[13]~output_o\;

ww_WriteData_OUTPUT(14) <= \WriteData_OUTPUT[14]~output_o\;

ww_WriteData_OUTPUT(15) <= \WriteData_OUTPUT[15]~output_o\;

ww_WriteData_OUTPUT(16) <= \WriteData_OUTPUT[16]~output_o\;

ww_WriteData_OUTPUT(17) <= \WriteData_OUTPUT[17]~output_o\;

ww_WriteData_OUTPUT(18) <= \WriteData_OUTPUT[18]~output_o\;

ww_WriteData_OUTPUT(19) <= \WriteData_OUTPUT[19]~output_o\;

ww_WriteData_OUTPUT(20) <= \WriteData_OUTPUT[20]~output_o\;

ww_WriteData_OUTPUT(21) <= \WriteData_OUTPUT[21]~output_o\;

ww_WriteData_OUTPUT(22) <= \WriteData_OUTPUT[22]~output_o\;

ww_WriteData_OUTPUT(23) <= \WriteData_OUTPUT[23]~output_o\;

ww_WriteData_OUTPUT(24) <= \WriteData_OUTPUT[24]~output_o\;

ww_WriteData_OUTPUT(25) <= \WriteData_OUTPUT[25]~output_o\;

ww_WriteData_OUTPUT(26) <= \WriteData_OUTPUT[26]~output_o\;

ww_WriteData_OUTPUT(27) <= \WriteData_OUTPUT[27]~output_o\;

ww_WriteData_OUTPUT(28) <= \WriteData_OUTPUT[28]~output_o\;

ww_WriteData_OUTPUT(29) <= \WriteData_OUTPUT[29]~output_o\;

ww_WriteData_OUTPUT(30) <= \WriteData_OUTPUT[30]~output_o\;

ww_WriteData_OUTPUT(31) <= \WriteData_OUTPUT[31]~output_o\;

ww_DMEM_ADDR_OUTPUT(0) <= \DMEM_ADDR_OUTPUT[0]~output_o\;

ww_DMEM_ADDR_OUTPUT(1) <= \DMEM_ADDR_OUTPUT[1]~output_o\;

ww_DMEM_ADDR_OUTPUT(2) <= \DMEM_ADDR_OUTPUT[2]~output_o\;

ww_DMEM_ADDR_OUTPUT(3) <= \DMEM_ADDR_OUTPUT[3]~output_o\;

ww_DMEM_ADDR_OUTPUT(4) <= \DMEM_ADDR_OUTPUT[4]~output_o\;

ww_DMEM_ADDR_OUTPUT(5) <= \DMEM_ADDR_OUTPUT[5]~output_o\;

ww_DMEM_ADDR_OUTPUT(6) <= \DMEM_ADDR_OUTPUT[6]~output_o\;

ww_DMEM_ADDR_OUTPUT(7) <= \DMEM_ADDR_OUTPUT[7]~output_o\;

ww_DMEM_Write_OUTPUT(0) <= \DMEM_Write_OUTPUT[0]~output_o\;

ww_DMEM_Write_OUTPUT(1) <= \DMEM_Write_OUTPUT[1]~output_o\;

ww_DMEM_Write_OUTPUT(2) <= \DMEM_Write_OUTPUT[2]~output_o\;

ww_DMEM_Write_OUTPUT(3) <= \DMEM_Write_OUTPUT[3]~output_o\;

ww_DMEM_Write_OUTPUT(4) <= \DMEM_Write_OUTPUT[4]~output_o\;

ww_DMEM_Write_OUTPUT(5) <= \DMEM_Write_OUTPUT[5]~output_o\;

ww_DMEM_Write_OUTPUT(6) <= \DMEM_Write_OUTPUT[6]~output_o\;

ww_DMEM_Write_OUTPUT(7) <= \DMEM_Write_OUTPUT[7]~output_o\;

ww_DMEM_Write_OUTPUT(8) <= \DMEM_Write_OUTPUT[8]~output_o\;

ww_DMEM_Write_OUTPUT(9) <= \DMEM_Write_OUTPUT[9]~output_o\;

ww_DMEM_Write_OUTPUT(10) <= \DMEM_Write_OUTPUT[10]~output_o\;

ww_DMEM_Write_OUTPUT(11) <= \DMEM_Write_OUTPUT[11]~output_o\;

ww_DMEM_Write_OUTPUT(12) <= \DMEM_Write_OUTPUT[12]~output_o\;

ww_DMEM_Write_OUTPUT(13) <= \DMEM_Write_OUTPUT[13]~output_o\;

ww_DMEM_Write_OUTPUT(14) <= \DMEM_Write_OUTPUT[14]~output_o\;

ww_DMEM_Write_OUTPUT(15) <= \DMEM_Write_OUTPUT[15]~output_o\;

ww_DMEM_Write_OUTPUT(16) <= \DMEM_Write_OUTPUT[16]~output_o\;

ww_DMEM_Write_OUTPUT(17) <= \DMEM_Write_OUTPUT[17]~output_o\;

ww_DMEM_Write_OUTPUT(18) <= \DMEM_Write_OUTPUT[18]~output_o\;

ww_DMEM_Write_OUTPUT(19) <= \DMEM_Write_OUTPUT[19]~output_o\;

ww_DMEM_Write_OUTPUT(20) <= \DMEM_Write_OUTPUT[20]~output_o\;

ww_DMEM_Write_OUTPUT(21) <= \DMEM_Write_OUTPUT[21]~output_o\;

ww_DMEM_Write_OUTPUT(22) <= \DMEM_Write_OUTPUT[22]~output_o\;

ww_DMEM_Write_OUTPUT(23) <= \DMEM_Write_OUTPUT[23]~output_o\;

ww_DMEM_Write_OUTPUT(24) <= \DMEM_Write_OUTPUT[24]~output_o\;

ww_DMEM_Write_OUTPUT(25) <= \DMEM_Write_OUTPUT[25]~output_o\;

ww_DMEM_Write_OUTPUT(26) <= \DMEM_Write_OUTPUT[26]~output_o\;

ww_DMEM_Write_OUTPUT(27) <= \DMEM_Write_OUTPUT[27]~output_o\;

ww_DMEM_Write_OUTPUT(28) <= \DMEM_Write_OUTPUT[28]~output_o\;

ww_DMEM_Write_OUTPUT(29) <= \DMEM_Write_OUTPUT[29]~output_o\;

ww_DMEM_Write_OUTPUT(30) <= \DMEM_Write_OUTPUT[30]~output_o\;

ww_DMEM_Write_OUTPUT(31) <= \DMEM_Write_OUTPUT[31]~output_o\;

ww_DMEM_Read_OUTPUT(0) <= \DMEM_Read_OUTPUT[0]~output_o\;

ww_DMEM_Read_OUTPUT(1) <= \DMEM_Read_OUTPUT[1]~output_o\;

ww_DMEM_Read_OUTPUT(2) <= \DMEM_Read_OUTPUT[2]~output_o\;

ww_DMEM_Read_OUTPUT(3) <= \DMEM_Read_OUTPUT[3]~output_o\;

ww_DMEM_Read_OUTPUT(4) <= \DMEM_Read_OUTPUT[4]~output_o\;

ww_DMEM_Read_OUTPUT(5) <= \DMEM_Read_OUTPUT[5]~output_o\;

ww_DMEM_Read_OUTPUT(6) <= \DMEM_Read_OUTPUT[6]~output_o\;

ww_DMEM_Read_OUTPUT(7) <= \DMEM_Read_OUTPUT[7]~output_o\;

ww_DMEM_Read_OUTPUT(8) <= \DMEM_Read_OUTPUT[8]~output_o\;

ww_DMEM_Read_OUTPUT(9) <= \DMEM_Read_OUTPUT[9]~output_o\;

ww_DMEM_Read_OUTPUT(10) <= \DMEM_Read_OUTPUT[10]~output_o\;

ww_DMEM_Read_OUTPUT(11) <= \DMEM_Read_OUTPUT[11]~output_o\;

ww_DMEM_Read_OUTPUT(12) <= \DMEM_Read_OUTPUT[12]~output_o\;

ww_DMEM_Read_OUTPUT(13) <= \DMEM_Read_OUTPUT[13]~output_o\;

ww_DMEM_Read_OUTPUT(14) <= \DMEM_Read_OUTPUT[14]~output_o\;

ww_DMEM_Read_OUTPUT(15) <= \DMEM_Read_OUTPUT[15]~output_o\;

ww_DMEM_Read_OUTPUT(16) <= \DMEM_Read_OUTPUT[16]~output_o\;

ww_DMEM_Read_OUTPUT(17) <= \DMEM_Read_OUTPUT[17]~output_o\;

ww_DMEM_Read_OUTPUT(18) <= \DMEM_Read_OUTPUT[18]~output_o\;

ww_DMEM_Read_OUTPUT(19) <= \DMEM_Read_OUTPUT[19]~output_o\;

ww_DMEM_Read_OUTPUT(20) <= \DMEM_Read_OUTPUT[20]~output_o\;

ww_DMEM_Read_OUTPUT(21) <= \DMEM_Read_OUTPUT[21]~output_o\;

ww_DMEM_Read_OUTPUT(22) <= \DMEM_Read_OUTPUT[22]~output_o\;

ww_DMEM_Read_OUTPUT(23) <= \DMEM_Read_OUTPUT[23]~output_o\;

ww_DMEM_Read_OUTPUT(24) <= \DMEM_Read_OUTPUT[24]~output_o\;

ww_DMEM_Read_OUTPUT(25) <= \DMEM_Read_OUTPUT[25]~output_o\;

ww_DMEM_Read_OUTPUT(26) <= \DMEM_Read_OUTPUT[26]~output_o\;

ww_DMEM_Read_OUTPUT(27) <= \DMEM_Read_OUTPUT[27]~output_o\;

ww_DMEM_Read_OUTPUT(28) <= \DMEM_Read_OUTPUT[28]~output_o\;

ww_DMEM_Read_OUTPUT(29) <= \DMEM_Read_OUTPUT[29]~output_o\;

ww_DMEM_Read_OUTPUT(30) <= \DMEM_Read_OUTPUT[30]~output_o\;

ww_DMEM_Read_OUTPUT(31) <= \DMEM_Read_OUTPUT[31]~output_o\;

ww_ALU_OP_OUTPUT(0) <= \ALU_OP_OUTPUT[0]~output_o\;

ww_ALU_OP_OUTPUT(1) <= \ALU_OP_OUTPUT[1]~output_o\;

ww_ALU_RESULT_OUTPUT(0) <= \ALU_RESULT_OUTPUT[0]~output_o\;

ww_ALU_RESULT_OUTPUT(1) <= \ALU_RESULT_OUTPUT[1]~output_o\;

ww_ALU_RESULT_OUTPUT(2) <= \ALU_RESULT_OUTPUT[2]~output_o\;

ww_ALU_RESULT_OUTPUT(3) <= \ALU_RESULT_OUTPUT[3]~output_o\;

ww_ALU_RESULT_OUTPUT(4) <= \ALU_RESULT_OUTPUT[4]~output_o\;

ww_ALU_RESULT_OUTPUT(5) <= \ALU_RESULT_OUTPUT[5]~output_o\;

ww_ALU_RESULT_OUTPUT(6) <= \ALU_RESULT_OUTPUT[6]~output_o\;

ww_ALU_RESULT_OUTPUT(7) <= \ALU_RESULT_OUTPUT[7]~output_o\;

ww_ALU_RESULT_OUTPUT(8) <= \ALU_RESULT_OUTPUT[8]~output_o\;

ww_ALU_RESULT_OUTPUT(9) <= \ALU_RESULT_OUTPUT[9]~output_o\;

ww_ALU_RESULT_OUTPUT(10) <= \ALU_RESULT_OUTPUT[10]~output_o\;

ww_ALU_RESULT_OUTPUT(11) <= \ALU_RESULT_OUTPUT[11]~output_o\;

ww_ALU_RESULT_OUTPUT(12) <= \ALU_RESULT_OUTPUT[12]~output_o\;

ww_ALU_RESULT_OUTPUT(13) <= \ALU_RESULT_OUTPUT[13]~output_o\;

ww_ALU_RESULT_OUTPUT(14) <= \ALU_RESULT_OUTPUT[14]~output_o\;

ww_ALU_RESULT_OUTPUT(15) <= \ALU_RESULT_OUTPUT[15]~output_o\;

ww_ALU_RESULT_OUTPUT(16) <= \ALU_RESULT_OUTPUT[16]~output_o\;

ww_ALU_RESULT_OUTPUT(17) <= \ALU_RESULT_OUTPUT[17]~output_o\;

ww_ALU_RESULT_OUTPUT(18) <= \ALU_RESULT_OUTPUT[18]~output_o\;

ww_ALU_RESULT_OUTPUT(19) <= \ALU_RESULT_OUTPUT[19]~output_o\;

ww_ALU_RESULT_OUTPUT(20) <= \ALU_RESULT_OUTPUT[20]~output_o\;

ww_ALU_RESULT_OUTPUT(21) <= \ALU_RESULT_OUTPUT[21]~output_o\;

ww_ALU_RESULT_OUTPUT(22) <= \ALU_RESULT_OUTPUT[22]~output_o\;

ww_ALU_RESULT_OUTPUT(23) <= \ALU_RESULT_OUTPUT[23]~output_o\;

ww_ALU_RESULT_OUTPUT(24) <= \ALU_RESULT_OUTPUT[24]~output_o\;

ww_ALU_RESULT_OUTPUT(25) <= \ALU_RESULT_OUTPUT[25]~output_o\;

ww_ALU_RESULT_OUTPUT(26) <= \ALU_RESULT_OUTPUT[26]~output_o\;

ww_ALU_RESULT_OUTPUT(27) <= \ALU_RESULT_OUTPUT[27]~output_o\;

ww_ALU_RESULT_OUTPUT(28) <= \ALU_RESULT_OUTPUT[28]~output_o\;

ww_ALU_RESULT_OUTPUT(29) <= \ALU_RESULT_OUTPUT[29]~output_o\;

ww_ALU_RESULT_OUTPUT(30) <= \ALU_RESULT_OUTPUT[30]~output_o\;

ww_ALU_RESULT_OUTPUT(31) <= \ALU_RESULT_OUTPUT[31]~output_o\;

ww_WR_EN_OUTPUT <= \WR_EN_OUTPUT~output_o\;

ww_BRANCH_OUTPUT <= \BRANCH_OUTPUT~output_o\;

ww_BRANCH_TAKEN_OUTPUT <= \BRANCH_TAKEN_OUTPUT~output_o\;

ww_SL2_OUTPUT(0) <= \SL2_OUTPUT[0]~output_o\;

ww_SL2_OUTPUT(1) <= \SL2_OUTPUT[1]~output_o\;

ww_SL2_OUTPUT(2) <= \SL2_OUTPUT[2]~output_o\;

ww_SL2_OUTPUT(3) <= \SL2_OUTPUT[3]~output_o\;

ww_SL2_OUTPUT(4) <= \SL2_OUTPUT[4]~output_o\;

ww_SL2_OUTPUT(5) <= \SL2_OUTPUT[5]~output_o\;

ww_SL2_OUTPUT(6) <= \SL2_OUTPUT[6]~output_o\;

ww_SL2_OUTPUT(7) <= \SL2_OUTPUT[7]~output_o\;

ww_SL2_OUTPUT(8) <= \SL2_OUTPUT[8]~output_o\;

ww_SL2_OUTPUT(9) <= \SL2_OUTPUT[9]~output_o\;

ww_SL2_OUTPUT(10) <= \SL2_OUTPUT[10]~output_o\;

ww_SL2_OUTPUT(11) <= \SL2_OUTPUT[11]~output_o\;

ww_SL2_OUTPUT(12) <= \SL2_OUTPUT[12]~output_o\;

ww_SL2_OUTPUT(13) <= \SL2_OUTPUT[13]~output_o\;

ww_SL2_OUTPUT(14) <= \SL2_OUTPUT[14]~output_o\;

ww_SL2_OUTPUT(15) <= \SL2_OUTPUT[15]~output_o\;

ww_SL2_OUTPUT(16) <= \SL2_OUTPUT[16]~output_o\;

ww_SL2_OUTPUT(17) <= \SL2_OUTPUT[17]~output_o\;

ww_SL2_OUTPUT(18) <= \SL2_OUTPUT[18]~output_o\;

ww_SL2_OUTPUT(19) <= \SL2_OUTPUT[19]~output_o\;

ww_SL2_OUTPUT(20) <= \SL2_OUTPUT[20]~output_o\;

ww_SL2_OUTPUT(21) <= \SL2_OUTPUT[21]~output_o\;

ww_SL2_OUTPUT(22) <= \SL2_OUTPUT[22]~output_o\;

ww_SL2_OUTPUT(23) <= \SL2_OUTPUT[23]~output_o\;

ww_SL2_OUTPUT(24) <= \SL2_OUTPUT[24]~output_o\;

ww_SL2_OUTPUT(25) <= \SL2_OUTPUT[25]~output_o\;

ww_SL2_OUTPUT(26) <= \SL2_OUTPUT[26]~output_o\;

ww_SL2_OUTPUT(27) <= \SL2_OUTPUT[27]~output_o\;

ww_SL2_OUTPUT(28) <= \SL2_OUTPUT[28]~output_o\;

ww_SL2_OUTPUT(29) <= \SL2_OUTPUT[29]~output_o\;

ww_SL2_OUTPUT(30) <= \SL2_OUTPUT[30]~output_o\;

ww_SL2_OUTPUT(31) <= \SL2_OUTPUT[31]~output_o\;

ww_ALU_SRC_OUTPUT <= \ALU_SRC_OUTPUT~output_o\;

ww_RegWrite_OUTPUT <= \RegWrite_OUTPUT~output_o\;

ww_MemWrite_OUTPUT <= \MemWrite_OUTPUT~output_o\;

ww_WriteRegDst_OUTPUT(0) <= \WriteRegDst_OUTPUT[0]~output_o\;

ww_WriteRegDst_OUTPUT(1) <= \WriteRegDst_OUTPUT[1]~output_o\;

ww_WriteRegDst_OUTPUT(2) <= \WriteRegDst_OUTPUT[2]~output_o\;

ww_WriteRegDst_OUTPUT(3) <= \WriteRegDst_OUTPUT[3]~output_o\;

ww_WriteRegDst_OUTPUT(4) <= \WriteRegDst_OUTPUT[4]~output_o\;
END structure;


