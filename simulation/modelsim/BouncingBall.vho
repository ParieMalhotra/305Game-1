-- Copyright (C) 1991-2013 Altera Corporation
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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "05/10/2019 20:40:27"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	BouncingBall IS
    PORT (
	horiz_sync_out : OUT std_logic;
	bt2 : IN std_logic;
	clk : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	SW : IN std_logic_vector(8 DOWNTO 0);
	vert_sync_out : OUT std_logic;
	seg0_dec : OUT std_logic;
	seg1_dec : OUT std_logic;
	LEDG : OUT std_logic_vector(9 DOWNTO 0);
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0)
	);
END BouncingBall;

-- Design Ports Information
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0_dec	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1_dec	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[9]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[8]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF BouncingBall IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_SW : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_seg0_dec : std_logic;
SIGNAL ww_seg1_dec : std_logic;
SIGNAL ww_LEDG : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Add2~0_combout\ : std_logic;
SIGNAL \inst1|Add2~4_combout\ : std_logic;
SIGNAL \inst1|Add3~0_combout\ : std_logic;
SIGNAL \inst1|Add3~2_combout\ : std_logic;
SIGNAL \inst1|Add3~9\ : std_logic;
SIGNAL \inst1|Add3~10_combout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[0]~10_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[8]~28\ : std_logic;
SIGNAL \inst4|new_cursor_column[9]~29_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[1]~12_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[5]~20_combout\ : std_logic;
SIGNAL \inst1|Add4~0_combout\ : std_logic;
SIGNAL \inst1|Add4~4_combout\ : std_logic;
SIGNAL \inst1|Add4~6_combout\ : std_logic;
SIGNAL \inst1|Add4~16_combout\ : std_logic;
SIGNAL \inst1|Add6~4_combout\ : std_logic;
SIGNAL \inst1|Add6~6_combout\ : std_logic;
SIGNAL \inst1|Add6~15\ : std_logic;
SIGNAL \inst1|Add6~16_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~0_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[1]~10_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[3]~14_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[4]~16_combout\ : std_logic;
SIGNAL \inst1|Ball_on~0_combout\ : std_logic;
SIGNAL \inst1|Ball_on~3_combout\ : std_logic;
SIGNAL \inst1|Ball_on~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~2_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst1|Move_Ball:counter[8]~q\ : std_logic;
SIGNAL \inst1|Move_Ball:counter[6]~q\ : std_logic;
SIGNAL \inst1|Move_Ball:counter[2]~q\ : std_logic;
SIGNAL \inst1|Move_Ball:counter[0]~q\ : std_logic;
SIGNAL \inst1|Add4~21_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~7_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~8_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~9_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[7]~3_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[7]~1_combout\ : std_logic;
SIGNAL \inst4|cursor_column~12_combout\ : std_logic;
SIGNAL \inst4|cursor_column~15_combout\ : std_logic;
SIGNAL \inst4|cursor_row~5_combout\ : std_logic;
SIGNAL \inst4|cursor_row~7_combout\ : std_logic;
SIGNAL \inst4|cursor_row~9_combout\ : std_logic;
SIGNAL \inst1|Add4~27_combout\ : std_logic;
SIGNAL \inst1|Add4~29_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion~4_combout\ : std_logic;
SIGNAL \inst4|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst4|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|LessThan4~4_combout\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst1|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|SYNC|pixel_column[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Move_Ball:counter[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|Move_Ball:counter[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[3]~feeder_combout\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst4|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst4|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|filter[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[0]~30_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[1]~11\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[2]~12_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[2]~13\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[3]~15\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[4]~17\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[5]~18_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[5]~19\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[6]~20_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[6]~21\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[7]~22_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[7]~23\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[8]~24_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[8]~25\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[9]~27\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[10]~28_combout\ : std_logic;
SIGNAL \inst4|Selector0~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst4|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst4|inhibit_wait_count[9]~26_combout\ : std_logic;
SIGNAL \inst4|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst4|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst4|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst4|send_char~0_combout\ : std_logic;
SIGNAL \inst4|send_char~q\ : std_logic;
SIGNAL \inst4|output_ready~0_combout\ : std_logic;
SIGNAL \inst4|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst4|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst4|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|output_ready~feeder_combout\ : std_logic;
SIGNAL \inst4|output_ready~q\ : std_logic;
SIGNAL \inst4|Selector3~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst4|READ_CHAR~q\ : std_logic;
SIGNAL \inst4|iready_set~0_combout\ : std_logic;
SIGNAL \inst4|iready_set~q\ : std_logic;
SIGNAL \inst4|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst4|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst4|Selector6~0_combout\ : std_logic;
SIGNAL \inst4|Selector6~1_combout\ : std_logic;
SIGNAL \inst4|send_data~q\ : std_logic;
SIGNAL \inst4|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst4|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst4|WideOr4~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|SYNC|Add0~1\ : std_logic;
SIGNAL \inst1|SYNC|Add0~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~3\ : std_logic;
SIGNAL \inst1|SYNC|Add0~5\ : std_logic;
SIGNAL \inst1|SYNC|Add0~7\ : std_logic;
SIGNAL \inst1|SYNC|Add0~8_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~9\ : std_logic;
SIGNAL \inst1|SYNC|Add0~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|h_count~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~11\ : std_logic;
SIGNAL \inst1|SYNC|Add0~12_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~13\ : std_logic;
SIGNAL \inst1|SYNC|Add0~14_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~15\ : std_logic;
SIGNAL \inst1|SYNC|Add0~16_combout\ : std_logic;
SIGNAL \inst1|SYNC|h_count~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~17\ : std_logic;
SIGNAL \inst1|SYNC|Add0~18_combout\ : std_logic;
SIGNAL \inst1|SYNC|h_count~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~3_combout\ : std_logic;
SIGNAL \inst1|SYNC|horiz_sync~q\ : std_logic;
SIGNAL \inst1|SYNC|horiz_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst1|SYNC|horiz_sync_out~q\ : std_logic;
SIGNAL \inst1|SYNC|Add1~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~11_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~1\ : std_logic;
SIGNAL \inst1|SYNC|Add1~3\ : std_logic;
SIGNAL \inst1|SYNC|Add1~5\ : std_logic;
SIGNAL \inst1|SYNC|Add1~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[3]~5_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~7\ : std_logic;
SIGNAL \inst1|SYNC|Add1~8_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[4]~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~9\ : std_logic;
SIGNAL \inst1|SYNC|Add1~11\ : std_logic;
SIGNAL \inst1|SYNC|Add1~12_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[6]~9_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~13\ : std_logic;
SIGNAL \inst1|SYNC|Add1~15\ : std_logic;
SIGNAL \inst1|SYNC|Add1~16_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[8]~11_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~17\ : std_logic;
SIGNAL \inst1|SYNC|Add1~18_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[9]~7_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~12_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[7]~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~14_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[7]~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[2]~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~5_combout\ : std_logic;
SIGNAL \inst1|SYNC|vert_sync~q\ : std_logic;
SIGNAL \inst1|SYNC|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst1|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \inst4|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \inst4|INCNT~1_combout\ : std_logic;
SIGNAL \inst4|INCNT[3]~2_combout\ : std_logic;
SIGNAL \inst4|INCNT~5_combout\ : std_logic;
SIGNAL \inst4|INCNT~4_combout\ : std_logic;
SIGNAL \inst4|INCNT~3_combout\ : std_logic;
SIGNAL \inst4|LessThan1~0_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[1]~2_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR1[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_COUNT[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[7]~0_combout\ : std_logic;
SIGNAL \inst4|Add3~0_combout\ : std_logic;
SIGNAL \inst4|PACKET_COUNT[1]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR1[1]~0_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR1[1]~1_combout\ : std_logic;
SIGNAL \inst4|right_button~feeder_combout\ : std_logic;
SIGNAL \inst4|INCNT[3]~0_combout\ : std_logic;
SIGNAL \inst4|right_button~0_combout\ : std_logic;
SIGNAL \inst4|right_button~q\ : std_logic;
SIGNAL \inst4|SHIFTIN[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR1[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|left_button~feeder_combout\ : std_logic;
SIGNAL \inst4|left_button~q\ : std_logic;
SIGNAL \inst2|tmp~0_combout\ : std_logic;
SIGNAL \inst2|tmp~1_combout\ : std_logic;
SIGNAL \inst2|tmp[7]~5_combout\ : std_logic;
SIGNAL \inst2|tmp[6]~6_combout\ : std_logic;
SIGNAL \inst2|tmp~2_combout\ : std_logic;
SIGNAL \inst2|tmp[4]~8_combout\ : std_logic;
SIGNAL \inst2|tmp~3_combout\ : std_logic;
SIGNAL \inst2|tmp[1]~10_combout\ : std_logic;
SIGNAL \inst2|tmp[10]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[7]~2_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[6]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[3]~feeder_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[7]~25_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst4|Equal4~0_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[6]~24_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR2[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[0]~11\ : std_logic;
SIGNAL \inst4|new_cursor_column[1]~12_combout\ : std_logic;
SIGNAL \inst4|cursor_column~14_combout\ : std_logic;
SIGNAL \inst4|cursor_column[6]~6_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[1]~13\ : std_logic;
SIGNAL \inst4|new_cursor_column[2]~14_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[6]~22_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[3]~16_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~0_combout\ : std_logic;
SIGNAL \inst4|LessThan9~0_combout\ : std_logic;
SIGNAL \inst4|cursor_column[0]~4_combout\ : std_logic;
SIGNAL \inst4|Equal3~0_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~1_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~2_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~3_combout\ : std_logic;
SIGNAL \inst4|cursor_column[0]~5_combout\ : std_logic;
SIGNAL \inst4|cursor_column~13_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[2]~15\ : std_logic;
SIGNAL \inst4|new_cursor_column[3]~17\ : std_logic;
SIGNAL \inst4|new_cursor_column[4]~18_combout\ : std_logic;
SIGNAL \inst4|cursor_column~11_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[4]~19\ : std_logic;
SIGNAL \inst4|new_cursor_column[5]~20_combout\ : std_logic;
SIGNAL \inst4|cursor_column~10_combout\ : std_logic;
SIGNAL \inst4|new_cursor_column[5]~21\ : std_logic;
SIGNAL \inst4|new_cursor_column[6]~23\ : std_logic;
SIGNAL \inst4|new_cursor_column[7]~26\ : std_logic;
SIGNAL \inst4|new_cursor_column[8]~27_combout\ : std_logic;
SIGNAL \inst4|cursor_column~17_combout\ : std_logic;
SIGNAL \inst4|cursor_column~9_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~4_combout\ : std_logic;
SIGNAL \inst4|cursor_column~7_combout\ : std_logic;
SIGNAL \inst4|cursor_column~8_combout\ : std_logic;
SIGNAL \inst4|cursor_column~16_combout\ : std_logic;
SIGNAL \inst7|LED_out[6]~0_combout\ : std_logic;
SIGNAL \inst7|LED_out[5]~1_combout\ : std_logic;
SIGNAL \inst7|LED_out[4]~2_combout\ : std_logic;
SIGNAL \inst7|LED_out[3]~3_combout\ : std_logic;
SIGNAL \inst7|LED_out[2]~4_combout\ : std_logic;
SIGNAL \inst7|LED_out[1]~5_combout\ : std_logic;
SIGNAL \inst7|LED_out[0]~6_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[7]~feeder_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[0]~feeder_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[0]~10_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[7]~24_combout\ : std_logic;
SIGNAL \inst4|LessThan5~1_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[8]~27\ : std_logic;
SIGNAL \inst4|new_cursor_row[9]~28_combout\ : std_logic;
SIGNAL \inst4|cursor_row~0_combout\ : std_logic;
SIGNAL \inst4|cursor_row~3_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[4]~feeder_combout\ : std_logic;
SIGNAL \inst4|cursor_row~6_combout\ : std_logic;
SIGNAL \inst4|PACKET_CHAR3[2]~feeder_combout\ : std_logic;
SIGNAL \inst4|cursor_row~8_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[0]~11\ : std_logic;
SIGNAL \inst4|new_cursor_row[1]~13\ : std_logic;
SIGNAL \inst4|new_cursor_row[2]~15\ : std_logic;
SIGNAL \inst4|new_cursor_row[3]~17\ : std_logic;
SIGNAL \inst4|new_cursor_row[4]~18_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[3]~16_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[2]~14_combout\ : std_logic;
SIGNAL \inst4|LessThan5~0_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~5_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~6_combout\ : std_logic;
SIGNAL \inst4|RECV_UART~7_combout\ : std_logic;
SIGNAL \inst4|cursor_row~4_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[4]~19\ : std_logic;
SIGNAL \inst4|new_cursor_row[5]~21\ : std_logic;
SIGNAL \inst4|new_cursor_row[6]~22_combout\ : std_logic;
SIGNAL \inst4|cursor_row~1_combout\ : std_logic;
SIGNAL \inst4|new_cursor_row[6]~23\ : std_logic;
SIGNAL \inst4|new_cursor_row[7]~25\ : std_logic;
SIGNAL \inst4|new_cursor_row[8]~26_combout\ : std_logic;
SIGNAL \inst4|cursor_row~2_combout\ : std_logic;
SIGNAL \inst6|LED_out[6]~0_combout\ : std_logic;
SIGNAL \inst6|LED_out[5]~1_combout\ : std_logic;
SIGNAL \inst6|LED_out[4]~2_combout\ : std_logic;
SIGNAL \inst6|LED_out[3]~3_combout\ : std_logic;
SIGNAL \inst6|LED_out[2]~4_combout\ : std_logic;
SIGNAL \inst6|LED_out[1]~5_combout\ : std_logic;
SIGNAL \inst6|LED_out[0]~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|video_on_h~q\ : std_logic;
SIGNAL \inst1|SYNC|LessThan7~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|video_on_v~q\ : std_logic;
SIGNAL \inst1|SYNC|pixel_column[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|Ball_on~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|pixel_column[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|Add0~1_cout\ : std_logic;
SIGNAL \inst1|Add0~3_cout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Ball_on~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|pixel_row[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|SYNC|pixel_row[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[5]~8_combout\ : std_logic;
SIGNAL \inst1|SYNC|pixel_row[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|Add2~1\ : std_logic;
SIGNAL \inst1|Add2~3\ : std_logic;
SIGNAL \inst1|Add2~5\ : std_logic;
SIGNAL \inst1|Add2~7\ : std_logic;
SIGNAL \inst1|Add2~9\ : std_logic;
SIGNAL \inst1|Add2~10_combout\ : std_logic;
SIGNAL \inst1|Ball_on~5_combout\ : std_logic;
SIGNAL \inst1|Move_Ball:counter[9]~q\ : std_logic;
SIGNAL \inst1|Add4~12_combout\ : std_logic;
SIGNAL \inst1|Add4~23_combout\ : std_logic;
SIGNAL \inst1|Add4~26_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[0]~11\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[1]~12_combout\ : std_logic;
SIGNAL \inst1|Add6~0_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[1]~13\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[2]~14_combout\ : std_logic;
SIGNAL \inst1|Add6~1\ : std_logic;
SIGNAL \inst1|Add6~2_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[2]~15\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[3]~16_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion~0_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[3]~17\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[4]~18_combout\ : std_logic;
SIGNAL \inst1|Add6~3\ : std_logic;
SIGNAL \inst1|Add6~5\ : std_logic;
SIGNAL \inst1|Add6~7\ : std_logic;
SIGNAL \inst1|Add6~8_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[4]~19\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[5]~20_combout\ : std_logic;
SIGNAL \inst1|Add6~9\ : std_logic;
SIGNAL \inst1|Add6~11\ : std_logic;
SIGNAL \inst1|Add6~12_combout\ : std_logic;
SIGNAL \inst1|Add6~10_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[5]~21\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[6]~23\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[7]~24_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion~1_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion~2_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion~3_combout\ : std_logic;
SIGNAL \inst1|Add6~13\ : std_logic;
SIGNAL \inst1|Add6~14_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[7]~25\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[8]~26_combout\ : std_logic;
SIGNAL \inst1|LessThan4~3_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[6]~22_combout\ : std_logic;
SIGNAL \inst1|LessThan4~2_combout\ : std_logic;
SIGNAL \inst1|counter~0_combout\ : std_logic;
SIGNAL \inst1|Move_Ball:counter[3]~q\ : std_logic;
SIGNAL \inst1|Add4~1\ : std_logic;
SIGNAL \inst1|Add4~2_combout\ : std_logic;
SIGNAL \inst1|Add4~28_combout\ : std_logic;
SIGNAL \inst1|Move_Ball:counter[1]~q\ : std_logic;
SIGNAL \inst1|Add4~3\ : std_logic;
SIGNAL \inst1|Add4~5\ : std_logic;
SIGNAL \inst1|Add4~7\ : std_logic;
SIGNAL \inst1|Add4~8_combout\ : std_logic;
SIGNAL \inst1|Add4~25_combout\ : std_logic;
SIGNAL \inst1|Move_Ball:counter[4]~q\ : std_logic;
SIGNAL \inst1|Add4~9\ : std_logic;
SIGNAL \inst1|Add4~10_combout\ : std_logic;
SIGNAL \inst1|Add4~24_combout\ : std_logic;
SIGNAL \inst1|Move_Ball:counter[5]~q\ : std_logic;
SIGNAL \inst1|Add4~11\ : std_logic;
SIGNAL \inst1|Add4~13\ : std_logic;
SIGNAL \inst1|Add4~14_combout\ : std_logic;
SIGNAL \inst1|Add4~22_combout\ : std_logic;
SIGNAL \inst1|Move_Ball:counter[7]~q\ : std_logic;
SIGNAL \inst1|Add4~15\ : std_logic;
SIGNAL \inst1|Add4~17\ : std_logic;
SIGNAL \inst1|Add4~18_combout\ : std_logic;
SIGNAL \inst1|Add4~20_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[8]~27\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[9]~28_combout\ : std_logic;
SIGNAL \inst1|Add2~8_combout\ : std_logic;
SIGNAL \inst1|Add2~6_combout\ : std_logic;
SIGNAL \inst1|Add2~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|pixel_row[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|SYNC|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[0]~10_combout\ : std_logic;
SIGNAL \inst1|LessThan2~1_cout\ : std_logic;
SIGNAL \inst1|LessThan2~3_cout\ : std_logic;
SIGNAL \inst1|LessThan2~5_cout\ : std_logic;
SIGNAL \inst1|LessThan2~7_cout\ : std_logic;
SIGNAL \inst1|LessThan2~9_cout\ : std_logic;
SIGNAL \inst1|LessThan2~11_cout\ : std_logic;
SIGNAL \inst1|LessThan2~13_cout\ : std_logic;
SIGNAL \inst1|LessThan2~15_cout\ : std_logic;
SIGNAL \inst1|LessThan2~17_cout\ : std_logic;
SIGNAL \inst1|LessThan2~18_combout\ : std_logic;
SIGNAL \inst1|Add3~1\ : std_logic;
SIGNAL \inst1|Add3~3\ : std_logic;
SIGNAL \inst1|Add3~5\ : std_logic;
SIGNAL \inst1|Add3~7\ : std_logic;
SIGNAL \inst1|Add3~8_combout\ : std_logic;
SIGNAL \inst1|Add3~6_combout\ : std_logic;
SIGNAL \inst1|Add3~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|pixel_row[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|LessThan3~1_cout\ : std_logic;
SIGNAL \inst1|LessThan3~3_cout\ : std_logic;
SIGNAL \inst1|LessThan3~5_cout\ : std_logic;
SIGNAL \inst1|LessThan3~7_cout\ : std_logic;
SIGNAL \inst1|LessThan3~9_cout\ : std_logic;
SIGNAL \inst1|LessThan3~11_cout\ : std_logic;
SIGNAL \inst1|LessThan3~13_cout\ : std_logic;
SIGNAL \inst1|LessThan3~15_cout\ : std_logic;
SIGNAL \inst1|LessThan3~16_combout\ : std_logic;
SIGNAL \inst1|Ball_on~combout\ : std_logic;
SIGNAL \inst1|SYNC|blue_out~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \inst1|SYNC|blue_out~1_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \inst1|SYNC|blue_out~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|blue_out~3_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \inst1|SYNC|green_out~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|green_out~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst1|SYNC|green_out~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|red_out~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|red_out~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|red_out~2_combout\ : std_logic;
SIGNAL \inst4|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst4|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst4|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|PACKET_CHAR3\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|PACKET_CHAR2\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst4|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst4|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst2|tmp\ : std_logic_vector(10 DOWNTO 1);
SIGNAL \inst1|SYNC|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SYNC|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SYNC|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|new_cursor_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|Ball_Y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SYNC|red_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|SYNC|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SYNC|blue_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|SYNC|green_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|new_cursor_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst4|inhibit_wait_count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst4|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst4|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst7|ALT_INV_LED_out[6]~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_tmp\ : std_logic_vector(9 DOWNTO 2);
SIGNAL \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;

BEGIN

horiz_sync_out <= ww_horiz_sync_out;
ww_bt2 <= bt2;
ww_clk <= clk;
ww_SW <= SW;
vert_sync_out <= ww_vert_sync_out;
seg0_dec <= ww_seg0_dec;
seg1_dec <= ww_seg1_dec;
LEDG <= ww_LEDG;
seg0 <= ww_seg0;
seg1 <= ww_seg1;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
VGA_R <= ww_VGA_R;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst3|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst3|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst1|SYNC|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|SYNC|vert_sync_out~q\);

\inst4|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst4|MOUSE_CLK_FILTER~q\);

\inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst4|ALT_INV_send_data~q\ <= NOT \inst4|send_data~q\;
\inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst4|mouse_state.INHIBIT_TRANS~q\;
\inst4|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst4|mouse_state.WAIT_OUTPUT_READY~q\;
\inst7|ALT_INV_LED_out[6]~0_combout\ <= NOT \inst7|LED_out[6]~0_combout\;
\inst2|ALT_INV_tmp\(2) <= NOT \inst2|tmp\(2);
\inst2|ALT_INV_tmp\(3) <= NOT \inst2|tmp\(3);
\inst2|ALT_INV_tmp\(5) <= NOT \inst2|tmp\(5);
\inst2|ALT_INV_tmp\(7) <= NOT \inst2|tmp\(7);
\inst2|ALT_INV_tmp\(9) <= NOT \inst2|tmp\(9);
\inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\;

-- Location: FF_X32_Y26_N11
\inst4|new_cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(0));

-- Location: FF_X32_Y26_N29
\inst4|new_cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[9]~29_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(9));

-- Location: FF_X30_Y24_N9
\inst4|new_cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(1));

-- Location: FF_X30_Y24_N17
\inst4|new_cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[5]~20_combout\,
	asdata => VCC,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(5));

-- Location: LCCOMB_X37_Y27_N0
\inst1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~0_combout\ = (\inst1|SYNC|pixel_row\(3) & (\inst1|SYNC|pixel_row\(4) $ (VCC))) # (!\inst1|SYNC|pixel_row\(3) & (\inst1|SYNC|pixel_row\(4) & VCC))
-- \inst1|Add2~1\ = CARRY((\inst1|SYNC|pixel_row\(3) & \inst1|SYNC|pixel_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(3),
	datab => \inst1|SYNC|pixel_row\(4),
	datad => VCC,
	combout => \inst1|Add2~0_combout\,
	cout => \inst1|Add2~1\);

-- Location: LCCOMB_X37_Y27_N4
\inst1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~4_combout\ = (\inst1|SYNC|pixel_row\(6) & (\inst1|Add2~3\ $ (GND))) # (!\inst1|SYNC|pixel_row\(6) & (!\inst1|Add2~3\ & VCC))
-- \inst1|Add2~5\ = CARRY((\inst1|SYNC|pixel_row\(6) & !\inst1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst1|Add2~3\,
	combout => \inst1|Add2~4_combout\,
	cout => \inst1|Add2~5\);

-- Location: LCCOMB_X36_Y28_N0
\inst1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~0_combout\ = (\inst1|Ball_Y_pos\(4) & (\inst1|Ball_Y_pos\(3) $ (VCC))) # (!\inst1|Ball_Y_pos\(4) & (\inst1|Ball_Y_pos\(3) & VCC))
-- \inst1|Add3~1\ = CARRY((\inst1|Ball_Y_pos\(4) & \inst1|Ball_Y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(4),
	datab => \inst1|Ball_Y_pos\(3),
	datad => VCC,
	combout => \inst1|Add3~0_combout\,
	cout => \inst1|Add3~1\);

-- Location: LCCOMB_X36_Y28_N2
\inst1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~2_combout\ = (\inst1|Ball_Y_pos\(5) & (!\inst1|Add3~1\)) # (!\inst1|Ball_Y_pos\(5) & ((\inst1|Add3~1\) # (GND)))
-- \inst1|Add3~3\ = CARRY((!\inst1|Add3~1\) # (!\inst1|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst1|Add3~1\,
	combout => \inst1|Add3~2_combout\,
	cout => \inst1|Add3~3\);

-- Location: LCCOMB_X36_Y28_N8
\inst1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~8_combout\ = (\inst1|Ball_Y_pos\(8) & (\inst1|Add3~7\ $ (GND))) # (!\inst1|Ball_Y_pos\(8) & (!\inst1|Add3~7\ & VCC))
-- \inst1|Add3~9\ = CARRY((\inst1|Ball_Y_pos\(8) & !\inst1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst1|Add3~7\,
	combout => \inst1|Add3~8_combout\,
	cout => \inst1|Add3~9\);

-- Location: LCCOMB_X36_Y28_N10
\inst1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~10_combout\ = \inst1|Ball_Y_pos\(9) $ (\inst1|Add3~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(9),
	cin => \inst1|Add3~9\,
	combout => \inst1|Add3~10_combout\);

-- Location: LCCOMB_X37_Y26_N18
\inst1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|SYNC|pixel_column\(6) & (\inst1|Add0~3_cout\ $ (GND))) # (!\inst1|SYNC|pixel_column\(6) & (!\inst1|Add0~3_cout\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|SYNC|pixel_column\(6) & !\inst1|Add0~3_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(6),
	datad => VCC,
	cin => \inst1|Add0~3_cout\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X37_Y26_N20
\inst1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|SYNC|pixel_column\(7) & (!\inst1|Add0~5\)) # (!\inst1|SYNC|pixel_column\(7) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|SYNC|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_column\(7),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X37_Y26_N22
\inst1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|SYNC|pixel_column\(8) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|SYNC|pixel_column\(8) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|SYNC|pixel_column\(8) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X37_Y26_N24
\inst1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = \inst1|SYNC|pixel_column\(9) $ (\inst1|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(9),
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\);

-- Location: LCCOMB_X32_Y26_N10
\inst4|new_cursor_column[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[0]~10_combout\ = (\inst4|cursor_column\(0) & (\inst4|PACKET_CHAR2\(0) $ (VCC))) # (!\inst4|cursor_column\(0) & (\inst4|PACKET_CHAR2\(0) & VCC))
-- \inst4|new_cursor_column[0]~11\ = CARRY((\inst4|cursor_column\(0) & \inst4|PACKET_CHAR2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(0),
	datab => \inst4|PACKET_CHAR2\(0),
	datad => VCC,
	combout => \inst4|new_cursor_column[0]~10_combout\,
	cout => \inst4|new_cursor_column[0]~11\);

-- Location: LCCOMB_X32_Y26_N26
\inst4|new_cursor_column[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[8]~27_combout\ = ((\inst4|cursor_column\(8) $ (\inst4|PACKET_CHAR2\(7) $ (!\inst4|new_cursor_column[7]~26\)))) # (GND)
-- \inst4|new_cursor_column[8]~28\ = CARRY((\inst4|cursor_column\(8) & ((\inst4|PACKET_CHAR2\(7)) # (!\inst4|new_cursor_column[7]~26\))) # (!\inst4|cursor_column\(8) & (\inst4|PACKET_CHAR2\(7) & !\inst4|new_cursor_column[7]~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(8),
	datab => \inst4|PACKET_CHAR2\(7),
	datad => VCC,
	cin => \inst4|new_cursor_column[7]~26\,
	combout => \inst4|new_cursor_column[8]~27_combout\,
	cout => \inst4|new_cursor_column[8]~28\);

-- Location: LCCOMB_X32_Y26_N28
\inst4|new_cursor_column[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[9]~29_combout\ = \inst4|PACKET_CHAR2\(7) $ (\inst4|new_cursor_column[8]~28\ $ (\inst4|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PACKET_CHAR2\(7),
	datad => \inst4|cursor_column\(9),
	cin => \inst4|new_cursor_column[8]~28\,
	combout => \inst4|new_cursor_column[9]~29_combout\);

-- Location: LCCOMB_X30_Y24_N8
\inst4|new_cursor_row[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[1]~12_combout\ = (\inst4|PACKET_CHAR3\(1) & ((\inst4|cursor_row\(1) & (!\inst4|new_cursor_row[0]~11\)) # (!\inst4|cursor_row\(1) & ((\inst4|new_cursor_row[0]~11\) # (GND))))) # (!\inst4|PACKET_CHAR3\(1) & ((\inst4|cursor_row\(1) & 
-- (\inst4|new_cursor_row[0]~11\ & VCC)) # (!\inst4|cursor_row\(1) & (!\inst4|new_cursor_row[0]~11\))))
-- \inst4|new_cursor_row[1]~13\ = CARRY((\inst4|PACKET_CHAR3\(1) & ((!\inst4|new_cursor_row[0]~11\) # (!\inst4|cursor_row\(1)))) # (!\inst4|PACKET_CHAR3\(1) & (!\inst4|cursor_row\(1) & !\inst4|new_cursor_row[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR3\(1),
	datab => \inst4|cursor_row\(1),
	datad => VCC,
	cin => \inst4|new_cursor_row[0]~11\,
	combout => \inst4|new_cursor_row[1]~12_combout\,
	cout => \inst4|new_cursor_row[1]~13\);

-- Location: LCCOMB_X30_Y24_N16
\inst4|new_cursor_row[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[5]~20_combout\ = (\inst4|PACKET_CHAR3\(5) & ((\inst4|cursor_row\(5) & (!\inst4|new_cursor_row[4]~19\)) # (!\inst4|cursor_row\(5) & ((\inst4|new_cursor_row[4]~19\) # (GND))))) # (!\inst4|PACKET_CHAR3\(5) & ((\inst4|cursor_row\(5) & 
-- (\inst4|new_cursor_row[4]~19\ & VCC)) # (!\inst4|cursor_row\(5) & (!\inst4|new_cursor_row[4]~19\))))
-- \inst4|new_cursor_row[5]~21\ = CARRY((\inst4|PACKET_CHAR3\(5) & ((!\inst4|new_cursor_row[4]~19\) # (!\inst4|cursor_row\(5)))) # (!\inst4|PACKET_CHAR3\(5) & (!\inst4|cursor_row\(5) & !\inst4|new_cursor_row[4]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR3\(5),
	datab => \inst4|cursor_row\(5),
	datad => VCC,
	cin => \inst4|new_cursor_row[4]~19\,
	combout => \inst4|new_cursor_row[5]~20_combout\,
	cout => \inst4|new_cursor_row[5]~21\);

-- Location: LCCOMB_X33_Y28_N6
\inst1|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~0_combout\ = \inst1|Move_Ball:counter[0]~q\ $ (VCC)
-- \inst1|Add4~1\ = CARRY(\inst1|Move_Ball:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Move_Ball:counter[0]~q\,
	datad => VCC,
	combout => \inst1|Add4~0_combout\,
	cout => \inst1|Add4~1\);

-- Location: LCCOMB_X33_Y28_N10
\inst1|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~4_combout\ = (\inst1|Move_Ball:counter[2]~q\ & (\inst1|Add4~3\ $ (GND))) # (!\inst1|Move_Ball:counter[2]~q\ & (!\inst1|Add4~3\ & VCC))
-- \inst1|Add4~5\ = CARRY((\inst1|Move_Ball:counter[2]~q\ & !\inst1|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Move_Ball:counter[2]~q\,
	datad => VCC,
	cin => \inst1|Add4~3\,
	combout => \inst1|Add4~4_combout\,
	cout => \inst1|Add4~5\);

-- Location: LCCOMB_X33_Y28_N12
\inst1|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~6_combout\ = (\inst1|Move_Ball:counter[3]~q\ & (!\inst1|Add4~5\)) # (!\inst1|Move_Ball:counter[3]~q\ & ((\inst1|Add4~5\) # (GND)))
-- \inst1|Add4~7\ = CARRY((!\inst1|Add4~5\) # (!\inst1|Move_Ball:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Move_Ball:counter[3]~q\,
	datad => VCC,
	cin => \inst1|Add4~5\,
	combout => \inst1|Add4~6_combout\,
	cout => \inst1|Add4~7\);

-- Location: LCCOMB_X33_Y28_N22
\inst1|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~16_combout\ = (\inst1|Move_Ball:counter[8]~q\ & (\inst1|Add4~15\ $ (GND))) # (!\inst1|Move_Ball:counter[8]~q\ & (!\inst1|Add4~15\ & VCC))
-- \inst1|Add4~17\ = CARRY((\inst1|Move_Ball:counter[8]~q\ & !\inst1|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Move_Ball:counter[8]~q\,
	datad => VCC,
	cin => \inst1|Add4~15\,
	combout => \inst1|Add4~16_combout\,
	cout => \inst1|Add4~17\);

-- Location: LCCOMB_X35_Y28_N14
\inst1|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add6~4_combout\ = ((\inst1|Ball_Y_motion\(2) $ (\inst1|Ball_Y_pos\(3) $ (!\inst1|Add6~3\)))) # (GND)
-- \inst1|Add6~5\ = CARRY((\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(3)) # (!\inst1|Add6~3\))) # (!\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos\(3) & !\inst1|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst1|Add6~3\,
	combout => \inst1|Add6~4_combout\,
	cout => \inst1|Add6~5\);

-- Location: LCCOMB_X35_Y28_N16
\inst1|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add6~6_combout\ = (\inst1|Ball_Y_pos\(4) & ((\inst1|Ball_Y_motion\(2) & (\inst1|Add6~5\ & VCC)) # (!\inst1|Ball_Y_motion\(2) & (!\inst1|Add6~5\)))) # (!\inst1|Ball_Y_pos\(4) & ((\inst1|Ball_Y_motion\(2) & (!\inst1|Add6~5\)) # 
-- (!\inst1|Ball_Y_motion\(2) & ((\inst1|Add6~5\) # (GND)))))
-- \inst1|Add6~7\ = CARRY((\inst1|Ball_Y_pos\(4) & (!\inst1|Ball_Y_motion\(2) & !\inst1|Add6~5\)) # (!\inst1|Ball_Y_pos\(4) & ((!\inst1|Add6~5\) # (!\inst1|Ball_Y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(4),
	datab => \inst1|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst1|Add6~5\,
	combout => \inst1|Add6~6_combout\,
	cout => \inst1|Add6~7\);

-- Location: LCCOMB_X35_Y28_N24
\inst1|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add6~14_combout\ = (\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(8) & (\inst1|Add6~13\ & VCC)) # (!\inst1|Ball_Y_pos\(8) & (!\inst1|Add6~13\)))) # (!\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(8) & (!\inst1|Add6~13\)) # 
-- (!\inst1|Ball_Y_pos\(8) & ((\inst1|Add6~13\) # (GND)))))
-- \inst1|Add6~15\ = CARRY((\inst1|Ball_Y_motion\(2) & (!\inst1|Ball_Y_pos\(8) & !\inst1|Add6~13\)) # (!\inst1|Ball_Y_motion\(2) & ((!\inst1|Add6~13\) # (!\inst1|Ball_Y_pos\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst1|Add6~13\,
	combout => \inst1|Add6~14_combout\,
	cout => \inst1|Add6~15\);

-- Location: LCCOMB_X35_Y28_N26
\inst1|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add6~16_combout\ = \inst1|Ball_Y_pos\(9) $ (\inst1|Ball_Y_motion\(2) $ (!\inst1|Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(9),
	datab => \inst1|Ball_Y_motion\(2),
	cin => \inst1|Add6~15\,
	combout => \inst1|Add6~16_combout\);

-- Location: LCCOMB_X36_Y26_N6
\inst1|SYNC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~0_combout\ = \inst1|SYNC|h_count\(0) $ (VCC)
-- \inst1|SYNC|Add0~1\ = CARRY(\inst1|SYNC|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(0),
	datad => VCC,
	combout => \inst1|SYNC|Add0~0_combout\,
	cout => \inst1|SYNC|Add0~1\);

-- Location: FF_X33_Y21_N13
\inst4|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[4]~16_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(4));

-- Location: FF_X33_Y21_N11
\inst4|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[3]~14_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(3));

-- Location: FF_X33_Y21_N7
\inst4|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[1]~10_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(1));

-- Location: LCCOMB_X33_Y21_N6
\inst4|inhibit_wait_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[1]~10_combout\ = (\inst4|inhibit_wait_count\(1) & (\inst4|inhibit_wait_count\(0) $ (VCC))) # (!\inst4|inhibit_wait_count\(1) & (\inst4|inhibit_wait_count\(0) & VCC))
-- \inst4|inhibit_wait_count[1]~11\ = CARRY((\inst4|inhibit_wait_count\(1) & \inst4|inhibit_wait_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(1),
	datab => \inst4|inhibit_wait_count\(0),
	datad => VCC,
	combout => \inst4|inhibit_wait_count[1]~10_combout\,
	cout => \inst4|inhibit_wait_count[1]~11\);

-- Location: LCCOMB_X33_Y21_N10
\inst4|inhibit_wait_count[3]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[3]~14_combout\ = (\inst4|inhibit_wait_count\(3) & (\inst4|inhibit_wait_count[2]~13\ $ (GND))) # (!\inst4|inhibit_wait_count\(3) & (!\inst4|inhibit_wait_count[2]~13\ & VCC))
-- \inst4|inhibit_wait_count[3]~15\ = CARRY((\inst4|inhibit_wait_count\(3) & !\inst4|inhibit_wait_count[2]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[2]~13\,
	combout => \inst4|inhibit_wait_count[3]~14_combout\,
	cout => \inst4|inhibit_wait_count[3]~15\);

-- Location: LCCOMB_X33_Y21_N12
\inst4|inhibit_wait_count[4]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[4]~16_combout\ = (\inst4|inhibit_wait_count\(4) & (!\inst4|inhibit_wait_count[3]~15\)) # (!\inst4|inhibit_wait_count\(4) & ((\inst4|inhibit_wait_count[3]~15\) # (GND)))
-- \inst4|inhibit_wait_count[4]~17\ = CARRY((!\inst4|inhibit_wait_count[3]~15\) # (!\inst4|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[3]~15\,
	combout => \inst4|inhibit_wait_count[4]~16_combout\,
	cout => \inst4|inhibit_wait_count[4]~17\);

-- Location: FF_X37_Y27_N27
\inst1|SYNC|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(6),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(6));

-- Location: FF_X37_Y26_N31
\inst1|SYNC|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|pixel_column[4]~feeder_combout\,
	ena => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(4));

-- Location: FF_X37_Y26_N11
\inst1|SYNC|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(2),
	sload => VCC,
	ena => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(2));

-- Location: LCCOMB_X37_Y26_N10
\inst1|Ball_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~0_combout\ = (\inst1|SYNC|pixel_column\(4)) # ((\inst1|SYNC|pixel_column\(3) & \inst1|SYNC|pixel_column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(4),
	datab => \inst1|SYNC|pixel_column\(3),
	datac => \inst1|SYNC|pixel_column\(2),
	combout => \inst1|Ball_on~0_combout\);

-- Location: FF_X37_Y26_N13
\inst1|SYNC|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(0),
	sload => VCC,
	ena => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(0));

-- Location: FF_X37_Y26_N15
\inst1|SYNC|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(1),
	sload => VCC,
	ena => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(1));

-- Location: LCCOMB_X37_Y26_N12
\inst1|Ball_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~3_combout\ = (\inst1|SYNC|pixel_column\(3) & (\inst1|SYNC|pixel_column\(8) & ((\inst1|SYNC|pixel_column\(1)) # (\inst1|SYNC|pixel_column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(1),
	datab => \inst1|SYNC|pixel_column\(3),
	datac => \inst1|SYNC|pixel_column\(0),
	datad => \inst1|SYNC|pixel_column\(8),
	combout => \inst1|Ball_on~3_combout\);

-- Location: LCCOMB_X37_Y26_N6
\inst1|Ball_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~4_combout\ = (\inst1|Add0~8_combout\ & (!\inst1|Add0~10_combout\ & ((!\inst1|Ball_on~3_combout\) # (!\inst1|SYNC|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datab => \inst1|Add0~10_combout\,
	datac => \inst1|SYNC|pixel_column\(6),
	datad => \inst1|Ball_on~3_combout\,
	combout => \inst1|Ball_on~4_combout\);

-- Location: FF_X36_Y26_N7
\inst1|SYNC|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(0));

-- Location: LCCOMB_X36_Y26_N28
\inst1|SYNC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~1_combout\ = (\inst1|SYNC|h_count\(3)) # ((\inst1|SYNC|h_count\(0) & (\inst1|SYNC|h_count\(1) & !\inst1|SYNC|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(0),
	datab => \inst1|SYNC|h_count\(1),
	datac => \inst1|SYNC|h_count\(5),
	datad => \inst1|SYNC|h_count\(3),
	combout => \inst1|SYNC|process_0~1_combout\);

-- Location: LCCOMB_X36_Y26_N2
\inst1|SYNC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~2_combout\ = (\inst1|SYNC|h_count\(4) & ((\inst1|SYNC|process_0~1_combout\) # (\inst1|SYNC|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|process_0~1_combout\,
	datac => \inst1|SYNC|h_count\(4),
	datad => \inst1|SYNC|h_count\(2),
	combout => \inst1|SYNC|process_0~2_combout\);

-- Location: FF_X21_Y1_N13
\inst4|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst4|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(7));

-- Location: LCCOMB_X21_Y1_N12
\inst4|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~0_combout\ = (\inst4|filter\(4) & ((\inst4|filter\(7)) # (!\inst4|filter\(2)))) # (!\inst4|filter\(4) & (\inst4|filter\(7) & !\inst4|filter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|filter\(4),
	datac => \inst4|filter\(7),
	datad => \inst4|filter\(2),
	combout => \inst4|MOUSE_CLK_FILTER~0_combout\);

-- Location: FF_X33_Y26_N3
\inst4|PACKET_CHAR2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR2[5]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(5));

-- Location: FF_X31_Y24_N1
\inst4|PACKET_CHAR2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst4|SHIFTIN\(4),
	sload => VCC,
	ena => \inst4|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(4));

-- Location: FF_X31_Y26_N5
\inst4|cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~12_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(3));

-- Location: FF_X33_Y26_N21
\inst4|PACKET_CHAR2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR2[2]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(2));

-- Location: FF_X33_Y26_N7
\inst4|PACKET_CHAR2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR2[1]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(1));

-- Location: FF_X31_Y26_N11
\inst4|cursor_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~15_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(0));

-- Location: FF_X29_Y24_N17
\inst4|PACKET_CHAR3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[6]~feeder_combout\,
	ena => \inst4|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(6));

-- Location: FF_X29_Y24_N15
\inst4|PACKET_CHAR3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[5]~feeder_combout\,
	ena => \inst4|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(5));

-- Location: FF_X31_Y24_N7
\inst4|cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~5_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(4));

-- Location: FF_X30_Y24_N27
\inst4|PACKET_CHAR3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[3]~feeder_combout\,
	ena => \inst4|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(3));

-- Location: FF_X31_Y24_N31
\inst4|cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~7_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(2));

-- Location: FF_X30_Y24_N31
\inst4|PACKET_CHAR3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[1]~feeder_combout\,
	ena => \inst4|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(1));

-- Location: FF_X31_Y24_N3
\inst4|cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~9_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(0));

-- Location: FF_X32_Y28_N27
\inst1|Move_Ball:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Move_Ball:counter[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Move_Ball:counter[8]~q\);

-- Location: FF_X32_Y28_N13
\inst1|Move_Ball:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Move_Ball:counter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Move_Ball:counter[6]~q\);

-- Location: FF_X33_Y28_N31
\inst1|Move_Ball:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Add4~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Move_Ball:counter[2]~q\);

-- Location: FF_X33_Y28_N27
\inst1|Move_Ball:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Add4~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Move_Ball:counter[0]~q\);

-- Location: FF_X35_Y28_N7
\inst1|Ball_Y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_motion~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_motion\(1));

-- Location: LCCOMB_X32_Y28_N28
\inst1|Add4~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~21_combout\ = (!\inst1|counter~0_combout\ & \inst1|Add4~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|counter~0_combout\,
	datad => \inst1|Add4~16_combout\,
	combout => \inst1|Add4~21_combout\);

-- Location: LCCOMB_X36_Y26_N4
\inst1|SYNC|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal0~0_combout\ = (\inst1|SYNC|h_count\(0) & (\inst1|SYNC|h_count\(1) & (\inst1|SYNC|h_count\(4) & \inst1|SYNC|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(0),
	datab => \inst1|SYNC|h_count\(1),
	datac => \inst1|SYNC|h_count\(4),
	datad => \inst1|SYNC|h_count\(3),
	combout => \inst1|SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X35_Y26_N22
\inst1|SYNC|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal0~1_combout\ = (!\inst1|SYNC|h_count\(7) & (!\inst1|SYNC|h_count\(5) & (\inst1|SYNC|h_count\(2) & \inst1|SYNC|h_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(7),
	datab => \inst1|SYNC|h_count\(5),
	datac => \inst1|SYNC|h_count\(2),
	datad => \inst1|SYNC|h_count\(8),
	combout => \inst1|SYNC|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y26_N12
\inst1|SYNC|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal0~2_combout\ = (\inst1|SYNC|Equal0~0_combout\ & (\inst1|SYNC|h_count\(9) & (\inst1|SYNC|Equal0~1_combout\ & !\inst1|SYNC|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Equal0~0_combout\,
	datab => \inst1|SYNC|h_count\(9),
	datac => \inst1|SYNC|Equal0~1_combout\,
	datad => \inst1|SYNC|h_count\(6),
	combout => \inst1|SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y24_N12
\inst1|SYNC|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~7_combout\ = (!\inst1|SYNC|v_count\(5) & (!\inst1|SYNC|v_count\(4) & ((!\inst1|SYNC|v_count\(2)) # (!\inst1|SYNC|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(5),
	datab => \inst1|SYNC|v_count\(4),
	datac => \inst1|SYNC|v_count\(3),
	datad => \inst1|SYNC|v_count\(2),
	combout => \inst1|SYNC|process_0~7_combout\);

-- Location: LCCOMB_X37_Y24_N10
\inst1|SYNC|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~8_combout\ = (\inst1|SYNC|process_0~7_combout\ & (!\inst1|SYNC|v_count\(7) & (!\inst1|SYNC|v_count\(6) & !\inst1|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~7_combout\,
	datab => \inst1|SYNC|v_count\(7),
	datac => \inst1|SYNC|v_count\(6),
	datad => \inst1|SYNC|v_count\(8),
	combout => \inst1|SYNC|process_0~8_combout\);

-- Location: LCCOMB_X36_Y26_N26
\inst1|SYNC|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~9_combout\ = ((!\inst1|SYNC|h_count\(2) & ((!\inst1|SYNC|h_count\(0)) # (!\inst1|SYNC|h_count\(1))))) # (!\inst1|SYNC|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(2),
	datab => \inst1|SYNC|h_count\(3),
	datac => \inst1|SYNC|h_count\(1),
	datad => \inst1|SYNC|h_count\(0),
	combout => \inst1|SYNC|process_0~9_combout\);

-- Location: LCCOMB_X37_Y24_N26
\inst1|SYNC|v_count[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[7]~3_combout\ = (!\inst1|SYNC|Equal1~1_combout\ & ((\inst1|SYNC|process_0~8_combout\) # ((\inst1|SYNC|process_0~12_combout\) # (\inst1|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~8_combout\,
	datab => \inst1|SYNC|process_0~12_combout\,
	datac => \inst1|SYNC|Equal1~1_combout\,
	datad => \inst1|SYNC|process_0~11_combout\,
	combout => \inst1|SYNC|v_count[7]~3_combout\);

-- Location: LCCOMB_X32_Y24_N12
\inst4|PACKET_CHAR2[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[7]~1_combout\ = (!\inst4|PACKET_COUNT\(0) & \inst4|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|PACKET_COUNT\(0),
	datad => \inst4|PACKET_COUNT\(1),
	combout => \inst4|PACKET_CHAR2[7]~1_combout\);

-- Location: LCCOMB_X31_Y26_N4
\inst4|cursor_column~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~12_combout\ = (\inst4|new_cursor_column\(3) & \inst4|cursor_column[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|new_cursor_column\(3),
	datad => \inst4|cursor_column[0]~5_combout\,
	combout => \inst4|cursor_column~12_combout\);

-- Location: LCCOMB_X31_Y26_N10
\inst4|cursor_column~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~15_combout\ = (\inst4|new_cursor_column\(0) & \inst4|cursor_column[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|new_cursor_column\(0),
	datad => \inst4|cursor_column[0]~5_combout\,
	combout => \inst4|cursor_column~15_combout\);

-- Location: LCCOMB_X31_Y24_N6
\inst4|cursor_row~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~5_combout\ = ((\inst4|new_cursor_row\(4) & (\inst4|cursor_row~0_combout\ & !\inst4|RECV_UART~7_combout\))) # (!\inst4|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(4),
	datab => \inst4|cursor_row~0_combout\,
	datac => \inst4|Equal3~0_combout\,
	datad => \inst4|RECV_UART~7_combout\,
	combout => \inst4|cursor_row~5_combout\);

-- Location: LCCOMB_X31_Y24_N30
\inst4|cursor_row~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~7_combout\ = (\inst4|new_cursor_row\(2) & (\inst4|cursor_row~0_combout\ & (\inst4|Equal3~0_combout\ & !\inst4|RECV_UART~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(2),
	datab => \inst4|cursor_row~0_combout\,
	datac => \inst4|Equal3~0_combout\,
	datad => \inst4|RECV_UART~7_combout\,
	combout => \inst4|cursor_row~7_combout\);

-- Location: LCCOMB_X31_Y24_N2
\inst4|cursor_row~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~9_combout\ = (\inst4|Equal3~0_combout\ & (\inst4|cursor_row~0_combout\ & (\inst4|new_cursor_row\(0) & !\inst4|RECV_UART~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal3~0_combout\,
	datab => \inst4|cursor_row~0_combout\,
	datac => \inst4|new_cursor_row\(0),
	datad => \inst4|RECV_UART~7_combout\,
	combout => \inst4|cursor_row~9_combout\);

-- Location: LCCOMB_X33_Y28_N30
\inst1|Add4~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~27_combout\ = (!\inst1|counter~0_combout\ & \inst1|Add4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter~0_combout\,
	datad => \inst1|Add4~4_combout\,
	combout => \inst1|Add4~27_combout\);

-- Location: LCCOMB_X33_Y28_N26
\inst1|Add4~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~29_combout\ = (\inst1|Add4~0_combout\ & !\inst1|counter~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~0_combout\,
	datad => \inst1|counter~0_combout\,
	combout => \inst1|Add4~29_combout\);

-- Location: LCCOMB_X35_Y28_N6
\inst1|Ball_Y_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion~4_combout\ = (\inst4|left_button~q\ & ((\inst1|Ball_Y_motion~2_combout\) # (!\inst1|LessThan4~4_combout\))) # (!\inst4|left_button~q\ & ((\inst1|LessThan4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Ball_Y_motion~2_combout\,
	datac => \inst4|left_button~q\,
	datad => \inst1|LessThan4~4_combout\,
	combout => \inst1|Ball_Y_motion~4_combout\);

-- Location: FF_X33_Y22_N1
\inst4|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X33_Y22_N0
\inst4|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector4~0_combout\ = (\inst4|output_ready~q\ & ((\inst4|mouse_state.WAIT_OUTPUT_READY~q\) # ((\inst4|mouse_state.WAIT_CMD_ACK~q\ & !\inst4|iready_set~q\)))) # (!\inst4|output_ready~q\ & (((\inst4|mouse_state.WAIT_CMD_ACK~q\ & 
-- !\inst4|iready_set~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|output_ready~q\,
	datab => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst4|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst4|iready_set~q\,
	combout => \inst4|Selector4~0_combout\);

-- Location: LCCOMB_X35_Y28_N0
\inst1|LessThan4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan4~4_combout\ = (!\inst1|Ball_Y_pos\(9) & (((\inst1|LessThan4~2_combout\) # (!\inst1|Ball_Y_pos\(7))) # (!\inst1|Ball_Y_pos\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(9),
	datab => \inst1|Ball_Y_pos\(8),
	datac => \inst1|Ball_Y_pos\(7),
	datad => \inst1|LessThan4~2_combout\,
	combout => \inst1|LessThan4~4_combout\);

-- Location: IOIBUF_X0_Y26_N1
\SW[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\SW[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\SW[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: CLKCTRL_G5
\inst1|SYNC|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|SYNC|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y26_N30
\inst1|SYNC|pixel_column[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|pixel_column[4]~feeder_combout\ = \inst1|SYNC|h_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|h_count\(4),
	combout => \inst1|SYNC|pixel_column[4]~feeder_combout\);

-- Location: LCCOMB_X33_Y26_N6
\inst4|PACKET_CHAR2[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[1]~feeder_combout\ = \inst4|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(1),
	combout => \inst4|PACKET_CHAR2[1]~feeder_combout\);

-- Location: LCCOMB_X30_Y24_N30
\inst4|PACKET_CHAR3[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[1]~feeder_combout\ = \inst4|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(1),
	combout => \inst4|PACKET_CHAR3[1]~feeder_combout\);

-- Location: LCCOMB_X32_Y28_N26
\inst1|Move_Ball:counter[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Move_Ball:counter[8]~feeder_combout\ = \inst1|Add4~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add4~21_combout\,
	combout => \inst1|Move_Ball:counter[8]~feeder_combout\);

-- Location: LCCOMB_X32_Y28_N12
\inst1|Move_Ball:counter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Move_Ball:counter[6]~feeder_combout\ = \inst1|Add4~23_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Add4~23_combout\,
	combout => \inst1|Move_Ball:counter[6]~feeder_combout\);

-- Location: LCCOMB_X33_Y26_N20
\inst4|PACKET_CHAR2[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[2]~feeder_combout\ = \inst4|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(2),
	combout => \inst4|PACKET_CHAR2[2]~feeder_combout\);

-- Location: LCCOMB_X29_Y24_N16
\inst4|PACKET_CHAR3[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[6]~feeder_combout\ = \inst4|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(6),
	combout => \inst4|PACKET_CHAR3[6]~feeder_combout\);

-- Location: LCCOMB_X29_Y24_N14
\inst4|PACKET_CHAR3[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[5]~feeder_combout\ = \inst4|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(5),
	combout => \inst4|PACKET_CHAR3[5]~feeder_combout\);

-- Location: LCCOMB_X33_Y26_N2
\inst4|PACKET_CHAR2[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[5]~feeder_combout\ = \inst4|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(5),
	combout => \inst4|PACKET_CHAR2[5]~feeder_combout\);

-- Location: LCCOMB_X30_Y24_N26
\inst4|PACKET_CHAR3[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[3]~feeder_combout\ = \inst4|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(3),
	combout => \inst4|PACKET_CHAR3[3]~feeder_combout\);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_horiz_sync_out);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X23_Y29_N9
\seg0_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|right_button~q\,
	devoe => ww_devoe,
	o => ww_seg0_dec);

-- Location: IOOBUF_X26_Y29_N30
\seg1_dec~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|left_button~q\,
	devoe => ww_devoe,
	o => ww_seg1_dec);

-- Location: IOOBUF_X30_Y29_N30
\LEDG[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|tmp\(10),
	devoe => ww_devoe,
	o => ww_LEDG(9));

-- Location: IOOBUF_X0_Y27_N9
\LEDG[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_tmp\(9),
	devoe => ww_devoe,
	o => ww_LEDG(8));

-- Location: IOOBUF_X0_Y26_N16
\LEDG[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|tmp\(8),
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X0_Y26_N23
\LEDG[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_tmp\(7),
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X0_Y24_N16
\LEDG[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|tmp\(6),
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X0_Y24_N23
\LEDG[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_tmp\(5),
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X0_Y21_N16
\LEDG[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|tmp\(4),
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X0_Y21_N23
\LEDG[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_tmp\(3),
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X0_Y20_N2
\LEDG[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_tmp\(2),
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X0_Y20_N9
\LEDG[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|tmp\(1),
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_LED_out[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_seg0(6));

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_seg0(5));

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_seg0(4));

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_seg0(3));

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_seg0(2));

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_seg0(1));

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|LED_out[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_seg0(0));

-- Location: IOOBUF_X26_Y29_N23
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|LED_out[6]~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(6));

-- Location: IOOBUF_X28_Y29_N16
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|LED_out[5]~1_combout\,
	devoe => ww_devoe,
	o => ww_seg1(5));

-- Location: IOOBUF_X23_Y29_N30
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|LED_out[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_seg1(4));

-- Location: IOOBUF_X23_Y29_N23
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|LED_out[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_seg1(3));

-- Location: IOOBUF_X23_Y29_N2
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|LED_out[2]~4_combout\,
	devoe => ww_devoe,
	o => ww_seg1(2));

-- Location: IOOBUF_X21_Y29_N9
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|LED_out[1]~5_combout\,
	devoe => ww_devoe,
	o => ww_seg1(1));

-- Location: IOOBUF_X21_Y29_N2
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|LED_out[0]~6_combout\,
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOOBUF_X41_Y21_N9
\VGA_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|blue_out\(3),
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X41_Y19_N2
\VGA_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|blue_out\(2),
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X41_Y19_N9
\VGA_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|blue_out\(1),
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X41_Y19_N16
\VGA_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|blue_out\(0),
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X41_Y20_N23
\VGA_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|green_out\(3),
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X41_Y21_N16
\VGA_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|green_out\(2),
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X41_Y24_N23
\VGA_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|green_out\(1),
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X41_Y20_N2
\VGA_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|green_out\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X41_Y21_N23
\VGA_R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|red_out\(3),
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X41_Y22_N2
\VGA_R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|red_out\(2),
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X41_Y25_N2
\VGA_R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|red_out\(1),
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X41_Y23_N23
\VGA_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|SYNC|red_out\(0),
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|MOUSE_DATA_BUF~q\,
	oe => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => mouse_data);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst4|WideOr4~combout\,
	devoe => ww_devoe,
	o => mouse_clk);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: LCCOMB_X22_Y3_N8
\inst4|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[0]~feeder_combout\ = \mouse_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_clk~input_o\,
	combout => \inst4|filter[0]~feeder_combout\);

-- Location: FF_X22_Y3_N9
\inst4|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(0));

-- Location: LCCOMB_X21_Y1_N30
\inst4|filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[1]~feeder_combout\ = \inst4|filter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|filter\(0),
	combout => \inst4|filter[1]~feeder_combout\);

-- Location: FF_X21_Y1_N31
\inst4|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(1));

-- Location: FF_X21_Y1_N27
\inst4|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst4|filter\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(2));

-- Location: LCCOMB_X21_Y1_N16
\inst4|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[3]~feeder_combout\ = \inst4|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|filter\(2),
	combout => \inst4|filter[3]~feeder_combout\);

-- Location: FF_X21_Y1_N17
\inst4|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(3));

-- Location: LCCOMB_X21_Y1_N14
\inst4|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~1_combout\ = (\inst4|filter\(5) & ((\inst4|MOUSE_CLK_FILTER~q\) # ((\inst4|filter\(2) & \inst4|filter\(3))))) # (!\inst4|filter\(5) & (\inst4|MOUSE_CLK_FILTER~q\ & ((\inst4|filter\(2)) # (\inst4|filter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|filter\(5),
	datab => \inst4|filter\(2),
	datac => \inst4|filter\(3),
	datad => \inst4|MOUSE_CLK_FILTER~q\,
	combout => \inst4|MOUSE_CLK_FILTER~1_combout\);

-- Location: LCCOMB_X21_Y1_N24
\inst4|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[4]~feeder_combout\ = \inst4|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|filter\(3),
	combout => \inst4|filter[4]~feeder_combout\);

-- Location: FF_X21_Y1_N25
\inst4|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(4));

-- Location: LCCOMB_X21_Y1_N22
\inst4|filter[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|filter[5]~feeder_combout\ = \inst4|filter\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|filter\(4),
	combout => \inst4|filter[5]~feeder_combout\);

-- Location: FF_X21_Y1_N23
\inst4|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|filter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(5));

-- Location: FF_X21_Y1_N21
\inst4|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst4|filter\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|filter\(6));

-- Location: LCCOMB_X21_Y1_N18
\inst4|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~2_combout\ = (\inst4|filter\(1) & ((\inst4|MOUSE_CLK_FILTER~q\) # ((\inst4|filter\(0) & \inst4|filter\(6))))) # (!\inst4|filter\(1) & (\inst4|MOUSE_CLK_FILTER~q\ & ((\inst4|filter\(0)) # (\inst4|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|filter\(1),
	datab => \inst4|filter\(0),
	datac => \inst4|filter\(6),
	datad => \inst4|MOUSE_CLK_FILTER~q\,
	combout => \inst4|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X21_Y1_N28
\inst4|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_CLK_FILTER~3_combout\ = (\inst4|MOUSE_CLK_FILTER~0_combout\ & ((\inst4|MOUSE_CLK_FILTER~q\) # ((\inst4|MOUSE_CLK_FILTER~1_combout\ & \inst4|MOUSE_CLK_FILTER~2_combout\)))) # (!\inst4|MOUSE_CLK_FILTER~0_combout\ & (\inst4|MOUSE_CLK_FILTER~q\ & 
-- ((\inst4|MOUSE_CLK_FILTER~1_combout\) # (\inst4|MOUSE_CLK_FILTER~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|MOUSE_CLK_FILTER~0_combout\,
	datab => \inst4|MOUSE_CLK_FILTER~1_combout\,
	datac => \inst4|MOUSE_CLK_FILTER~q\,
	datad => \inst4|MOUSE_CLK_FILTER~2_combout\,
	combout => \inst4|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X21_Y1_N29
\inst4|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|MOUSE_CLK_FILTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G17
\inst4|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst4|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y22_N24
\inst4|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst4|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X33_Y21_N28
\inst4|inhibit_wait_count[0]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[0]~30_combout\ = \inst4|inhibit_wait_count\(0) $ (!\inst4|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|inhibit_wait_count\(0),
	datad => \inst4|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst4|inhibit_wait_count[0]~30_combout\);

-- Location: FF_X33_Y21_N29
\inst4|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[0]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(0));

-- Location: LCCOMB_X33_Y21_N8
\inst4|inhibit_wait_count[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[2]~12_combout\ = (\inst4|inhibit_wait_count\(2) & (!\inst4|inhibit_wait_count[1]~11\)) # (!\inst4|inhibit_wait_count\(2) & ((\inst4|inhibit_wait_count[1]~11\) # (GND)))
-- \inst4|inhibit_wait_count[2]~13\ = CARRY((!\inst4|inhibit_wait_count[1]~11\) # (!\inst4|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[1]~11\,
	combout => \inst4|inhibit_wait_count[2]~12_combout\,
	cout => \inst4|inhibit_wait_count[2]~13\);

-- Location: FF_X33_Y21_N9
\inst4|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[2]~12_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(2));

-- Location: LCCOMB_X33_Y21_N14
\inst4|inhibit_wait_count[5]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[5]~18_combout\ = (\inst4|inhibit_wait_count\(5) & (\inst4|inhibit_wait_count[4]~17\ $ (GND))) # (!\inst4|inhibit_wait_count\(5) & (!\inst4|inhibit_wait_count[4]~17\ & VCC))
-- \inst4|inhibit_wait_count[5]~19\ = CARRY((\inst4|inhibit_wait_count\(5) & !\inst4|inhibit_wait_count[4]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[4]~17\,
	combout => \inst4|inhibit_wait_count[5]~18_combout\,
	cout => \inst4|inhibit_wait_count[5]~19\);

-- Location: FF_X33_Y21_N15
\inst4|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[5]~18_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(5));

-- Location: LCCOMB_X33_Y21_N16
\inst4|inhibit_wait_count[6]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[6]~20_combout\ = (\inst4|inhibit_wait_count\(6) & (!\inst4|inhibit_wait_count[5]~19\)) # (!\inst4|inhibit_wait_count\(6) & ((\inst4|inhibit_wait_count[5]~19\) # (GND)))
-- \inst4|inhibit_wait_count[6]~21\ = CARRY((!\inst4|inhibit_wait_count[5]~19\) # (!\inst4|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[5]~19\,
	combout => \inst4|inhibit_wait_count[6]~20_combout\,
	cout => \inst4|inhibit_wait_count[6]~21\);

-- Location: FF_X33_Y21_N17
\inst4|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[6]~20_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(6));

-- Location: LCCOMB_X33_Y21_N18
\inst4|inhibit_wait_count[7]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[7]~22_combout\ = (\inst4|inhibit_wait_count\(7) & (\inst4|inhibit_wait_count[6]~21\ $ (GND))) # (!\inst4|inhibit_wait_count\(7) & (!\inst4|inhibit_wait_count[6]~21\ & VCC))
-- \inst4|inhibit_wait_count[7]~23\ = CARRY((\inst4|inhibit_wait_count\(7) & !\inst4|inhibit_wait_count[6]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[6]~21\,
	combout => \inst4|inhibit_wait_count[7]~22_combout\,
	cout => \inst4|inhibit_wait_count[7]~23\);

-- Location: FF_X33_Y21_N19
\inst4|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[7]~22_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(7));

-- Location: LCCOMB_X33_Y21_N20
\inst4|inhibit_wait_count[8]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[8]~24_combout\ = (\inst4|inhibit_wait_count\(8) & (!\inst4|inhibit_wait_count[7]~23\)) # (!\inst4|inhibit_wait_count\(8) & ((\inst4|inhibit_wait_count[7]~23\) # (GND)))
-- \inst4|inhibit_wait_count[8]~25\ = CARRY((!\inst4|inhibit_wait_count[7]~23\) # (!\inst4|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[7]~23\,
	combout => \inst4|inhibit_wait_count[8]~24_combout\,
	cout => \inst4|inhibit_wait_count[8]~25\);

-- Location: FF_X33_Y21_N21
\inst4|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[8]~24_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(8));

-- Location: LCCOMB_X33_Y21_N22
\inst4|inhibit_wait_count[9]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[9]~26_combout\ = (\inst4|inhibit_wait_count\(9) & (\inst4|inhibit_wait_count[8]~25\ $ (GND))) # (!\inst4|inhibit_wait_count\(9) & (!\inst4|inhibit_wait_count[8]~25\ & VCC))
-- \inst4|inhibit_wait_count[9]~27\ = CARRY((\inst4|inhibit_wait_count\(9) & !\inst4|inhibit_wait_count[8]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst4|inhibit_wait_count[8]~25\,
	combout => \inst4|inhibit_wait_count[9]~26_combout\,
	cout => \inst4|inhibit_wait_count[9]~27\);

-- Location: LCCOMB_X33_Y21_N24
\inst4|inhibit_wait_count[10]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|inhibit_wait_count[10]~28_combout\ = \inst4|inhibit_wait_count[9]~27\ $ (\inst4|inhibit_wait_count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|inhibit_wait_count\(10),
	cin => \inst4|inhibit_wait_count[9]~27\,
	combout => \inst4|inhibit_wait_count[10]~28_combout\);

-- Location: FF_X33_Y21_N25
\inst4|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[10]~28_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(10));

-- Location: LCCOMB_X33_Y21_N0
\inst4|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector0~0_combout\ = (\inst4|mouse_state.INHIBIT_TRANS~q\) # ((\inst4|inhibit_wait_count\(9) & \inst4|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|inhibit_wait_count\(9),
	datab => \inst4|inhibit_wait_count\(10),
	datac => \inst4|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst4|Selector0~0_combout\);

-- Location: FF_X33_Y21_N1
\inst4|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.INHIBIT_TRANS~q\);

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X33_Y24_N0
\inst4|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|READ_CHAR~0_combout\ = (\inst4|READ_CHAR~q\ & (\inst4|LessThan1~0_combout\)) # (!\inst4|READ_CHAR~q\ & ((!\mouse_data~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan1~0_combout\,
	datab => \mouse_data~input_o\,
	datac => \inst4|READ_CHAR~q\,
	combout => \inst4|READ_CHAR~0_combout\);

-- Location: FF_X33_Y21_N23
\inst4|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|inhibit_wait_count[9]~26_combout\,
	ena => \inst4|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|inhibit_wait_count\(9));

-- Location: LCCOMB_X33_Y21_N2
\inst4|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector1~0_combout\ = (\inst4|inhibit_wait_count\(10) & (\inst4|inhibit_wait_count\(9) & !\inst4|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|inhibit_wait_count\(10),
	datac => \inst4|inhibit_wait_count\(9),
	datad => \inst4|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst4|Selector1~0_combout\);

-- Location: FF_X33_Y21_N3
\inst4|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.LOAD_COMMAND~q\);

-- Location: FF_X33_Y22_N25
\inst4|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst4|mouse_state.LOAD_COMMAND~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X33_Y22_N10
\inst4|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|OUTCNT~2_combout\ = (\inst4|OUTCNT\(0) & (!\inst4|OUTCNT\(1) & ((!\inst4|OUTCNT\(3)) # (!\inst4|OUTCNT\(2))))) # (!\inst4|OUTCNT\(0) & (((\inst4|OUTCNT\(1) & !\inst4|OUTCNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(2),
	datab => \inst4|OUTCNT\(0),
	datac => \inst4|OUTCNT\(1),
	datad => \inst4|OUTCNT\(3),
	combout => \inst4|OUTCNT~2_combout\);

-- Location: LCCOMB_X32_Y22_N14
\inst4|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|send_char~0_combout\ = (\inst4|send_char~q\) # ((\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & \inst4|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst4|send_char~q\,
	datad => \inst4|LessThan0~0_combout\,
	combout => \inst4|send_char~0_combout\);

-- Location: FF_X32_Y22_N15
\inst4|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|send_char~0_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|send_char~q\);

-- Location: LCCOMB_X33_Y22_N2
\inst4|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|output_ready~0_combout\ = (\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst4|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst4|send_char~q\,
	combout => \inst4|output_ready~0_combout\);

-- Location: FF_X33_Y22_N11
\inst4|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|OUTCNT~2_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|OUTCNT\(1));

-- Location: LCCOMB_X33_Y22_N18
\inst4|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|OUTCNT~0_combout\ = (\inst4|OUTCNT\(2) & (\inst4|OUTCNT\(0) & (!\inst4|OUTCNT\(3) & \inst4|OUTCNT\(1)))) # (!\inst4|OUTCNT\(2) & (((\inst4|OUTCNT\(3) & !\inst4|OUTCNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(2),
	datab => \inst4|OUTCNT\(0),
	datac => \inst4|OUTCNT\(3),
	datad => \inst4|OUTCNT\(1),
	combout => \inst4|OUTCNT~0_combout\);

-- Location: FF_X33_Y22_N19
\inst4|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|OUTCNT~0_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|OUTCNT\(3));

-- Location: LCCOMB_X33_Y22_N28
\inst4|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|OUTCNT~3_combout\ = (!\inst4|OUTCNT\(0) & (((!\inst4|OUTCNT\(2) & !\inst4|OUTCNT\(1))) # (!\inst4|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(2),
	datab => \inst4|OUTCNT\(3),
	datac => \inst4|OUTCNT\(0),
	datad => \inst4|OUTCNT\(1),
	combout => \inst4|OUTCNT~3_combout\);

-- Location: FF_X33_Y22_N29
\inst4|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|OUTCNT~3_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|OUTCNT\(0));

-- Location: LCCOMB_X33_Y22_N8
\inst4|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|OUTCNT~1_combout\ = (!\inst4|OUTCNT\(3) & (\inst4|OUTCNT\(2) $ (((\inst4|OUTCNT\(0) & \inst4|OUTCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(3),
	datab => \inst4|OUTCNT\(0),
	datac => \inst4|OUTCNT\(2),
	datad => \inst4|OUTCNT\(1),
	combout => \inst4|OUTCNT~1_combout\);

-- Location: FF_X33_Y22_N9
\inst4|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|OUTCNT~1_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|OUTCNT\(2));

-- Location: LCCOMB_X33_Y22_N24
\inst4|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (\inst4|OUTCNT\(3) & ((\inst4|OUTCNT\(1)) # (\inst4|OUTCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|OUTCNT\(1),
	datab => \inst4|OUTCNT\(2),
	datad => \inst4|OUTCNT\(3),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y22_N6
\inst4|output_ready~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|output_ready~feeder_combout\ = \inst4|LessThan0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|LessThan0~0_combout\,
	combout => \inst4|output_ready~feeder_combout\);

-- Location: FF_X33_Y22_N7
\inst4|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|output_ready~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|output_ready~q\);

-- Location: LCCOMB_X32_Y24_N18
\inst4|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector3~0_combout\ = (\inst4|mouse_state.LOAD_COMMAND2~q\) # ((\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst4|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst4|output_ready~q\,
	combout => \inst4|Selector3~0_combout\);

-- Location: FF_X32_Y24_N19
\inst4|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: FF_X33_Y24_N1
\inst4|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|READ_CHAR~0_combout\,
	ena => \inst4|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|READ_CHAR~q\);

-- Location: LCCOMB_X33_Y24_N22
\inst4|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|iready_set~0_combout\ = (\inst4|READ_CHAR~q\ & (!\inst4|LessThan1~0_combout\)) # (!\inst4|READ_CHAR~q\ & (((\inst4|iready_set~q\ & \mouse_data~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan1~0_combout\,
	datab => \inst4|READ_CHAR~q\,
	datac => \inst4|iready_set~q\,
	datad => \mouse_data~input_o\,
	combout => \inst4|iready_set~0_combout\);

-- Location: FF_X33_Y24_N23
\inst4|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|iready_set~0_combout\,
	ena => \inst4|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|iready_set~q\);

-- Location: LCCOMB_X32_Y24_N20
\inst4|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|mouse_state.INPUT_PACKETS~0_combout\ = (\inst4|mouse_state.INPUT_PACKETS~q\) # ((\inst4|mouse_state.WAIT_CMD_ACK~q\ & \inst4|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.WAIT_CMD_ACK~q\,
	datac => \inst4|mouse_state.INPUT_PACKETS~q\,
	datad => \inst4|iready_set~q\,
	combout => \inst4|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: FF_X32_Y24_N21
\inst4|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X33_Y22_N30
\inst4|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector6~0_combout\ = (\inst4|send_data~q\ & ((\inst4|mouse_state.INPUT_PACKETS~q\) # (!\inst4|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|send_data~q\,
	datab => \inst4|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst4|mouse_state.INPUT_PACKETS~q\,
	combout => \inst4|Selector6~0_combout\);

-- Location: LCCOMB_X33_Y22_N20
\inst4|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Selector6~1_combout\ = (\inst4|Selector6~0_combout\) # ((\inst4|mouse_state.LOAD_COMMAND~q\) # (\inst4|mouse_state.LOAD_COMMAND2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Selector6~0_combout\,
	datac => \inst4|mouse_state.LOAD_COMMAND~q\,
	datad => \inst4|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst4|Selector6~1_combout\);

-- Location: FF_X33_Y22_N21
\inst4|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst4|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|send_data~q\);

-- Location: LCCOMB_X32_Y22_N20
\inst4|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|MOUSE_DATA_BUF~0_combout\ = (\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst4|send_char~q\ & !\inst4|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst4|send_char~q\,
	datad => \inst4|LessThan0~0_combout\,
	combout => \inst4|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X32_Y22_N25
\inst4|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(9));

-- Location: LCCOMB_X32_Y22_N22
\inst4|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[8]~3_combout\ = !\inst4|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(9),
	combout => \inst4|SHIFTOUT[8]~3_combout\);

-- Location: FF_X32_Y22_N23
\inst4|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[8]~3_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(8));

-- Location: LCCOMB_X32_Y22_N16
\inst4|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[7]~feeder_combout\ = \inst4|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTOUT\(8),
	combout => \inst4|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X32_Y22_N17
\inst4|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(7));

-- Location: LCCOMB_X32_Y22_N26
\inst4|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[6]~feeder_combout\ = \inst4|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(7),
	combout => \inst4|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X32_Y22_N27
\inst4|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(6));

-- Location: LCCOMB_X32_Y22_N12
\inst4|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[5]~feeder_combout\ = \inst4|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTOUT\(6),
	combout => \inst4|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X32_Y22_N13
\inst4|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[5]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(5));

-- Location: LCCOMB_X32_Y22_N2
\inst4|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[4]~2_combout\ = !\inst4|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(5),
	combout => \inst4|SHIFTOUT[4]~2_combout\);

-- Location: FF_X32_Y22_N3
\inst4|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[4]~2_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(4));

-- Location: LCCOMB_X32_Y22_N28
\inst4|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[3]~1_combout\ = !\inst4|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(4),
	combout => \inst4|SHIFTOUT[3]~1_combout\);

-- Location: FF_X32_Y22_N29
\inst4|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[3]~1_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(3));

-- Location: LCCOMB_X32_Y22_N10
\inst4|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[2]~0_combout\ = !\inst4|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(3),
	combout => \inst4|SHIFTOUT[2]~0_combout\);

-- Location: FF_X32_Y22_N11
\inst4|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[2]~0_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(2));

-- Location: LCCOMB_X32_Y22_N4
\inst4|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTOUT[1]~feeder_combout\ = \inst4|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTOUT\(2),
	combout => \inst4|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X32_Y22_N5
\inst4|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTOUT[1]~feeder_combout\,
	clrn => \inst4|ALT_INV_send_data~q\,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTOUT\(1));

-- Location: FF_X32_Y22_N21
\inst4|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst4|SHIFTOUT\(1),
	clrn => \inst4|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst4|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X33_Y22_N12
\inst4|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|WideOr4~combout\ = (\inst4|mouse_state.LOAD_COMMAND2~q\) # ((\inst4|mouse_state.LOAD_COMMAND~q\) # (!\inst4|mouse_state.INHIBIT_TRANS~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst4|mouse_state.LOAD_COMMAND~q\,
	datad => \inst4|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst4|WideOr4~combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_2
\inst3|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5738,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	fbin => \inst3|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst3|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst3|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst3|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y26_N8
\inst1|SYNC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~2_combout\ = (\inst1|SYNC|h_count\(1) & (!\inst1|SYNC|Add0~1\)) # (!\inst1|SYNC|h_count\(1) & ((\inst1|SYNC|Add0~1\) # (GND)))
-- \inst1|SYNC|Add0~3\ = CARRY((!\inst1|SYNC|Add0~1\) # (!\inst1|SYNC|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(1),
	datad => VCC,
	cin => \inst1|SYNC|Add0~1\,
	combout => \inst1|SYNC|Add0~2_combout\,
	cout => \inst1|SYNC|Add0~3\);

-- Location: FF_X36_Y26_N9
\inst1|SYNC|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(1));

-- Location: LCCOMB_X36_Y26_N10
\inst1|SYNC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~4_combout\ = (\inst1|SYNC|h_count\(2) & (\inst1|SYNC|Add0~3\ $ (GND))) # (!\inst1|SYNC|h_count\(2) & (!\inst1|SYNC|Add0~3\ & VCC))
-- \inst1|SYNC|Add0~5\ = CARRY((\inst1|SYNC|h_count\(2) & !\inst1|SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(2),
	datad => VCC,
	cin => \inst1|SYNC|Add0~3\,
	combout => \inst1|SYNC|Add0~4_combout\,
	cout => \inst1|SYNC|Add0~5\);

-- Location: LCCOMB_X36_Y26_N12
\inst1|SYNC|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~6_combout\ = (\inst1|SYNC|h_count\(3) & (!\inst1|SYNC|Add0~5\)) # (!\inst1|SYNC|h_count\(3) & ((\inst1|SYNC|Add0~5\) # (GND)))
-- \inst1|SYNC|Add0~7\ = CARRY((!\inst1|SYNC|Add0~5\) # (!\inst1|SYNC|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(3),
	datad => VCC,
	cin => \inst1|SYNC|Add0~5\,
	combout => \inst1|SYNC|Add0~6_combout\,
	cout => \inst1|SYNC|Add0~7\);

-- Location: LCCOMB_X36_Y26_N14
\inst1|SYNC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~8_combout\ = (\inst1|SYNC|h_count\(4) & (\inst1|SYNC|Add0~7\ $ (GND))) # (!\inst1|SYNC|h_count\(4) & (!\inst1|SYNC|Add0~7\ & VCC))
-- \inst1|SYNC|Add0~9\ = CARRY((\inst1|SYNC|h_count\(4) & !\inst1|SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(4),
	datad => VCC,
	cin => \inst1|SYNC|Add0~7\,
	combout => \inst1|SYNC|Add0~8_combout\,
	cout => \inst1|SYNC|Add0~9\);

-- Location: FF_X36_Y26_N15
\inst1|SYNC|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(4));

-- Location: LCCOMB_X36_Y26_N16
\inst1|SYNC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~10_combout\ = (\inst1|SYNC|h_count\(5) & (!\inst1|SYNC|Add0~9\)) # (!\inst1|SYNC|h_count\(5) & ((\inst1|SYNC|Add0~9\) # (GND)))
-- \inst1|SYNC|Add0~11\ = CARRY((!\inst1|SYNC|Add0~9\) # (!\inst1|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(5),
	datad => VCC,
	cin => \inst1|SYNC|Add0~9\,
	combout => \inst1|SYNC|Add0~10_combout\,
	cout => \inst1|SYNC|Add0~11\);

-- Location: LCCOMB_X35_Y26_N16
\inst1|SYNC|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|h_count~2_combout\ = (!\inst1|SYNC|Equal0~2_combout\ & \inst1|SYNC|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Equal0~2_combout\,
	datad => \inst1|SYNC|Add0~10_combout\,
	combout => \inst1|SYNC|h_count~2_combout\);

-- Location: FF_X35_Y26_N17
\inst1|SYNC|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(5));

-- Location: LCCOMB_X36_Y26_N18
\inst1|SYNC|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~12_combout\ = (\inst1|SYNC|h_count\(6) & (\inst1|SYNC|Add0~11\ $ (GND))) # (!\inst1|SYNC|h_count\(6) & (!\inst1|SYNC|Add0~11\ & VCC))
-- \inst1|SYNC|Add0~13\ = CARRY((\inst1|SYNC|h_count\(6) & !\inst1|SYNC|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(6),
	datad => VCC,
	cin => \inst1|SYNC|Add0~11\,
	combout => \inst1|SYNC|Add0~12_combout\,
	cout => \inst1|SYNC|Add0~13\);

-- Location: FF_X36_Y26_N19
\inst1|SYNC|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(6));

-- Location: LCCOMB_X36_Y26_N20
\inst1|SYNC|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~14_combout\ = (\inst1|SYNC|h_count\(7) & (!\inst1|SYNC|Add0~13\)) # (!\inst1|SYNC|h_count\(7) & ((\inst1|SYNC|Add0~13\) # (GND)))
-- \inst1|SYNC|Add0~15\ = CARRY((!\inst1|SYNC|Add0~13\) # (!\inst1|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(7),
	datad => VCC,
	cin => \inst1|SYNC|Add0~13\,
	combout => \inst1|SYNC|Add0~14_combout\,
	cout => \inst1|SYNC|Add0~15\);

-- Location: FF_X36_Y26_N21
\inst1|SYNC|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(7));

-- Location: LCCOMB_X36_Y26_N22
\inst1|SYNC|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~16_combout\ = (\inst1|SYNC|h_count\(8) & (\inst1|SYNC|Add0~15\ $ (GND))) # (!\inst1|SYNC|h_count\(8) & (!\inst1|SYNC|Add0~15\ & VCC))
-- \inst1|SYNC|Add0~17\ = CARRY((\inst1|SYNC|h_count\(8) & !\inst1|SYNC|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(8),
	datad => VCC,
	cin => \inst1|SYNC|Add0~15\,
	combout => \inst1|SYNC|Add0~16_combout\,
	cout => \inst1|SYNC|Add0~17\);

-- Location: LCCOMB_X35_Y26_N6
\inst1|SYNC|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|h_count~0_combout\ = (!\inst1|SYNC|Equal0~2_combout\ & \inst1|SYNC|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Equal0~2_combout\,
	datad => \inst1|SYNC|Add0~16_combout\,
	combout => \inst1|SYNC|h_count~0_combout\);

-- Location: FF_X35_Y26_N7
\inst1|SYNC|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(8));

-- Location: LCCOMB_X36_Y26_N24
\inst1|SYNC|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~18_combout\ = \inst1|SYNC|h_count\(9) $ (\inst1|SYNC|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(9),
	cin => \inst1|SYNC|Add0~17\,
	combout => \inst1|SYNC|Add0~18_combout\);

-- Location: LCCOMB_X35_Y26_N24
\inst1|SYNC|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|h_count~1_combout\ = (!\inst1|SYNC|Equal0~2_combout\ & \inst1|SYNC|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Equal0~2_combout\,
	datad => \inst1|SYNC|Add0~18_combout\,
	combout => \inst1|SYNC|h_count~1_combout\);

-- Location: FF_X35_Y26_N25
\inst1|SYNC|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(9));

-- Location: LCCOMB_X35_Y26_N26
\inst1|SYNC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~0_combout\ = (!\inst1|SYNC|h_count\(8) & (\inst1|SYNC|h_count\(7) & \inst1|SYNC|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(8),
	datac => \inst1|SYNC|h_count\(7),
	datad => \inst1|SYNC|h_count\(9),
	combout => \inst1|SYNC|process_0~0_combout\);

-- Location: LCCOMB_X35_Y26_N28
\inst1|SYNC|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~3_combout\ = ((\inst1|SYNC|process_0~2_combout\ & (\inst1|SYNC|h_count\(5) & \inst1|SYNC|h_count\(6))) # (!\inst1|SYNC|process_0~2_combout\ & (!\inst1|SYNC|h_count\(5) & !\inst1|SYNC|h_count\(6)))) # 
-- (!\inst1|SYNC|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~2_combout\,
	datab => \inst1|SYNC|h_count\(5),
	datac => \inst1|SYNC|process_0~0_combout\,
	datad => \inst1|SYNC|h_count\(6),
	combout => \inst1|SYNC|process_0~3_combout\);

-- Location: FF_X35_Y26_N29
\inst1|SYNC|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|horiz_sync~q\);

-- Location: LCCOMB_X35_Y25_N0
\inst1|SYNC|horiz_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|horiz_sync_out~feeder_combout\ = \inst1|SYNC|horiz_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|horiz_sync~q\,
	combout => \inst1|SYNC|horiz_sync_out~feeder_combout\);

-- Location: FF_X35_Y25_N1
\inst1|SYNC|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|horiz_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|horiz_sync_out~q\);

-- Location: LCCOMB_X38_Y24_N0
\inst1|SYNC|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~0_combout\ = \inst1|SYNC|v_count\(0) $ (VCC)
-- \inst1|SYNC|Add1~1\ = CARRY(\inst1|SYNC|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|v_count\(0),
	datad => VCC,
	combout => \inst1|SYNC|Add1~0_combout\,
	cout => \inst1|SYNC|Add1~1\);

-- Location: LCCOMB_X36_Y26_N0
\inst1|SYNC|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~10_combout\ = (\inst1|SYNC|h_count\(5) & \inst1|SYNC|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(5),
	datac => \inst1|SYNC|h_count\(4),
	combout => \inst1|SYNC|process_0~10_combout\);

-- Location: LCCOMB_X36_Y26_N30
\inst1|SYNC|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~11_combout\ = (!\inst1|SYNC|h_count\(8) & (!\inst1|SYNC|h_count\(6) & ((\inst1|SYNC|process_0~9_combout\) # (!\inst1|SYNC|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~9_combout\,
	datab => \inst1|SYNC|process_0~10_combout\,
	datac => \inst1|SYNC|h_count\(8),
	datad => \inst1|SYNC|h_count\(6),
	combout => \inst1|SYNC|process_0~11_combout\);

-- Location: LCCOMB_X37_Y24_N18
\inst1|SYNC|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count~0_combout\ = (\inst1|SYNC|Add1~0_combout\ & ((\inst1|SYNC|process_0~8_combout\) # ((\inst1|SYNC|process_0~12_combout\) # (\inst1|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~8_combout\,
	datab => \inst1|SYNC|process_0~12_combout\,
	datac => \inst1|SYNC|Add1~0_combout\,
	datad => \inst1|SYNC|process_0~11_combout\,
	combout => \inst1|SYNC|v_count~0_combout\);

-- Location: FF_X37_Y24_N19
\inst1|SYNC|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|v_count~0_combout\,
	ena => \inst1|SYNC|v_count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(0));

-- Location: LCCOMB_X38_Y24_N2
\inst1|SYNC|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~2_combout\ = (\inst1|SYNC|v_count\(1) & (!\inst1|SYNC|Add1~1\)) # (!\inst1|SYNC|v_count\(1) & ((\inst1|SYNC|Add1~1\) # (GND)))
-- \inst1|SYNC|Add1~3\ = CARRY((!\inst1|SYNC|Add1~1\) # (!\inst1|SYNC|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(1),
	datad => VCC,
	cin => \inst1|SYNC|Add1~1\,
	combout => \inst1|SYNC|Add1~2_combout\,
	cout => \inst1|SYNC|Add1~3\);

-- Location: LCCOMB_X38_Y24_N4
\inst1|SYNC|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~4_combout\ = (\inst1|SYNC|v_count\(2) & (\inst1|SYNC|Add1~3\ $ (GND))) # (!\inst1|SYNC|v_count\(2) & (!\inst1|SYNC|Add1~3\ & VCC))
-- \inst1|SYNC|Add1~5\ = CARRY((\inst1|SYNC|v_count\(2) & !\inst1|SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(2),
	datad => VCC,
	cin => \inst1|SYNC|Add1~3\,
	combout => \inst1|SYNC|Add1~4_combout\,
	cout => \inst1|SYNC|Add1~5\);

-- Location: LCCOMB_X38_Y24_N6
\inst1|SYNC|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~6_combout\ = (\inst1|SYNC|v_count\(3) & (!\inst1|SYNC|Add1~5\)) # (!\inst1|SYNC|v_count\(3) & ((\inst1|SYNC|Add1~5\) # (GND)))
-- \inst1|SYNC|Add1~7\ = CARRY((!\inst1|SYNC|Add1~5\) # (!\inst1|SYNC|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|v_count\(3),
	datad => VCC,
	cin => \inst1|SYNC|Add1~5\,
	combout => \inst1|SYNC|Add1~6_combout\,
	cout => \inst1|SYNC|Add1~7\);

-- Location: LCCOMB_X37_Y24_N22
\inst1|SYNC|v_count[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[3]~5_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~6_combout\) # ((!\inst1|SYNC|v_count[7]~1_combout\ & \inst1|SYNC|v_count\(3))))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (!\inst1|SYNC|v_count[7]~1_combout\ & 
-- (\inst1|SYNC|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|v_count[7]~1_combout\,
	datac => \inst1|SYNC|v_count\(3),
	datad => \inst1|SYNC|Add1~6_combout\,
	combout => \inst1|SYNC|v_count[3]~5_combout\);

-- Location: FF_X37_Y24_N23
\inst1|SYNC|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(3));

-- Location: LCCOMB_X38_Y24_N8
\inst1|SYNC|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~8_combout\ = (\inst1|SYNC|v_count\(4) & (\inst1|SYNC|Add1~7\ $ (GND))) # (!\inst1|SYNC|v_count\(4) & (!\inst1|SYNC|Add1~7\ & VCC))
-- \inst1|SYNC|Add1~9\ = CARRY((\inst1|SYNC|v_count\(4) & !\inst1|SYNC|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|v_count\(4),
	datad => VCC,
	cin => \inst1|SYNC|Add1~7\,
	combout => \inst1|SYNC|Add1~8_combout\,
	cout => \inst1|SYNC|Add1~9\);

-- Location: LCCOMB_X38_Y24_N28
\inst1|SYNC|v_count[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[4]~6_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~8_combout\) # ((\inst1|SYNC|v_count\(4) & !\inst1|SYNC|v_count[7]~1_combout\)))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (((\inst1|SYNC|v_count\(4) & 
-- !\inst1|SYNC|v_count[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|Add1~8_combout\,
	datac => \inst1|SYNC|v_count\(4),
	datad => \inst1|SYNC|v_count[7]~1_combout\,
	combout => \inst1|SYNC|v_count[4]~6_combout\);

-- Location: FF_X38_Y24_N29
\inst1|SYNC|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(4));

-- Location: LCCOMB_X38_Y24_N10
\inst1|SYNC|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~10_combout\ = (\inst1|SYNC|v_count\(5) & (!\inst1|SYNC|Add1~9\)) # (!\inst1|SYNC|v_count\(5) & ((\inst1|SYNC|Add1~9\) # (GND)))
-- \inst1|SYNC|Add1~11\ = CARRY((!\inst1|SYNC|Add1~9\) # (!\inst1|SYNC|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(5),
	datad => VCC,
	cin => \inst1|SYNC|Add1~9\,
	combout => \inst1|SYNC|Add1~10_combout\,
	cout => \inst1|SYNC|Add1~11\);

-- Location: LCCOMB_X38_Y24_N12
\inst1|SYNC|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~12_combout\ = (\inst1|SYNC|v_count\(6) & (\inst1|SYNC|Add1~11\ $ (GND))) # (!\inst1|SYNC|v_count\(6) & (!\inst1|SYNC|Add1~11\ & VCC))
-- \inst1|SYNC|Add1~13\ = CARRY((\inst1|SYNC|v_count\(6) & !\inst1|SYNC|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|v_count\(6),
	datad => VCC,
	cin => \inst1|SYNC|Add1~11\,
	combout => \inst1|SYNC|Add1~12_combout\,
	cout => \inst1|SYNC|Add1~13\);

-- Location: LCCOMB_X38_Y24_N20
\inst1|SYNC|v_count[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[6]~9_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~12_combout\) # ((!\inst1|SYNC|v_count[7]~1_combout\ & \inst1|SYNC|v_count\(6))))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (!\inst1|SYNC|v_count[7]~1_combout\ & 
-- (\inst1|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|v_count[7]~1_combout\,
	datac => \inst1|SYNC|v_count\(6),
	datad => \inst1|SYNC|Add1~12_combout\,
	combout => \inst1|SYNC|v_count[6]~9_combout\);

-- Location: FF_X38_Y24_N21
\inst1|SYNC|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[6]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(6));

-- Location: LCCOMB_X38_Y24_N14
\inst1|SYNC|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~14_combout\ = (\inst1|SYNC|v_count\(7) & (!\inst1|SYNC|Add1~13\)) # (!\inst1|SYNC|v_count\(7) & ((\inst1|SYNC|Add1~13\) # (GND)))
-- \inst1|SYNC|Add1~15\ = CARRY((!\inst1|SYNC|Add1~13\) # (!\inst1|SYNC|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(7),
	datad => VCC,
	cin => \inst1|SYNC|Add1~13\,
	combout => \inst1|SYNC|Add1~14_combout\,
	cout => \inst1|SYNC|Add1~15\);

-- Location: LCCOMB_X38_Y24_N16
\inst1|SYNC|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~16_combout\ = (\inst1|SYNC|v_count\(8) & (\inst1|SYNC|Add1~15\ $ (GND))) # (!\inst1|SYNC|v_count\(8) & (!\inst1|SYNC|Add1~15\ & VCC))
-- \inst1|SYNC|Add1~17\ = CARRY((\inst1|SYNC|v_count\(8) & !\inst1|SYNC|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|v_count\(8),
	datad => VCC,
	cin => \inst1|SYNC|Add1~15\,
	combout => \inst1|SYNC|Add1~16_combout\,
	cout => \inst1|SYNC|Add1~17\);

-- Location: LCCOMB_X38_Y24_N24
\inst1|SYNC|v_count[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[8]~11_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~16_combout\) # ((!\inst1|SYNC|v_count[7]~1_combout\ & \inst1|SYNC|v_count\(8))))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (!\inst1|SYNC|v_count[7]~1_combout\ & 
-- (\inst1|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|v_count[7]~1_combout\,
	datac => \inst1|SYNC|v_count\(8),
	datad => \inst1|SYNC|Add1~16_combout\,
	combout => \inst1|SYNC|v_count[8]~11_combout\);

-- Location: FF_X38_Y24_N25
\inst1|SYNC|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(8));

-- Location: LCCOMB_X38_Y24_N18
\inst1|SYNC|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~18_combout\ = \inst1|SYNC|v_count\(9) $ (\inst1|SYNC|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(9),
	cin => \inst1|SYNC|Add1~17\,
	combout => \inst1|SYNC|Add1~18_combout\);

-- Location: LCCOMB_X38_Y24_N26
\inst1|SYNC|v_count[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[9]~7_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~18_combout\) # ((!\inst1|SYNC|v_count[7]~1_combout\ & \inst1|SYNC|v_count\(9))))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (!\inst1|SYNC|v_count[7]~1_combout\ & 
-- (\inst1|SYNC|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|v_count[7]~1_combout\,
	datac => \inst1|SYNC|v_count\(9),
	datad => \inst1|SYNC|Add1~18_combout\,
	combout => \inst1|SYNC|v_count[9]~7_combout\);

-- Location: FF_X38_Y24_N27
\inst1|SYNC|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[9]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(9));

-- Location: LCCOMB_X35_Y26_N2
\inst1|SYNC|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~12_combout\ = (((!\inst1|SYNC|h_count\(8) & !\inst1|SYNC|h_count\(7))) # (!\inst1|SYNC|v_count\(9))) # (!\inst1|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(8),
	datab => \inst1|SYNC|h_count\(9),
	datac => \inst1|SYNC|h_count\(7),
	datad => \inst1|SYNC|v_count\(9),
	combout => \inst1|SYNC|process_0~12_combout\);

-- Location: FF_X36_Y26_N11
\inst1|SYNC|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(2));

-- Location: LCCOMB_X35_Y26_N4
\inst1|SYNC|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal1~0_combout\ = (((\inst1|SYNC|h_count\(2)) # (\inst1|SYNC|h_count\(8))) # (!\inst1|SYNC|h_count\(5))) # (!\inst1|SYNC|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(7),
	datab => \inst1|SYNC|h_count\(5),
	datac => \inst1|SYNC|h_count\(2),
	datad => \inst1|SYNC|h_count\(8),
	combout => \inst1|SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X35_Y26_N14
\inst1|SYNC|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal1~1_combout\ = (((\inst1|SYNC|Equal1~0_combout\) # (\inst1|SYNC|h_count\(6))) # (!\inst1|SYNC|h_count\(9))) # (!\inst1|SYNC|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Equal0~0_combout\,
	datab => \inst1|SYNC|h_count\(9),
	datac => \inst1|SYNC|Equal1~0_combout\,
	datad => \inst1|SYNC|h_count\(6),
	combout => \inst1|SYNC|Equal1~1_combout\);

-- Location: LCCOMB_X37_Y24_N24
\inst1|SYNC|v_count[7]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[7]~1_combout\ = ((!\inst1|SYNC|process_0~8_combout\ & (!\inst1|SYNC|process_0~12_combout\ & !\inst1|SYNC|process_0~11_combout\))) # (!\inst1|SYNC|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~8_combout\,
	datab => \inst1|SYNC|process_0~12_combout\,
	datac => \inst1|SYNC|Equal1~1_combout\,
	datad => \inst1|SYNC|process_0~11_combout\,
	combout => \inst1|SYNC|v_count[7]~1_combout\);

-- Location: LCCOMB_X37_Y24_N2
\inst1|SYNC|v_count[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[7]~10_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~14_combout\) # ((!\inst1|SYNC|v_count[7]~1_combout\ & \inst1|SYNC|v_count\(7))))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (!\inst1|SYNC|v_count[7]~1_combout\ & 
-- (\inst1|SYNC|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|v_count[7]~1_combout\,
	datac => \inst1|SYNC|v_count\(7),
	datad => \inst1|SYNC|Add1~14_combout\,
	combout => \inst1|SYNC|v_count[7]~10_combout\);

-- Location: FF_X37_Y24_N3
\inst1|SYNC|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(7));

-- Location: LCCOMB_X37_Y24_N28
\inst1|SYNC|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|LessThan7~0_combout\ = (\inst1|SYNC|v_count\(5) & (\inst1|SYNC|v_count\(7) & (\inst1|SYNC|v_count\(6) & \inst1|SYNC|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(5),
	datab => \inst1|SYNC|v_count\(7),
	datac => \inst1|SYNC|v_count\(6),
	datad => \inst1|SYNC|v_count\(8),
	combout => \inst1|SYNC|LessThan7~0_combout\);

-- Location: LCCOMB_X37_Y24_N8
\inst1|SYNC|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count~2_combout\ = (\inst1|SYNC|Add1~2_combout\ & ((\inst1|SYNC|process_0~8_combout\) # ((\inst1|SYNC|process_0~12_combout\) # (\inst1|SYNC|process_0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~8_combout\,
	datab => \inst1|SYNC|process_0~12_combout\,
	datac => \inst1|SYNC|Add1~2_combout\,
	datad => \inst1|SYNC|process_0~11_combout\,
	combout => \inst1|SYNC|v_count~2_combout\);

-- Location: FF_X37_Y24_N9
\inst1|SYNC|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|v_count~2_combout\,
	ena => \inst1|SYNC|v_count[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(1));

-- Location: LCCOMB_X38_Y24_N22
\inst1|SYNC|v_count[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[2]~4_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~4_combout\) # ((\inst1|SYNC|v_count\(2) & !\inst1|SYNC|v_count[7]~1_combout\)))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (((\inst1|SYNC|v_count\(2) & 
-- !\inst1|SYNC|v_count[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|Add1~4_combout\,
	datac => \inst1|SYNC|v_count\(2),
	datad => \inst1|SYNC|v_count[7]~1_combout\,
	combout => \inst1|SYNC|v_count[2]~4_combout\);

-- Location: FF_X38_Y24_N23
\inst1|SYNC|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(2));

-- Location: LCCOMB_X37_Y24_N4
\inst1|SYNC|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~4_combout\ = ((\inst1|SYNC|v_count\(0) $ (!\inst1|SYNC|v_count\(1))) # (!\inst1|SYNC|v_count\(2))) # (!\inst1|SYNC|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(3),
	datab => \inst1|SYNC|v_count\(0),
	datac => \inst1|SYNC|v_count\(1),
	datad => \inst1|SYNC|v_count\(2),
	combout => \inst1|SYNC|process_0~4_combout\);

-- Location: LCCOMB_X37_Y24_N16
\inst1|SYNC|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~5_combout\ = (\inst1|SYNC|v_count\(9)) # (((\inst1|SYNC|process_0~4_combout\) # (\inst1|SYNC|v_count\(4))) # (!\inst1|SYNC|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(9),
	datab => \inst1|SYNC|LessThan7~0_combout\,
	datac => \inst1|SYNC|process_0~4_combout\,
	datad => \inst1|SYNC|v_count\(4),
	combout => \inst1|SYNC|process_0~5_combout\);

-- Location: FF_X37_Y24_N17
\inst1|SYNC|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|vert_sync~q\);

-- Location: LCCOMB_X40_Y15_N16
\inst1|SYNC|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|vert_sync_out~feeder_combout\ = \inst1|SYNC|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|vert_sync~q\,
	combout => \inst1|SYNC|vert_sync_out~feeder_combout\);

-- Location: FF_X40_Y15_N17
\inst1|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|vert_sync_out~q\);

-- Location: LCCOMB_X35_Y24_N12
\inst4|SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_data~input_o\,
	combout => \inst4|SHIFTIN[8]~feeder_combout\);

-- Location: LCCOMB_X33_Y24_N26
\inst4|INCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT~1_combout\ = (!\inst4|INCNT\(3) & (\inst4|INCNT\(2) $ (((\inst4|INCNT\(0) & \inst4|INCNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(0),
	datab => \inst4|INCNT\(1),
	datac => \inst4|INCNT\(2),
	datad => \inst4|INCNT\(3),
	combout => \inst4|INCNT~1_combout\);

-- Location: LCCOMB_X33_Y24_N16
\inst4|INCNT[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT[3]~2_combout\ = (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & \inst4|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst4|READ_CHAR~q\,
	combout => \inst4|INCNT[3]~2_combout\);

-- Location: FF_X33_Y24_N27
\inst4|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|INCNT~1_combout\,
	ena => \inst4|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|INCNT\(2));

-- Location: LCCOMB_X33_Y24_N28
\inst4|INCNT~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT~5_combout\ = (\inst4|INCNT\(0) & (\inst4|INCNT\(1) & (!\inst4|INCNT\(3) & \inst4|INCNT\(2)))) # (!\inst4|INCNT\(0) & (!\inst4|INCNT\(1) & (\inst4|INCNT\(3) & !\inst4|INCNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(0),
	datab => \inst4|INCNT\(1),
	datac => \inst4|INCNT\(3),
	datad => \inst4|INCNT\(2),
	combout => \inst4|INCNT~5_combout\);

-- Location: FF_X33_Y24_N29
\inst4|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|INCNT~5_combout\,
	ena => \inst4|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|INCNT\(3));

-- Location: LCCOMB_X33_Y24_N14
\inst4|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT~4_combout\ = (!\inst4|INCNT\(0) & (((!\inst4|INCNT\(1) & !\inst4|INCNT\(2))) # (!\inst4|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(1),
	datab => \inst4|INCNT\(3),
	datac => \inst4|INCNT\(0),
	datad => \inst4|INCNT\(2),
	combout => \inst4|INCNT~4_combout\);

-- Location: FF_X33_Y24_N15
\inst4|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|INCNT~4_combout\,
	ena => \inst4|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|INCNT\(0));

-- Location: LCCOMB_X33_Y24_N20
\inst4|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT~3_combout\ = (!\inst4|INCNT\(3) & (\inst4|INCNT\(0) $ (\inst4|INCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|INCNT\(0),
	datac => \inst4|INCNT\(1),
	datad => \inst4|INCNT\(3),
	combout => \inst4|INCNT~3_combout\);

-- Location: FF_X33_Y24_N21
\inst4|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|INCNT~3_combout\,
	ena => \inst4|INCNT[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|INCNT\(1));

-- Location: LCCOMB_X33_Y24_N18
\inst4|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan1~0_combout\ = ((!\inst4|INCNT\(2) & (!\inst4|INCNT\(1) & !\inst4|INCNT\(0)))) # (!\inst4|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|INCNT\(2),
	datab => \inst4|INCNT\(1),
	datac => \inst4|INCNT\(0),
	datad => \inst4|INCNT\(3),
	combout => \inst4|LessThan1~0_combout\);

-- Location: LCCOMB_X33_Y24_N24
\inst4|SHIFTIN[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[1]~2_combout\ = (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst4|READ_CHAR~q\ & \inst4|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst4|READ_CHAR~q\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|SHIFTIN[1]~2_combout\);

-- Location: FF_X35_Y24_N13
\inst4|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[8]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(8));

-- Location: LCCOMB_X35_Y24_N10
\inst4|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[7]~feeder_combout\ = \inst4|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(8),
	combout => \inst4|SHIFTIN[7]~feeder_combout\);

-- Location: FF_X35_Y24_N11
\inst4|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[7]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(7));

-- Location: LCCOMB_X35_Y24_N26
\inst4|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[6]~feeder_combout\ = \inst4|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(7),
	combout => \inst4|SHIFTIN[6]~feeder_combout\);

-- Location: FF_X35_Y24_N27
\inst4|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[6]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(6));

-- Location: LCCOMB_X35_Y24_N28
\inst4|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[5]~feeder_combout\ = \inst4|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(6),
	combout => \inst4|SHIFTIN[5]~feeder_combout\);

-- Location: FF_X35_Y24_N29
\inst4|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[5]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(5));

-- Location: LCCOMB_X33_Y26_N4
\inst4|SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[4]~feeder_combout\ = \inst4|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(5),
	combout => \inst4|SHIFTIN[4]~feeder_combout\);

-- Location: FF_X33_Y26_N5
\inst4|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[4]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(4));

-- Location: LCCOMB_X33_Y26_N10
\inst4|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[3]~feeder_combout\ = \inst4|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(4),
	combout => \inst4|SHIFTIN[3]~feeder_combout\);

-- Location: FF_X33_Y26_N11
\inst4|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[3]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(3));

-- Location: LCCOMB_X33_Y26_N22
\inst4|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[2]~feeder_combout\ = \inst4|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(3),
	combout => \inst4|SHIFTIN[2]~feeder_combout\);

-- Location: FF_X33_Y26_N23
\inst4|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[2]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(2));

-- Location: LCCOMB_X33_Y26_N28
\inst4|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[1]~feeder_combout\ = \inst4|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(2),
	combout => \inst4|SHIFTIN[1]~feeder_combout\);

-- Location: FF_X33_Y26_N29
\inst4|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[1]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(1));

-- Location: LCCOMB_X32_Y25_N4
\inst4|PACKET_CHAR1[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR1[1]~feeder_combout\ = \inst4|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(1),
	combout => \inst4|PACKET_CHAR1[1]~feeder_combout\);

-- Location: LCCOMB_X32_Y24_N14
\inst4|PACKET_COUNT[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_COUNT[0]~feeder_combout\ = \inst4|PACKET_CHAR1[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|PACKET_CHAR1[1]~0_combout\,
	combout => \inst4|PACKET_COUNT[0]~feeder_combout\);

-- Location: LCCOMB_X32_Y24_N16
\inst4|PACKET_CHAR2[7]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[7]~0_combout\ = (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst4|READ_CHAR~q\ & !\inst4|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst4|READ_CHAR~q\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|PACKET_CHAR2[7]~0_combout\);

-- Location: FF_X32_Y24_N15
\inst4|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_COUNT[0]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_COUNT\(0));

-- Location: LCCOMB_X32_Y24_N26
\inst4|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Add3~0_combout\ = \inst4|PACKET_COUNT\(0) $ (\inst4|PACKET_COUNT\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|PACKET_COUNT\(0),
	datad => \inst4|PACKET_COUNT\(1),
	combout => \inst4|Add3~0_combout\);

-- Location: LCCOMB_X32_Y24_N24
\inst4|PACKET_COUNT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_COUNT[1]~feeder_combout\ = \inst4|Add3~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|Add3~0_combout\,
	combout => \inst4|PACKET_COUNT[1]~feeder_combout\);

-- Location: FF_X32_Y24_N25
\inst4|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_COUNT[1]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_COUNT\(1));

-- Location: LCCOMB_X32_Y24_N0
\inst4|PACKET_CHAR1[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR1[1]~0_combout\ = (\inst4|PACKET_COUNT\(1)) # (!\inst4|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|PACKET_COUNT\(0),
	datad => \inst4|PACKET_COUNT\(1),
	combout => \inst4|PACKET_CHAR1[1]~0_combout\);

-- Location: LCCOMB_X32_Y25_N12
\inst4|PACKET_CHAR1[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR1[1]~1_combout\ = (\inst4|READ_CHAR~q\ & (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & (!\inst4|LessThan1~0_combout\ & !\inst4|PACKET_CHAR1[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|READ_CHAR~q\,
	datab => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst4|LessThan1~0_combout\,
	datad => \inst4|PACKET_CHAR1[1]~0_combout\,
	combout => \inst4|PACKET_CHAR1[1]~1_combout\);

-- Location: FF_X32_Y25_N5
\inst4|PACKET_CHAR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR1[1]~feeder_combout\,
	ena => \inst4|PACKET_CHAR1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR1\(1));

-- Location: LCCOMB_X31_Y25_N24
\inst4|right_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|right_button~feeder_combout\ = \inst4|PACKET_CHAR1\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|PACKET_CHAR1\(1),
	combout => \inst4|right_button~feeder_combout\);

-- Location: LCCOMB_X32_Y24_N4
\inst4|INCNT[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|INCNT[3]~0_combout\ = (!\inst4|mouse_state.WAIT_OUTPUT_READY~q\ & ((\mouse_data~input_o\) # (\inst4|READ_CHAR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mouse_data~input_o\,
	datab => \inst4|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst4|READ_CHAR~q\,
	combout => \inst4|INCNT[3]~0_combout\);

-- Location: LCCOMB_X32_Y24_N6
\inst4|right_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|right_button~0_combout\ = (!\inst4|Equal4~0_combout\ & (\inst4|READ_CHAR~q\ & (\inst4|INCNT[3]~0_combout\ & !\inst4|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal4~0_combout\,
	datab => \inst4|READ_CHAR~q\,
	datac => \inst4|INCNT[3]~0_combout\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|right_button~0_combout\);

-- Location: FF_X31_Y25_N25
\inst4|right_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|right_button~feeder_combout\,
	ena => \inst4|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|right_button~q\);

-- Location: LCCOMB_X35_Y24_N0
\inst4|SHIFTIN[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|SHIFTIN[0]~feeder_combout\ = \inst4|SHIFTIN\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(1),
	combout => \inst4|SHIFTIN[0]~feeder_combout\);

-- Location: FF_X35_Y24_N1
\inst4|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|SHIFTIN[0]~feeder_combout\,
	ena => \inst4|SHIFTIN[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|SHIFTIN\(0));

-- Location: LCCOMB_X32_Y25_N2
\inst4|PACKET_CHAR1[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR1[0]~feeder_combout\ = \inst4|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(0),
	combout => \inst4|PACKET_CHAR1[0]~feeder_combout\);

-- Location: FF_X32_Y25_N3
\inst4|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR1[0]~feeder_combout\,
	ena => \inst4|PACKET_CHAR1[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR1\(0));

-- Location: LCCOMB_X32_Y28_N24
\inst4|left_button~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|left_button~feeder_combout\ = \inst4|PACKET_CHAR1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|PACKET_CHAR1\(0),
	combout => \inst4|left_button~feeder_combout\);

-- Location: FF_X32_Y28_N25
\inst4|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|left_button~feeder_combout\,
	ena => \inst4|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|left_button~q\);

-- Location: LCCOMB_X31_Y28_N30
\inst2|tmp~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|tmp~0_combout\ = \inst2|tmp\(10) $ (!\inst2|tmp\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tmp\(10),
	datac => \inst2|tmp\(8),
	combout => \inst2|tmp~0_combout\);

-- Location: FF_X31_Y28_N31
\inst2|tmp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|tmp~0_combout\,
	ena => \inst4|left_button~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(9));

-- Location: LCCOMB_X31_Y28_N4
\inst2|tmp~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|tmp~1_combout\ = \inst2|tmp\(2) $ (\inst2|tmp\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tmp\(2),
	datac => \inst2|tmp\(9),
	combout => \inst2|tmp~1_combout\);

-- Location: FF_X31_Y28_N5
\inst2|tmp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|tmp~1_combout\,
	ena => \inst4|left_button~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(8));

-- Location: LCCOMB_X31_Y28_N6
\inst2|tmp[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|tmp[7]~5_combout\ = !\inst2|tmp\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|tmp\(8),
	combout => \inst2|tmp[7]~5_combout\);

-- Location: FF_X31_Y28_N7
\inst2|tmp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|tmp[7]~5_combout\,
	ena => \inst4|left_button~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(7));

-- Location: LCCOMB_X31_Y28_N20
\inst2|tmp[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|tmp[6]~6_combout\ = !\inst2|tmp\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|tmp\(7),
	combout => \inst2|tmp[6]~6_combout\);

-- Location: FF_X31_Y28_N21
\inst2|tmp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|tmp[6]~6_combout\,
	ena => \inst4|left_button~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(6));

-- Location: LCCOMB_X31_Y28_N22
\inst2|tmp~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|tmp~2_combout\ = \inst2|tmp\(6) $ (\inst2|tmp\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tmp\(6),
	datac => \inst2|tmp\(3),
	combout => \inst2|tmp~2_combout\);

-- Location: FF_X31_Y28_N23
\inst2|tmp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|tmp~2_combout\,
	ena => \inst4|left_button~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(5));

-- Location: LCCOMB_X31_Y28_N24
\inst2|tmp[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|tmp[4]~8_combout\ = !\inst2|tmp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst2|tmp\(5),
	combout => \inst2|tmp[4]~8_combout\);

-- Location: FF_X31_Y28_N25
\inst2|tmp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|tmp[4]~8_combout\,
	ena => \inst4|left_button~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(4));

-- Location: LCCOMB_X31_Y28_N2
\inst2|tmp~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|tmp~3_combout\ = \inst2|tmp\(6) $ (!\inst2|tmp\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|tmp\(6),
	datad => \inst2|tmp\(4),
	combout => \inst2|tmp~3_combout\);

-- Location: FF_X31_Y28_N3
\inst2|tmp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|tmp~3_combout\,
	ena => \inst4|left_button~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(3));

-- Location: FF_X31_Y28_N17
\inst2|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst2|tmp\(3),
	sload => VCC,
	ena => \inst4|left_button~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(2));

-- Location: LCCOMB_X31_Y28_N18
\inst2|tmp[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|tmp[1]~10_combout\ = !\inst2|tmp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|tmp\(2),
	combout => \inst2|tmp[1]~10_combout\);

-- Location: FF_X31_Y28_N19
\inst2|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|tmp[1]~10_combout\,
	ena => \inst4|left_button~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(1));

-- Location: LCCOMB_X31_Y28_N0
\inst2|tmp[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|tmp[10]~feeder_combout\ = \inst2|tmp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|tmp\(1),
	combout => \inst2|tmp[10]~feeder_combout\);

-- Location: FF_X31_Y28_N1
\inst2|tmp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst2|tmp[10]~feeder_combout\,
	ena => \inst4|left_button~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|tmp\(10));

-- Location: LCCOMB_X33_Y26_N12
\inst4|PACKET_CHAR2[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[7]~feeder_combout\ = \inst4|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(7),
	combout => \inst4|PACKET_CHAR2[7]~feeder_combout\);

-- Location: LCCOMB_X32_Y24_N10
\inst4|PACKET_CHAR2[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[7]~2_combout\ = (\inst4|PACKET_CHAR2[7]~1_combout\ & (\inst4|READ_CHAR~q\ & (\inst4|INCNT[3]~0_combout\ & !\inst4|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR2[7]~1_combout\,
	datab => \inst4|READ_CHAR~q\,
	datac => \inst4|INCNT[3]~0_combout\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|PACKET_CHAR2[7]~2_combout\);

-- Location: FF_X33_Y26_N13
\inst4|PACKET_CHAR2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR2[7]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(7));

-- Location: LCCOMB_X32_Y26_N2
\inst4|PACKET_CHAR2[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[6]~feeder_combout\ = \inst4|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(6),
	combout => \inst4|PACKET_CHAR2[6]~feeder_combout\);

-- Location: FF_X32_Y26_N3
\inst4|PACKET_CHAR2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR2[6]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(6));

-- Location: LCCOMB_X31_Y24_N22
\inst4|PACKET_CHAR2[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[3]~feeder_combout\ = \inst4|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(3),
	combout => \inst4|PACKET_CHAR2[3]~feeder_combout\);

-- Location: FF_X31_Y24_N23
\inst4|PACKET_CHAR2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR2[3]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(3));

-- Location: LCCOMB_X32_Y26_N24
\inst4|new_cursor_column[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[7]~25_combout\ = (\inst4|cursor_column\(7) & ((\inst4|PACKET_CHAR2\(7) & (\inst4|new_cursor_column[6]~23\ & VCC)) # (!\inst4|PACKET_CHAR2\(7) & (!\inst4|new_cursor_column[6]~23\)))) # (!\inst4|cursor_column\(7) & 
-- ((\inst4|PACKET_CHAR2\(7) & (!\inst4|new_cursor_column[6]~23\)) # (!\inst4|PACKET_CHAR2\(7) & ((\inst4|new_cursor_column[6]~23\) # (GND)))))
-- \inst4|new_cursor_column[7]~26\ = CARRY((\inst4|cursor_column\(7) & (!\inst4|PACKET_CHAR2\(7) & !\inst4|new_cursor_column[6]~23\)) # (!\inst4|cursor_column\(7) & ((!\inst4|new_cursor_column[6]~23\) # (!\inst4|PACKET_CHAR2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(7),
	datab => \inst4|PACKET_CHAR2\(7),
	datad => VCC,
	cin => \inst4|new_cursor_column[6]~23\,
	combout => \inst4|new_cursor_column[7]~25_combout\,
	cout => \inst4|new_cursor_column[7]~26\);

-- Location: LCCOMB_X32_Y26_N30
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X32_Y24_N8
\inst4|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Equal4~0_combout\ = (!\inst4|PACKET_COUNT\(1)) # (!\inst4|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|PACKET_COUNT\(0),
	datad => \inst4|PACKET_COUNT\(1),
	combout => \inst4|Equal4~0_combout\);

-- Location: LCCOMB_X32_Y24_N22
\inst4|new_cursor_column[6]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[6]~24_combout\ = (!\inst4|Add3~0_combout\ & (!\inst4|LessThan1~0_combout\ & (\inst4|READ_CHAR~q\ & \inst4|INCNT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add3~0_combout\,
	datab => \inst4|LessThan1~0_combout\,
	datac => \inst4|READ_CHAR~q\,
	datad => \inst4|INCNT[3]~0_combout\,
	combout => \inst4|new_cursor_column[6]~24_combout\);

-- Location: FF_X32_Y26_N25
\inst4|new_cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[7]~25_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(7));

-- Location: LCCOMB_X32_Y26_N4
\inst4|PACKET_CHAR2[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR2[0]~feeder_combout\ = \inst4|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(0),
	combout => \inst4|PACKET_CHAR2[0]~feeder_combout\);

-- Location: FF_X32_Y26_N5
\inst4|PACKET_CHAR2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR2[0]~feeder_combout\,
	ena => \inst4|PACKET_CHAR2[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR2\(0));

-- Location: LCCOMB_X32_Y26_N12
\inst4|new_cursor_column[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[1]~12_combout\ = (\inst4|PACKET_CHAR2\(1) & ((\inst4|cursor_column\(1) & (\inst4|new_cursor_column[0]~11\ & VCC)) # (!\inst4|cursor_column\(1) & (!\inst4|new_cursor_column[0]~11\)))) # (!\inst4|PACKET_CHAR2\(1) & 
-- ((\inst4|cursor_column\(1) & (!\inst4|new_cursor_column[0]~11\)) # (!\inst4|cursor_column\(1) & ((\inst4|new_cursor_column[0]~11\) # (GND)))))
-- \inst4|new_cursor_column[1]~13\ = CARRY((\inst4|PACKET_CHAR2\(1) & (!\inst4|cursor_column\(1) & !\inst4|new_cursor_column[0]~11\)) # (!\inst4|PACKET_CHAR2\(1) & ((!\inst4|new_cursor_column[0]~11\) # (!\inst4|cursor_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR2\(1),
	datab => \inst4|cursor_column\(1),
	datad => VCC,
	cin => \inst4|new_cursor_column[0]~11\,
	combout => \inst4|new_cursor_column[1]~12_combout\,
	cout => \inst4|new_cursor_column[1]~13\);

-- Location: FF_X32_Y26_N13
\inst4|new_cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(1));

-- Location: LCCOMB_X31_Y26_N24
\inst4|cursor_column~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~14_combout\ = (\inst4|new_cursor_column\(1) & \inst4|cursor_column[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|new_cursor_column\(1),
	datad => \inst4|cursor_column[0]~5_combout\,
	combout => \inst4|cursor_column~14_combout\);

-- Location: LCCOMB_X32_Y24_N30
\inst4|cursor_column[6]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column[6]~6_combout\ = (!\inst4|PACKET_COUNT\(1) & (\inst4|READ_CHAR~q\ & (\inst4|INCNT[3]~0_combout\ & !\inst4|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_COUNT\(1),
	datab => \inst4|READ_CHAR~q\,
	datac => \inst4|INCNT[3]~0_combout\,
	datad => \inst4|LessThan1~0_combout\,
	combout => \inst4|cursor_column[6]~6_combout\);

-- Location: FF_X31_Y26_N25
\inst4|cursor_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~14_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(1));

-- Location: LCCOMB_X32_Y26_N14
\inst4|new_cursor_column[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[2]~14_combout\ = ((\inst4|PACKET_CHAR2\(2) $ (\inst4|cursor_column\(2) $ (!\inst4|new_cursor_column[1]~13\)))) # (GND)
-- \inst4|new_cursor_column[2]~15\ = CARRY((\inst4|PACKET_CHAR2\(2) & ((\inst4|cursor_column\(2)) # (!\inst4|new_cursor_column[1]~13\))) # (!\inst4|PACKET_CHAR2\(2) & (\inst4|cursor_column\(2) & !\inst4|new_cursor_column[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR2\(2),
	datab => \inst4|cursor_column\(2),
	datad => VCC,
	cin => \inst4|new_cursor_column[1]~13\,
	combout => \inst4|new_cursor_column[2]~14_combout\,
	cout => \inst4|new_cursor_column[2]~15\);

-- Location: FF_X32_Y26_N15
\inst4|new_cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(2));

-- Location: LCCOMB_X32_Y26_N22
\inst4|new_cursor_column[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[6]~22_combout\ = ((\inst4|cursor_column\(6) $ (\inst4|PACKET_CHAR2\(6) $ (!\inst4|new_cursor_column[5]~21\)))) # (GND)
-- \inst4|new_cursor_column[6]~23\ = CARRY((\inst4|cursor_column\(6) & ((\inst4|PACKET_CHAR2\(6)) # (!\inst4|new_cursor_column[5]~21\))) # (!\inst4|cursor_column\(6) & (\inst4|PACKET_CHAR2\(6) & !\inst4|new_cursor_column[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(6),
	datab => \inst4|PACKET_CHAR2\(6),
	datad => VCC,
	cin => \inst4|new_cursor_column[5]~21\,
	combout => \inst4|new_cursor_column[6]~22_combout\,
	cout => \inst4|new_cursor_column[6]~23\);

-- Location: FF_X32_Y26_N23
\inst4|new_cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[6]~22_combout\,
	asdata => VCC,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(6));

-- Location: LCCOMB_X32_Y26_N16
\inst4|new_cursor_column[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[3]~16_combout\ = (\inst4|cursor_column\(3) & ((\inst4|PACKET_CHAR2\(3) & (\inst4|new_cursor_column[2]~15\ & VCC)) # (!\inst4|PACKET_CHAR2\(3) & (!\inst4|new_cursor_column[2]~15\)))) # (!\inst4|cursor_column\(3) & 
-- ((\inst4|PACKET_CHAR2\(3) & (!\inst4|new_cursor_column[2]~15\)) # (!\inst4|PACKET_CHAR2\(3) & ((\inst4|new_cursor_column[2]~15\) # (GND)))))
-- \inst4|new_cursor_column[3]~17\ = CARRY((\inst4|cursor_column\(3) & (!\inst4|PACKET_CHAR2\(3) & !\inst4|new_cursor_column[2]~15\)) # (!\inst4|cursor_column\(3) & ((!\inst4|new_cursor_column[2]~15\) # (!\inst4|PACKET_CHAR2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(3),
	datab => \inst4|PACKET_CHAR2\(3),
	datad => VCC,
	cin => \inst4|new_cursor_column[2]~15\,
	combout => \inst4|new_cursor_column[3]~16_combout\,
	cout => \inst4|new_cursor_column[3]~17\);

-- Location: FF_X32_Y26_N17
\inst4|new_cursor_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(3));

-- Location: LCCOMB_X32_Y26_N0
\inst4|RECV_UART~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~0_combout\ = (!\inst4|new_cursor_column\(1) & (!\inst4|new_cursor_column\(2) & (!\inst4|new_cursor_column\(6) & !\inst4|new_cursor_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(1),
	datab => \inst4|new_cursor_column\(2),
	datac => \inst4|new_cursor_column\(6),
	datad => \inst4|new_cursor_column\(3),
	combout => \inst4|RECV_UART~0_combout\);

-- Location: LCCOMB_X32_Y26_N6
\inst4|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan9~0_combout\ = (\inst4|new_cursor_column\(0)) # ((\inst4|new_cursor_column\(4)) # ((\inst4|new_cursor_column\(5)) # (!\inst4|RECV_UART~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(0),
	datab => \inst4|new_cursor_column\(4),
	datac => \inst4|new_cursor_column\(5),
	datad => \inst4|RECV_UART~0_combout\,
	combout => \inst4|LessThan9~0_combout\);

-- Location: LCCOMB_X31_Y26_N8
\inst4|cursor_column[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column[0]~4_combout\ = ((!\inst4|new_cursor_column\(8) & ((!\inst4|LessThan9~0_combout\) # (!\inst4|new_cursor_column\(7))))) # (!\inst4|new_cursor_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(9),
	datab => \inst4|new_cursor_column\(8),
	datac => \inst4|new_cursor_column\(7),
	datad => \inst4|LessThan9~0_combout\,
	combout => \inst4|cursor_column[0]~4_combout\);

-- Location: LCCOMB_X32_Y24_N28
\inst4|Equal3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|Equal3~0_combout\ = (\inst4|PACKET_COUNT\(1)) # (\inst4|PACKET_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|PACKET_COUNT\(1),
	datac => \inst4|PACKET_COUNT\(0),
	combout => \inst4|Equal3~0_combout\);

-- Location: LCCOMB_X31_Y26_N26
\inst4|RECV_UART~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~1_combout\ = (!\inst4|new_cursor_column\(5) & (\inst4|RECV_UART~0_combout\ & !\inst4|new_cursor_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(5),
	datac => \inst4|RECV_UART~0_combout\,
	datad => \inst4|new_cursor_column\(4),
	combout => \inst4|RECV_UART~1_combout\);

-- Location: LCCOMB_X31_Y26_N12
\inst4|RECV_UART~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~2_combout\ = (\inst4|new_cursor_column\(8) & ((\inst4|LessThan9~0_combout\))) # (!\inst4|new_cursor_column\(8) & (\inst4|RECV_UART~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|new_cursor_column\(8),
	datac => \inst4|RECV_UART~1_combout\,
	datad => \inst4|LessThan9~0_combout\,
	combout => \inst4|RECV_UART~2_combout\);

-- Location: LCCOMB_X31_Y26_N2
\inst4|RECV_UART~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~3_combout\ = (\inst4|new_cursor_column\(9)) # ((\inst4|new_cursor_column\(7) & (\inst4|new_cursor_column\(8))) # (!\inst4|new_cursor_column\(7) & ((\inst4|RECV_UART~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(9),
	datab => \inst4|new_cursor_column\(8),
	datac => \inst4|new_cursor_column\(7),
	datad => \inst4|RECV_UART~2_combout\,
	combout => \inst4|RECV_UART~3_combout\);

-- Location: LCCOMB_X31_Y26_N20
\inst4|cursor_column[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column[0]~5_combout\ = (\inst4|cursor_column[0]~4_combout\ & (\inst4|Equal3~0_combout\ & ((!\inst4|RECV_UART~3_combout\) # (!\inst4|RECV_UART~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|RECV_UART~4_combout\,
	datab => \inst4|cursor_column[0]~4_combout\,
	datac => \inst4|Equal3~0_combout\,
	datad => \inst4|RECV_UART~3_combout\,
	combout => \inst4|cursor_column[0]~5_combout\);

-- Location: LCCOMB_X31_Y26_N30
\inst4|cursor_column~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~13_combout\ = (\inst4|new_cursor_column\(2) & \inst4|cursor_column[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(2),
	datad => \inst4|cursor_column[0]~5_combout\,
	combout => \inst4|cursor_column~13_combout\);

-- Location: FF_X31_Y26_N31
\inst4|cursor_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~13_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(2));

-- Location: LCCOMB_X32_Y26_N18
\inst4|new_cursor_column[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[4]~18_combout\ = ((\inst4|PACKET_CHAR2\(4) $ (\inst4|cursor_column\(4) $ (!\inst4|new_cursor_column[3]~17\)))) # (GND)
-- \inst4|new_cursor_column[4]~19\ = CARRY((\inst4|PACKET_CHAR2\(4) & ((\inst4|cursor_column\(4)) # (!\inst4|new_cursor_column[3]~17\))) # (!\inst4|PACKET_CHAR2\(4) & (\inst4|cursor_column\(4) & !\inst4|new_cursor_column[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR2\(4),
	datab => \inst4|cursor_column\(4),
	datad => VCC,
	cin => \inst4|new_cursor_column[3]~17\,
	combout => \inst4|new_cursor_column[4]~18_combout\,
	cout => \inst4|new_cursor_column[4]~19\);

-- Location: FF_X32_Y26_N19
\inst4|new_cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[4]~18_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(4));

-- Location: LCCOMB_X31_Y26_N6
\inst4|cursor_column~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~11_combout\ = (\inst4|new_cursor_column\(4) & \inst4|cursor_column[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|new_cursor_column\(4),
	datad => \inst4|cursor_column[0]~5_combout\,
	combout => \inst4|cursor_column~11_combout\);

-- Location: FF_X31_Y26_N7
\inst4|cursor_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~11_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(4));

-- Location: LCCOMB_X32_Y26_N20
\inst4|new_cursor_column[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_column[5]~20_combout\ = (\inst4|PACKET_CHAR2\(5) & ((\inst4|cursor_column\(5) & (\inst4|new_cursor_column[4]~19\ & VCC)) # (!\inst4|cursor_column\(5) & (!\inst4|new_cursor_column[4]~19\)))) # (!\inst4|PACKET_CHAR2\(5) & 
-- ((\inst4|cursor_column\(5) & (!\inst4|new_cursor_column[4]~19\)) # (!\inst4|cursor_column\(5) & ((\inst4|new_cursor_column[4]~19\) # (GND)))))
-- \inst4|new_cursor_column[5]~21\ = CARRY((\inst4|PACKET_CHAR2\(5) & (!\inst4|cursor_column\(5) & !\inst4|new_cursor_column[4]~19\)) # (!\inst4|PACKET_CHAR2\(5) & ((!\inst4|new_cursor_column[4]~19\) # (!\inst4|cursor_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR2\(5),
	datab => \inst4|cursor_column\(5),
	datad => VCC,
	cin => \inst4|new_cursor_column[4]~19\,
	combout => \inst4|new_cursor_column[5]~20_combout\,
	cout => \inst4|new_cursor_column[5]~21\);

-- Location: FF_X32_Y26_N21
\inst4|new_cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[5]~20_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(5));

-- Location: LCCOMB_X31_Y26_N28
\inst4|cursor_column~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~10_combout\ = (\inst4|new_cursor_column\(5) & \inst4|cursor_column[0]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|new_cursor_column\(5),
	datad => \inst4|cursor_column[0]~5_combout\,
	combout => \inst4|cursor_column~10_combout\);

-- Location: FF_X31_Y26_N29
\inst4|cursor_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~10_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(5));

-- Location: FF_X32_Y26_N27
\inst4|new_cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_column[8]~27_combout\,
	asdata => VCC,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_column\(8));

-- Location: LCCOMB_X31_Y26_N16
\inst4|cursor_column~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~17_combout\ = (\inst4|PACKET_COUNT\(0) & (((\inst4|new_cursor_column\(8) & \inst4|cursor_column[0]~5_combout\)))) # (!\inst4|PACKET_COUNT\(0) & (((\inst4|new_cursor_column\(8) & \inst4|cursor_column[0]~5_combout\)) # 
-- (!\inst4|PACKET_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_COUNT\(0),
	datab => \inst4|PACKET_COUNT\(1),
	datac => \inst4|new_cursor_column\(8),
	datad => \inst4|cursor_column[0]~5_combout\,
	combout => \inst4|cursor_column~17_combout\);

-- Location: FF_X31_Y26_N17
\inst4|cursor_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~17_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(8));

-- Location: LCCOMB_X31_Y26_N14
\inst4|cursor_column~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~9_combout\ = (\inst4|cursor_column[0]~5_combout\ & (\inst4|new_cursor_column\(9))) # (!\inst4|cursor_column[0]~5_combout\ & ((\inst4|cursor_column~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(9),
	datac => \inst4|cursor_column~7_combout\,
	datad => \inst4|cursor_column[0]~5_combout\,
	combout => \inst4|cursor_column~9_combout\);

-- Location: FF_X31_Y26_N15
\inst4|cursor_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~9_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(9));

-- Location: LCCOMB_X32_Y26_N8
\inst4|RECV_UART~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~4_combout\ = (!\inst4|cursor_column\(7) & (!\inst4|cursor_column\(8) & !\inst4|cursor_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_column\(7),
	datac => \inst4|cursor_column\(8),
	datad => \inst4|cursor_column\(9),
	combout => \inst4|RECV_UART~4_combout\);

-- Location: LCCOMB_X31_Y26_N22
\inst4|cursor_column~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~7_combout\ = (\inst4|PACKET_COUNT\(0) & (((!\inst4|RECV_UART~3_combout\) # (!\inst4|RECV_UART~4_combout\)))) # (!\inst4|PACKET_COUNT\(0) & (\inst4|PACKET_COUNT\(1) & ((!\inst4|RECV_UART~3_combout\) # (!\inst4|RECV_UART~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_COUNT\(0),
	datab => \inst4|PACKET_COUNT\(1),
	datac => \inst4|RECV_UART~4_combout\,
	datad => \inst4|RECV_UART~3_combout\,
	combout => \inst4|cursor_column~7_combout\);

-- Location: LCCOMB_X31_Y26_N18
\inst4|cursor_column~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~8_combout\ = (\inst4|cursor_column[0]~5_combout\ & (\inst4|new_cursor_column\(7))) # (!\inst4|cursor_column[0]~5_combout\ & ((\inst4|cursor_column~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_column\(7),
	datac => \inst4|cursor_column~7_combout\,
	datad => \inst4|cursor_column[0]~5_combout\,
	combout => \inst4|cursor_column~8_combout\);

-- Location: FF_X31_Y26_N19
\inst4|cursor_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~8_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(7));

-- Location: LCCOMB_X31_Y26_N0
\inst4|cursor_column~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_column~16_combout\ = (\inst4|PACKET_COUNT\(0) & (((\inst4|new_cursor_column\(6) & \inst4|cursor_column[0]~5_combout\)))) # (!\inst4|PACKET_COUNT\(0) & (((\inst4|new_cursor_column\(6) & \inst4|cursor_column[0]~5_combout\)) # 
-- (!\inst4|PACKET_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_COUNT\(0),
	datab => \inst4|PACKET_COUNT\(1),
	datac => \inst4|new_cursor_column\(6),
	datad => \inst4|cursor_column[0]~5_combout\,
	combout => \inst4|cursor_column~16_combout\);

-- Location: FF_X31_Y26_N1
\inst4|cursor_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_column~16_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_column\(6));

-- Location: LCCOMB_X28_Y28_N4
\inst7|LED_out[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LED_out[6]~0_combout\ = (\inst4|cursor_column\(6) & ((\inst4|cursor_column\(9)) # (\inst4|cursor_column\(7) $ (\inst4|cursor_column\(8))))) # (!\inst4|cursor_column\(6) & ((\inst4|cursor_column\(7)) # (\inst4|cursor_column\(8) $ 
-- (\inst4|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(7),
	datab => \inst4|cursor_column\(6),
	datac => \inst4|cursor_column\(8),
	datad => \inst4|cursor_column\(9),
	combout => \inst7|LED_out[6]~0_combout\);

-- Location: LCCOMB_X28_Y28_N2
\inst7|LED_out[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LED_out[5]~1_combout\ = (\inst4|cursor_column\(7) & (!\inst4|cursor_column\(9) & ((\inst4|cursor_column\(6)) # (!\inst4|cursor_column\(8))))) # (!\inst4|cursor_column\(7) & (\inst4|cursor_column\(6) & (\inst4|cursor_column\(8) $ 
-- (!\inst4|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(7),
	datab => \inst4|cursor_column\(6),
	datac => \inst4|cursor_column\(8),
	datad => \inst4|cursor_column\(9),
	combout => \inst7|LED_out[5]~1_combout\);

-- Location: LCCOMB_X28_Y28_N20
\inst7|LED_out[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LED_out[4]~2_combout\ = (\inst4|cursor_column\(7) & (\inst4|cursor_column\(6) & ((!\inst4|cursor_column\(9))))) # (!\inst4|cursor_column\(7) & ((\inst4|cursor_column\(8) & ((!\inst4|cursor_column\(9)))) # (!\inst4|cursor_column\(8) & 
-- (\inst4|cursor_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(7),
	datab => \inst4|cursor_column\(6),
	datac => \inst4|cursor_column\(8),
	datad => \inst4|cursor_column\(9),
	combout => \inst7|LED_out[4]~2_combout\);

-- Location: LCCOMB_X28_Y28_N10
\inst7|LED_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LED_out[3]~3_combout\ = (\inst4|cursor_column\(7) & ((\inst4|cursor_column\(6) & (\inst4|cursor_column\(8))) # (!\inst4|cursor_column\(6) & (!\inst4|cursor_column\(8) & \inst4|cursor_column\(9))))) # (!\inst4|cursor_column\(7) & 
-- (!\inst4|cursor_column\(9) & (\inst4|cursor_column\(6) $ (\inst4|cursor_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(7),
	datab => \inst4|cursor_column\(6),
	datac => \inst4|cursor_column\(8),
	datad => \inst4|cursor_column\(9),
	combout => \inst7|LED_out[3]~3_combout\);

-- Location: LCCOMB_X28_Y28_N12
\inst7|LED_out[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LED_out[2]~4_combout\ = (\inst4|cursor_column\(8) & (\inst4|cursor_column\(9) & ((\inst4|cursor_column\(7)) # (!\inst4|cursor_column\(6))))) # (!\inst4|cursor_column\(8) & (\inst4|cursor_column\(7) & (!\inst4|cursor_column\(6) & 
-- !\inst4|cursor_column\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(7),
	datab => \inst4|cursor_column\(6),
	datac => \inst4|cursor_column\(8),
	datad => \inst4|cursor_column\(9),
	combout => \inst7|LED_out[2]~4_combout\);

-- Location: LCCOMB_X28_Y28_N22
\inst7|LED_out[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LED_out[1]~5_combout\ = (\inst4|cursor_column\(7) & ((\inst4|cursor_column\(6) & ((\inst4|cursor_column\(9)))) # (!\inst4|cursor_column\(6) & (\inst4|cursor_column\(8))))) # (!\inst4|cursor_column\(7) & (\inst4|cursor_column\(8) & 
-- (\inst4|cursor_column\(6) $ (\inst4|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(7),
	datab => \inst4|cursor_column\(6),
	datac => \inst4|cursor_column\(8),
	datad => \inst4|cursor_column\(9),
	combout => \inst7|LED_out[1]~5_combout\);

-- Location: LCCOMB_X28_Y28_N24
\inst7|LED_out[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|LED_out[0]~6_combout\ = (\inst4|cursor_column\(8) & (!\inst4|cursor_column\(7) & (\inst4|cursor_column\(6) $ (!\inst4|cursor_column\(9))))) # (!\inst4|cursor_column\(8) & (\inst4|cursor_column\(6) & (\inst4|cursor_column\(7) $ 
-- (!\inst4|cursor_column\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_column\(7),
	datab => \inst4|cursor_column\(6),
	datac => \inst4|cursor_column\(8),
	datad => \inst4|cursor_column\(9),
	combout => \inst7|LED_out[0]~6_combout\);

-- Location: LCCOMB_X30_Y24_N2
\inst4|PACKET_CHAR3[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[7]~feeder_combout\ = \inst4|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(7),
	combout => \inst4|PACKET_CHAR3[7]~feeder_combout\);

-- Location: FF_X30_Y24_N3
\inst4|PACKET_CHAR3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[7]~feeder_combout\,
	ena => \inst4|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(7));

-- Location: LCCOMB_X30_Y24_N0
\inst4|PACKET_CHAR3[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[0]~feeder_combout\ = \inst4|SHIFTIN\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|SHIFTIN\(0),
	combout => \inst4|PACKET_CHAR3[0]~feeder_combout\);

-- Location: FF_X30_Y24_N1
\inst4|PACKET_CHAR3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[0]~feeder_combout\,
	ena => \inst4|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(0));

-- Location: LCCOMB_X30_Y24_N6
\inst4|new_cursor_row[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[0]~10_combout\ = (\inst4|cursor_row\(0) & ((GND) # (!\inst4|PACKET_CHAR3\(0)))) # (!\inst4|cursor_row\(0) & (\inst4|PACKET_CHAR3\(0) $ (GND)))
-- \inst4|new_cursor_row[0]~11\ = CARRY((\inst4|cursor_row\(0)) # (!\inst4|PACKET_CHAR3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(0),
	datab => \inst4|PACKET_CHAR3\(0),
	datad => VCC,
	combout => \inst4|new_cursor_row[0]~10_combout\,
	cout => \inst4|new_cursor_row[0]~11\);

-- Location: FF_X30_Y24_N7
\inst4|new_cursor_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(0));

-- Location: LCCOMB_X30_Y24_N20
\inst4|new_cursor_row[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[7]~24_combout\ = (\inst4|cursor_row\(7) & ((\inst4|PACKET_CHAR3\(7) & (!\inst4|new_cursor_row[6]~23\)) # (!\inst4|PACKET_CHAR3\(7) & (\inst4|new_cursor_row[6]~23\ & VCC)))) # (!\inst4|cursor_row\(7) & ((\inst4|PACKET_CHAR3\(7) & 
-- ((\inst4|new_cursor_row[6]~23\) # (GND))) # (!\inst4|PACKET_CHAR3\(7) & (!\inst4|new_cursor_row[6]~23\))))
-- \inst4|new_cursor_row[7]~25\ = CARRY((\inst4|cursor_row\(7) & (\inst4|PACKET_CHAR3\(7) & !\inst4|new_cursor_row[6]~23\)) # (!\inst4|cursor_row\(7) & ((\inst4|PACKET_CHAR3\(7)) # (!\inst4|new_cursor_row[6]~23\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(7),
	datab => \inst4|PACKET_CHAR3\(7),
	datad => VCC,
	cin => \inst4|new_cursor_row[6]~23\,
	combout => \inst4|new_cursor_row[7]~24_combout\,
	cout => \inst4|new_cursor_row[7]~25\);

-- Location: FF_X30_Y24_N21
\inst4|new_cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[7]~24_combout\,
	asdata => VCC,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(7));

-- Location: LCCOMB_X31_Y24_N4
\inst4|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~1_combout\ = (\inst4|new_cursor_row\(5) & (\inst4|new_cursor_row\(8) & (\inst4|new_cursor_row\(6) & \inst4|new_cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(5),
	datab => \inst4|new_cursor_row\(8),
	datac => \inst4|new_cursor_row\(6),
	datad => \inst4|new_cursor_row\(7),
	combout => \inst4|LessThan5~1_combout\);

-- Location: LCCOMB_X30_Y24_N22
\inst4|new_cursor_row[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[8]~26_combout\ = ((\inst4|cursor_row\(8) $ (\inst4|PACKET_CHAR3\(7) $ (\inst4|new_cursor_row[7]~25\)))) # (GND)
-- \inst4|new_cursor_row[8]~27\ = CARRY((\inst4|cursor_row\(8) & ((!\inst4|new_cursor_row[7]~25\) # (!\inst4|PACKET_CHAR3\(7)))) # (!\inst4|cursor_row\(8) & (!\inst4|PACKET_CHAR3\(7) & !\inst4|new_cursor_row[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(8),
	datab => \inst4|PACKET_CHAR3\(7),
	datad => VCC,
	cin => \inst4|new_cursor_row[7]~25\,
	combout => \inst4|new_cursor_row[8]~26_combout\,
	cout => \inst4|new_cursor_row[8]~27\);

-- Location: LCCOMB_X30_Y24_N24
\inst4|new_cursor_row[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[9]~28_combout\ = \inst4|new_cursor_row[8]~27\ $ (!\inst4|PACKET_CHAR3\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|PACKET_CHAR3\(7),
	cin => \inst4|new_cursor_row[8]~27\,
	combout => \inst4|new_cursor_row[9]~28_combout\);

-- Location: FF_X30_Y24_N25
\inst4|new_cursor_row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[9]~28_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(9));

-- Location: LCCOMB_X31_Y24_N18
\inst4|cursor_row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~0_combout\ = (!\inst4|new_cursor_row\(9) & (((\inst4|LessThan5~0_combout\ & !\inst4|new_cursor_row\(0))) # (!\inst4|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan5~0_combout\,
	datab => \inst4|new_cursor_row\(0),
	datac => \inst4|LessThan5~1_combout\,
	datad => \inst4|new_cursor_row\(9),
	combout => \inst4|cursor_row~0_combout\);

-- Location: LCCOMB_X31_Y24_N20
\inst4|cursor_row~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~3_combout\ = ((!\inst4|RECV_UART~7_combout\ & ((\inst4|new_cursor_row\(7)) # (!\inst4|cursor_row~0_combout\)))) # (!\inst4|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal3~0_combout\,
	datab => \inst4|new_cursor_row\(7),
	datac => \inst4|cursor_row~0_combout\,
	datad => \inst4|RECV_UART~7_combout\,
	combout => \inst4|cursor_row~3_combout\);

-- Location: FF_X31_Y24_N21
\inst4|cursor_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~3_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(7));

-- Location: LCCOMB_X30_Y24_N4
\inst4|PACKET_CHAR3[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[4]~feeder_combout\ = \inst4|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(4),
	combout => \inst4|PACKET_CHAR3[4]~feeder_combout\);

-- Location: FF_X30_Y24_N5
\inst4|PACKET_CHAR3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[4]~feeder_combout\,
	ena => \inst4|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(4));

-- Location: LCCOMB_X31_Y24_N16
\inst4|cursor_row~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~6_combout\ = (\inst4|new_cursor_row\(3) & (\inst4|cursor_row~0_combout\ & (\inst4|Equal3~0_combout\ & !\inst4|RECV_UART~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(3),
	datab => \inst4|cursor_row~0_combout\,
	datac => \inst4|Equal3~0_combout\,
	datad => \inst4|RECV_UART~7_combout\,
	combout => \inst4|cursor_row~6_combout\);

-- Location: FF_X31_Y24_N17
\inst4|cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~6_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(3));

-- Location: LCCOMB_X30_Y24_N28
\inst4|PACKET_CHAR3[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|PACKET_CHAR3[2]~feeder_combout\ = \inst4|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|SHIFTIN\(2),
	combout => \inst4|PACKET_CHAR3[2]~feeder_combout\);

-- Location: FF_X30_Y24_N29
\inst4|PACKET_CHAR3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|PACKET_CHAR3[2]~feeder_combout\,
	ena => \inst4|right_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|PACKET_CHAR3\(2));

-- Location: LCCOMB_X31_Y24_N12
\inst4|cursor_row~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~8_combout\ = (\inst4|new_cursor_row\(1) & (\inst4|cursor_row~0_combout\ & (\inst4|Equal3~0_combout\ & !\inst4|RECV_UART~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(1),
	datab => \inst4|cursor_row~0_combout\,
	datac => \inst4|Equal3~0_combout\,
	datad => \inst4|RECV_UART~7_combout\,
	combout => \inst4|cursor_row~8_combout\);

-- Location: FF_X31_Y24_N13
\inst4|cursor_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~8_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(1));

-- Location: LCCOMB_X30_Y24_N10
\inst4|new_cursor_row[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[2]~14_combout\ = ((\inst4|cursor_row\(2) $ (\inst4|PACKET_CHAR3\(2) $ (\inst4|new_cursor_row[1]~13\)))) # (GND)
-- \inst4|new_cursor_row[2]~15\ = CARRY((\inst4|cursor_row\(2) & ((!\inst4|new_cursor_row[1]~13\) # (!\inst4|PACKET_CHAR3\(2)))) # (!\inst4|cursor_row\(2) & (!\inst4|PACKET_CHAR3\(2) & !\inst4|new_cursor_row[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(2),
	datab => \inst4|PACKET_CHAR3\(2),
	datad => VCC,
	cin => \inst4|new_cursor_row[1]~13\,
	combout => \inst4|new_cursor_row[2]~14_combout\,
	cout => \inst4|new_cursor_row[2]~15\);

-- Location: LCCOMB_X30_Y24_N12
\inst4|new_cursor_row[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[3]~16_combout\ = (\inst4|PACKET_CHAR3\(3) & ((\inst4|cursor_row\(3) & (!\inst4|new_cursor_row[2]~15\)) # (!\inst4|cursor_row\(3) & ((\inst4|new_cursor_row[2]~15\) # (GND))))) # (!\inst4|PACKET_CHAR3\(3) & ((\inst4|cursor_row\(3) & 
-- (\inst4|new_cursor_row[2]~15\ & VCC)) # (!\inst4|cursor_row\(3) & (!\inst4|new_cursor_row[2]~15\))))
-- \inst4|new_cursor_row[3]~17\ = CARRY((\inst4|PACKET_CHAR3\(3) & ((!\inst4|new_cursor_row[2]~15\) # (!\inst4|cursor_row\(3)))) # (!\inst4|PACKET_CHAR3\(3) & (!\inst4|cursor_row\(3) & !\inst4|new_cursor_row[2]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR3\(3),
	datab => \inst4|cursor_row\(3),
	datad => VCC,
	cin => \inst4|new_cursor_row[2]~15\,
	combout => \inst4|new_cursor_row[3]~16_combout\,
	cout => \inst4|new_cursor_row[3]~17\);

-- Location: LCCOMB_X30_Y24_N14
\inst4|new_cursor_row[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[4]~18_combout\ = ((\inst4|cursor_row\(4) $ (\inst4|PACKET_CHAR3\(4) $ (\inst4|new_cursor_row[3]~17\)))) # (GND)
-- \inst4|new_cursor_row[4]~19\ = CARRY((\inst4|cursor_row\(4) & ((!\inst4|new_cursor_row[3]~17\) # (!\inst4|PACKET_CHAR3\(4)))) # (!\inst4|cursor_row\(4) & (!\inst4|PACKET_CHAR3\(4) & !\inst4|new_cursor_row[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(4),
	datab => \inst4|PACKET_CHAR3\(4),
	datad => VCC,
	cin => \inst4|new_cursor_row[3]~17\,
	combout => \inst4|new_cursor_row[4]~18_combout\,
	cout => \inst4|new_cursor_row[4]~19\);

-- Location: FF_X30_Y24_N15
\inst4|new_cursor_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[4]~18_combout\,
	asdata => VCC,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(4));

-- Location: FF_X30_Y24_N13
\inst4|new_cursor_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[3]~16_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(3));

-- Location: FF_X30_Y24_N11
\inst4|new_cursor_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[2]~14_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(2));

-- Location: LCCOMB_X31_Y24_N26
\inst4|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LessThan5~0_combout\ = (!\inst4|new_cursor_row\(1) & (!\inst4|new_cursor_row\(4) & (!\inst4|new_cursor_row\(3) & !\inst4|new_cursor_row\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(1),
	datab => \inst4|new_cursor_row\(4),
	datac => \inst4|new_cursor_row\(3),
	datad => \inst4|new_cursor_row\(2),
	combout => \inst4|LessThan5~0_combout\);

-- Location: LCCOMB_X31_Y24_N24
\inst4|RECV_UART~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~5_combout\ = (!\inst4|new_cursor_row\(5) & (!\inst4|new_cursor_row\(6) & (\inst4|LessThan5~0_combout\ & !\inst4|new_cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(5),
	datab => \inst4|new_cursor_row\(6),
	datac => \inst4|LessThan5~0_combout\,
	datad => \inst4|new_cursor_row\(7),
	combout => \inst4|RECV_UART~5_combout\);

-- Location: LCCOMB_X31_Y24_N10
\inst4|RECV_UART~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~6_combout\ = (\inst4|new_cursor_row\(9)) # ((\inst4|new_cursor_row\(8) & ((\inst4|new_cursor_row\(0)) # (!\inst4|RECV_UART~5_combout\))) # (!\inst4|new_cursor_row\(8) & ((\inst4|RECV_UART~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(9),
	datab => \inst4|new_cursor_row\(8),
	datac => \inst4|new_cursor_row\(0),
	datad => \inst4|RECV_UART~5_combout\,
	combout => \inst4|RECV_UART~6_combout\);

-- Location: LCCOMB_X31_Y24_N0
\inst4|RECV_UART~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|RECV_UART~7_combout\ = (!\inst4|cursor_row\(8) & (!\inst4|cursor_row\(7) & \inst4|RECV_UART~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row\(8),
	datab => \inst4|cursor_row\(7),
	datad => \inst4|RECV_UART~6_combout\,
	combout => \inst4|RECV_UART~7_combout\);

-- Location: LCCOMB_X31_Y24_N8
\inst4|cursor_row~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~4_combout\ = ((!\inst4|RECV_UART~7_combout\ & ((\inst4|new_cursor_row\(5)) # (!\inst4|cursor_row~0_combout\)))) # (!\inst4|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|new_cursor_row\(5),
	datab => \inst4|cursor_row~0_combout\,
	datac => \inst4|Equal3~0_combout\,
	datad => \inst4|RECV_UART~7_combout\,
	combout => \inst4|cursor_row~4_combout\);

-- Location: FF_X31_Y24_N9
\inst4|cursor_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~4_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(5));

-- Location: LCCOMB_X30_Y24_N18
\inst4|new_cursor_row[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|new_cursor_row[6]~22_combout\ = ((\inst4|PACKET_CHAR3\(6) $ (\inst4|cursor_row\(6) $ (\inst4|new_cursor_row[5]~21\)))) # (GND)
-- \inst4|new_cursor_row[6]~23\ = CARRY((\inst4|PACKET_CHAR3\(6) & (\inst4|cursor_row\(6) & !\inst4|new_cursor_row[5]~21\)) # (!\inst4|PACKET_CHAR3\(6) & ((\inst4|cursor_row\(6)) # (!\inst4|new_cursor_row[5]~21\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|PACKET_CHAR3\(6),
	datab => \inst4|cursor_row\(6),
	datad => VCC,
	cin => \inst4|new_cursor_row[5]~21\,
	combout => \inst4|new_cursor_row[6]~22_combout\,
	cout => \inst4|new_cursor_row[6]~23\);

-- Location: FF_X30_Y24_N19
\inst4|new_cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[6]~22_combout\,
	asdata => VCC,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(6));

-- Location: LCCOMB_X31_Y24_N28
\inst4|cursor_row~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~1_combout\ = ((!\inst4|RECV_UART~7_combout\ & ((\inst4|new_cursor_row\(6)) # (!\inst4|cursor_row~0_combout\)))) # (!\inst4|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cursor_row~0_combout\,
	datab => \inst4|new_cursor_row\(6),
	datac => \inst4|Equal3~0_combout\,
	datad => \inst4|RECV_UART~7_combout\,
	combout => \inst4|cursor_row~1_combout\);

-- Location: FF_X31_Y24_N29
\inst4|cursor_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~1_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(6));

-- Location: FF_X30_Y24_N23
\inst4|new_cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|new_cursor_row[8]~26_combout\,
	asdata => \~GND~combout\,
	sload => \inst4|Equal4~0_combout\,
	ena => \inst4|new_cursor_column[6]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|new_cursor_row\(8));

-- Location: LCCOMB_X31_Y24_N14
\inst4|cursor_row~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|cursor_row~2_combout\ = (\inst4|Equal3~0_combout\ & (!\inst4|RECV_UART~7_combout\ & ((\inst4|new_cursor_row\(8)) # (!\inst4|cursor_row~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal3~0_combout\,
	datab => \inst4|new_cursor_row\(8),
	datac => \inst4|cursor_row~0_combout\,
	datad => \inst4|RECV_UART~7_combout\,
	combout => \inst4|cursor_row~2_combout\);

-- Location: FF_X31_Y24_N15
\inst4|cursor_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst4|MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst4|cursor_row~2_combout\,
	ena => \inst4|cursor_column[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cursor_row\(8));

-- Location: LCCOMB_X23_Y28_N24
\inst6|LED_out[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LED_out[6]~0_combout\ = (\inst4|cursor_row\(8) & (\inst4|cursor_row\(6) & \inst4|cursor_row\(7))) # (!\inst4|cursor_row\(8) & ((!\inst4|cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_row\(8),
	datac => \inst4|cursor_row\(6),
	datad => \inst4|cursor_row\(7),
	combout => \inst6|LED_out[6]~0_combout\);

-- Location: LCCOMB_X23_Y28_N14
\inst6|LED_out[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LED_out[5]~1_combout\ = (\inst4|cursor_row\(8) & (\inst4|cursor_row\(6) & \inst4|cursor_row\(7))) # (!\inst4|cursor_row\(8) & ((\inst4|cursor_row\(6)) # (\inst4|cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_row\(8),
	datac => \inst4|cursor_row\(6),
	datad => \inst4|cursor_row\(7),
	combout => \inst6|LED_out[5]~1_combout\);

-- Location: LCCOMB_X23_Y28_N0
\inst6|LED_out[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LED_out[4]~2_combout\ = (\inst4|cursor_row\(6)) # ((\inst4|cursor_row\(8) & !\inst4|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_row\(8),
	datac => \inst4|cursor_row\(6),
	datad => \inst4|cursor_row\(7),
	combout => \inst6|LED_out[4]~2_combout\);

-- Location: LCCOMB_X23_Y28_N22
\inst6|LED_out[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LED_out[3]~3_combout\ = (\inst4|cursor_row\(8) & (\inst4|cursor_row\(6) $ (!\inst4|cursor_row\(7)))) # (!\inst4|cursor_row\(8) & (\inst4|cursor_row\(6) & !\inst4|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_row\(8),
	datac => \inst4|cursor_row\(6),
	datad => \inst4|cursor_row\(7),
	combout => \inst6|LED_out[3]~3_combout\);

-- Location: LCCOMB_X23_Y28_N12
\inst6|LED_out[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LED_out[2]~4_combout\ = (!\inst4|cursor_row\(8) & (!\inst4|cursor_row\(6) & \inst4|cursor_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_row\(8),
	datac => \inst4|cursor_row\(6),
	datad => \inst4|cursor_row\(7),
	combout => \inst6|LED_out[2]~4_combout\);

-- Location: LCCOMB_X23_Y28_N10
\inst6|LED_out[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LED_out[1]~5_combout\ = (\inst4|cursor_row\(8) & (\inst4|cursor_row\(6) $ (\inst4|cursor_row\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_row\(8),
	datac => \inst4|cursor_row\(6),
	datad => \inst4|cursor_row\(7),
	combout => \inst6|LED_out[1]~5_combout\);

-- Location: LCCOMB_X23_Y28_N16
\inst6|LED_out[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|LED_out[0]~6_combout\ = (!\inst4|cursor_row\(7) & (\inst4|cursor_row\(8) $ (\inst4|cursor_row\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cursor_row\(8),
	datac => \inst4|cursor_row\(6),
	datad => \inst4|cursor_row\(7),
	combout => \inst6|LED_out[0]~6_combout\);

-- Location: LCCOMB_X37_Y26_N26
\inst1|SYNC|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~6_combout\ = ((!\inst1|SYNC|h_count\(8) & !\inst1|SYNC|h_count\(7))) # (!\inst1|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(9),
	datac => \inst1|SYNC|h_count\(8),
	datad => \inst1|SYNC|h_count\(7),
	combout => \inst1|SYNC|process_0~6_combout\);

-- Location: FF_X37_Y28_N27
\inst1|SYNC|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|process_0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|video_on_h~q\);

-- Location: LCCOMB_X37_Y24_N30
\inst1|SYNC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|LessThan7~1_combout\ = (!\inst1|SYNC|LessThan7~0_combout\ & !\inst1|SYNC|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|LessThan7~0_combout\,
	datad => \inst1|SYNC|v_count\(9),
	combout => \inst1|SYNC|LessThan7~1_combout\);

-- Location: FF_X37_Y28_N23
\inst1|SYNC|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|video_on_v~q\);

-- Location: FF_X37_Y26_N23
\inst1|SYNC|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(8),
	sload => VCC,
	ena => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(8));

-- Location: FF_X37_Y26_N21
\inst1|SYNC|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(7),
	sload => VCC,
	ena => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(7));

-- Location: FF_X37_Y26_N19
\inst1|SYNC|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(6),
	sload => VCC,
	ena => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(6));

-- Location: LCCOMB_X37_Y26_N28
\inst1|SYNC|pixel_column[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|pixel_column[5]~feeder_combout\ = \inst1|SYNC|h_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|h_count\(5),
	combout => \inst1|SYNC|pixel_column[5]~feeder_combout\);

-- Location: FF_X37_Y26_N29
\inst1|SYNC|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|pixel_column[5]~feeder_combout\,
	ena => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(5));

-- Location: LCCOMB_X37_Y26_N4
\inst1|Ball_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~1_combout\ = (\inst1|SYNC|pixel_column\(7)) # ((\inst1|SYNC|pixel_column\(6) & ((\inst1|Ball_on~0_combout\) # (\inst1|SYNC|pixel_column\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_on~0_combout\,
	datab => \inst1|SYNC|pixel_column\(7),
	datac => \inst1|SYNC|pixel_column\(6),
	datad => \inst1|SYNC|pixel_column\(5),
	combout => \inst1|Ball_on~1_combout\);

-- Location: FF_X36_Y26_N13
\inst1|SYNC|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|h_count\(3));

-- Location: LCCOMB_X37_Y26_N8
\inst1|SYNC|pixel_column[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|pixel_column[3]~feeder_combout\ = \inst1|SYNC|h_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|h_count\(3),
	combout => \inst1|SYNC|pixel_column[3]~feeder_combout\);

-- Location: FF_X37_Y26_N9
\inst1|SYNC|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|pixel_column[3]~feeder_combout\,
	ena => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(3));

-- Location: LCCOMB_X37_Y26_N14
\inst1|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_cout\ = CARRY((\inst1|SYNC|pixel_column\(4) & \inst1|SYNC|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(4),
	datab => \inst1|SYNC|pixel_column\(3),
	datad => VCC,
	cout => \inst1|Add0~1_cout\);

-- Location: LCCOMB_X37_Y26_N16
\inst1|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~3_cout\ = CARRY((!\inst1|Add0~1_cout\) # (!\inst1|SYNC|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_column\(5),
	datad => VCC,
	cin => \inst1|Add0~1_cout\,
	cout => \inst1|Add0~3_cout\);

-- Location: LCCOMB_X37_Y26_N2
\inst1|Ball_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~2_combout\ = (\inst1|Add0~6_combout\ & (((!\inst1|Ball_on~1_combout\)) # (!\inst1|SYNC|pixel_column\(8)))) # (!\inst1|Add0~6_combout\ & (\inst1|Add0~4_combout\ & ((!\inst1|Ball_on~1_combout\) # (!\inst1|SYNC|pixel_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datab => \inst1|SYNC|pixel_column\(8),
	datac => \inst1|Ball_on~1_combout\,
	datad => \inst1|Add0~4_combout\,
	combout => \inst1|Ball_on~2_combout\);

-- Location: FF_X37_Y26_N25
\inst1|SYNC|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(9),
	sload => VCC,
	ena => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(9));

-- Location: LCCOMB_X38_Y27_N0
\inst1|SYNC|pixel_row[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|pixel_row[8]~feeder_combout\ = \inst1|SYNC|v_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|v_count\(8),
	combout => \inst1|SYNC|pixel_row[8]~feeder_combout\);

-- Location: FF_X38_Y27_N1
\inst1|SYNC|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|pixel_row[8]~feeder_combout\,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(8));

-- Location: LCCOMB_X37_Y27_N20
\inst1|SYNC|pixel_row[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|pixel_row[7]~feeder_combout\ = \inst1|SYNC|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|v_count\(7),
	combout => \inst1|SYNC|pixel_row[7]~feeder_combout\);

-- Location: FF_X37_Y27_N21
\inst1|SYNC|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|pixel_row[7]~feeder_combout\,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(7));

-- Location: LCCOMB_X38_Y24_N30
\inst1|SYNC|v_count[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[5]~8_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~10_combout\) # ((!\inst1|SYNC|v_count[7]~1_combout\ & \inst1|SYNC|v_count\(5))))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (!\inst1|SYNC|v_count[7]~1_combout\ & 
-- (\inst1|SYNC|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|v_count[7]~1_combout\,
	datac => \inst1|SYNC|v_count\(5),
	datad => \inst1|SYNC|Add1~10_combout\,
	combout => \inst1|SYNC|v_count[5]~8_combout\);

-- Location: FF_X38_Y24_N31
\inst1|SYNC|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|v_count[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(5));

-- Location: FF_X38_Y24_N13
\inst1|SYNC|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(5),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(5));

-- Location: LCCOMB_X37_Y27_N24
\inst1|SYNC|pixel_row[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|pixel_row[4]~feeder_combout\ = \inst1|SYNC|v_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|v_count\(4),
	combout => \inst1|SYNC|pixel_row[4]~feeder_combout\);

-- Location: FF_X37_Y27_N25
\inst1|SYNC|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|pixel_row[4]~feeder_combout\,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(4));

-- Location: LCCOMB_X37_Y27_N2
\inst1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~2_combout\ = (\inst1|SYNC|pixel_row\(5) & (!\inst1|Add2~1\)) # (!\inst1|SYNC|pixel_row\(5) & ((\inst1|Add2~1\) # (GND)))
-- \inst1|Add2~3\ = CARRY((!\inst1|Add2~1\) # (!\inst1|SYNC|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst1|Add2~1\,
	combout => \inst1|Add2~2_combout\,
	cout => \inst1|Add2~3\);

-- Location: LCCOMB_X37_Y27_N6
\inst1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~6_combout\ = (\inst1|SYNC|pixel_row\(7) & (!\inst1|Add2~5\)) # (!\inst1|SYNC|pixel_row\(7) & ((\inst1|Add2~5\) # (GND)))
-- \inst1|Add2~7\ = CARRY((!\inst1|Add2~5\) # (!\inst1|SYNC|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_row\(7),
	datad => VCC,
	cin => \inst1|Add2~5\,
	combout => \inst1|Add2~6_combout\,
	cout => \inst1|Add2~7\);

-- Location: LCCOMB_X37_Y27_N8
\inst1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~8_combout\ = (\inst1|SYNC|pixel_row\(8) & (\inst1|Add2~7\ $ (GND))) # (!\inst1|SYNC|pixel_row\(8) & (!\inst1|Add2~7\ & VCC))
-- \inst1|Add2~9\ = CARRY((\inst1|SYNC|pixel_row\(8) & !\inst1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_row\(8),
	datad => VCC,
	cin => \inst1|Add2~7\,
	combout => \inst1|Add2~8_combout\,
	cout => \inst1|Add2~9\);

-- Location: LCCOMB_X37_Y27_N10
\inst1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~10_combout\ = \inst1|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add2~9\,
	combout => \inst1|Add2~10_combout\);

-- Location: LCCOMB_X37_Y26_N0
\inst1|Ball_on~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~5_combout\ = (\inst1|Ball_on~4_combout\ & (\inst1|Ball_on~2_combout\ & (!\inst1|SYNC|pixel_column\(9) & !\inst1|Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_on~4_combout\,
	datab => \inst1|Ball_on~2_combout\,
	datac => \inst1|SYNC|pixel_column\(9),
	datad => \inst1|Add2~10_combout\,
	combout => \inst1|Ball_on~5_combout\);

-- Location: FF_X33_Y28_N19
\inst1|Move_Ball:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	asdata => \inst1|Add4~20_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Move_Ball:counter[9]~q\);

-- Location: LCCOMB_X33_Y28_N18
\inst1|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~12_combout\ = (\inst1|Move_Ball:counter[6]~q\ & (\inst1|Add4~11\ $ (GND))) # (!\inst1|Move_Ball:counter[6]~q\ & (!\inst1|Add4~11\ & VCC))
-- \inst1|Add4~13\ = CARRY((\inst1|Move_Ball:counter[6]~q\ & !\inst1|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Move_Ball:counter[6]~q\,
	datad => VCC,
	cin => \inst1|Add4~11\,
	combout => \inst1|Add4~12_combout\,
	cout => \inst1|Add4~13\);

-- Location: LCCOMB_X32_Y28_N18
\inst1|Add4~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~23_combout\ = (!\inst1|counter~0_combout\ & \inst1|Add4~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|counter~0_combout\,
	datad => \inst1|Add4~12_combout\,
	combout => \inst1|Add4~23_combout\);

-- Location: LCCOMB_X33_Y28_N2
\inst1|Add4~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~26_combout\ = (\inst1|Add4~6_combout\ & !\inst1|counter~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~6_combout\,
	datad => \inst1|counter~0_combout\,
	combout => \inst1|Add4~26_combout\);

-- Location: LCCOMB_X36_Y28_N12
\inst1|Ball_Y_pos[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[0]~10_combout\ = (\inst1|Ball_Y_pos\(0) & (\inst1|Add4~26_combout\ $ (VCC))) # (!\inst1|Ball_Y_pos\(0) & (\inst1|Add4~26_combout\ & VCC))
-- \inst1|Ball_Y_pos[0]~11\ = CARRY((\inst1|Ball_Y_pos\(0) & \inst1|Add4~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(0),
	datab => \inst1|Add4~26_combout\,
	datad => VCC,
	combout => \inst1|Ball_Y_pos[0]~10_combout\,
	cout => \inst1|Ball_Y_pos[0]~11\);

-- Location: LCCOMB_X36_Y28_N14
\inst1|Ball_Y_pos[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[1]~12_combout\ = (\inst1|Add4~25_combout\ & ((\inst1|Add6~0_combout\ & (\inst1|Ball_Y_pos[0]~11\ & VCC)) # (!\inst1|Add6~0_combout\ & (!\inst1|Ball_Y_pos[0]~11\)))) # (!\inst1|Add4~25_combout\ & ((\inst1|Add6~0_combout\ & 
-- (!\inst1|Ball_Y_pos[0]~11\)) # (!\inst1|Add6~0_combout\ & ((\inst1|Ball_Y_pos[0]~11\) # (GND)))))
-- \inst1|Ball_Y_pos[1]~13\ = CARRY((\inst1|Add4~25_combout\ & (!\inst1|Add6~0_combout\ & !\inst1|Ball_Y_pos[0]~11\)) # (!\inst1|Add4~25_combout\ & ((!\inst1|Ball_Y_pos[0]~11\) # (!\inst1|Add6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~25_combout\,
	datab => \inst1|Add6~0_combout\,
	datad => VCC,
	cin => \inst1|Ball_Y_pos[0]~11\,
	combout => \inst1|Ball_Y_pos[1]~12_combout\,
	cout => \inst1|Ball_Y_pos[1]~13\);

-- Location: FF_X36_Y28_N15
\inst1|Ball_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(1));

-- Location: LCCOMB_X35_Y28_N10
\inst1|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add6~0_combout\ = (\inst1|Ball_Y_motion\(1) & (\inst1|Ball_Y_pos\(1) $ (VCC))) # (!\inst1|Ball_Y_motion\(1) & (\inst1|Ball_Y_pos\(1) & VCC))
-- \inst1|Add6~1\ = CARRY((\inst1|Ball_Y_motion\(1) & \inst1|Ball_Y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(1),
	datab => \inst1|Ball_Y_pos\(1),
	datad => VCC,
	combout => \inst1|Add6~0_combout\,
	cout => \inst1|Add6~1\);

-- Location: LCCOMB_X36_Y28_N16
\inst1|Ball_Y_pos[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[2]~14_combout\ = ((\inst1|Add4~24_combout\ $ (\inst1|Add6~2_combout\ $ (!\inst1|Ball_Y_pos[1]~13\)))) # (GND)
-- \inst1|Ball_Y_pos[2]~15\ = CARRY((\inst1|Add4~24_combout\ & ((\inst1|Add6~2_combout\) # (!\inst1|Ball_Y_pos[1]~13\))) # (!\inst1|Add4~24_combout\ & (\inst1|Add6~2_combout\ & !\inst1|Ball_Y_pos[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~24_combout\,
	datab => \inst1|Add6~2_combout\,
	datad => VCC,
	cin => \inst1|Ball_Y_pos[1]~13\,
	combout => \inst1|Ball_Y_pos[2]~14_combout\,
	cout => \inst1|Ball_Y_pos[2]~15\);

-- Location: FF_X36_Y28_N17
\inst1|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(2));

-- Location: LCCOMB_X35_Y28_N12
\inst1|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add6~2_combout\ = (\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(2) & (\inst1|Add6~1\ & VCC)) # (!\inst1|Ball_Y_pos\(2) & (!\inst1|Add6~1\)))) # (!\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(2) & (!\inst1|Add6~1\)) # (!\inst1|Ball_Y_pos\(2) & 
-- ((\inst1|Add6~1\) # (GND)))))
-- \inst1|Add6~3\ = CARRY((\inst1|Ball_Y_motion\(2) & (!\inst1|Ball_Y_pos\(2) & !\inst1|Add6~1\)) # (!\inst1|Ball_Y_motion\(2) & ((!\inst1|Add6~1\) # (!\inst1|Ball_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst1|Add6~1\,
	combout => \inst1|Add6~2_combout\,
	cout => \inst1|Add6~3\);

-- Location: LCCOMB_X36_Y28_N18
\inst1|Ball_Y_pos[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[3]~16_combout\ = (\inst1|Add6~4_combout\ & ((\inst1|Add4~23_combout\ & (\inst1|Ball_Y_pos[2]~15\ & VCC)) # (!\inst1|Add4~23_combout\ & (!\inst1|Ball_Y_pos[2]~15\)))) # (!\inst1|Add6~4_combout\ & ((\inst1|Add4~23_combout\ & 
-- (!\inst1|Ball_Y_pos[2]~15\)) # (!\inst1|Add4~23_combout\ & ((\inst1|Ball_Y_pos[2]~15\) # (GND)))))
-- \inst1|Ball_Y_pos[3]~17\ = CARRY((\inst1|Add6~4_combout\ & (!\inst1|Add4~23_combout\ & !\inst1|Ball_Y_pos[2]~15\)) # (!\inst1|Add6~4_combout\ & ((!\inst1|Ball_Y_pos[2]~15\) # (!\inst1|Add4~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add6~4_combout\,
	datab => \inst1|Add4~23_combout\,
	datad => VCC,
	cin => \inst1|Ball_Y_pos[2]~15\,
	combout => \inst1|Ball_Y_pos[3]~16_combout\,
	cout => \inst1|Ball_Y_pos[3]~17\);

-- Location: FF_X36_Y28_N19
\inst1|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(3));

-- Location: LCCOMB_X35_Y28_N8
\inst1|Ball_Y_motion~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion~0_combout\ = (\inst1|Ball_Y_pos\(3) & ((\inst1|Ball_Y_pos\(0)) # ((\inst1|Ball_Y_pos\(1)) # (\inst1|Ball_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(0),
	datab => \inst1|Ball_Y_pos\(3),
	datac => \inst1|Ball_Y_pos\(1),
	datad => \inst1|Ball_Y_pos\(2),
	combout => \inst1|Ball_Y_motion~0_combout\);

-- Location: LCCOMB_X36_Y28_N20
\inst1|Ball_Y_pos[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[4]~18_combout\ = ((\inst1|Add6~6_combout\ $ (\inst1|Add4~22_combout\ $ (!\inst1|Ball_Y_pos[3]~17\)))) # (GND)
-- \inst1|Ball_Y_pos[4]~19\ = CARRY((\inst1|Add6~6_combout\ & ((\inst1|Add4~22_combout\) # (!\inst1|Ball_Y_pos[3]~17\))) # (!\inst1|Add6~6_combout\ & (\inst1|Add4~22_combout\ & !\inst1|Ball_Y_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add6~6_combout\,
	datab => \inst1|Add4~22_combout\,
	datad => VCC,
	cin => \inst1|Ball_Y_pos[3]~17\,
	combout => \inst1|Ball_Y_pos[4]~18_combout\,
	cout => \inst1|Ball_Y_pos[4]~19\);

-- Location: FF_X36_Y28_N21
\inst1|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(4));

-- Location: LCCOMB_X35_Y28_N18
\inst1|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add6~8_combout\ = ((\inst1|Ball_Y_motion\(2) $ (\inst1|Ball_Y_pos\(5) $ (!\inst1|Add6~7\)))) # (GND)
-- \inst1|Add6~9\ = CARRY((\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(5)) # (!\inst1|Add6~7\))) # (!\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos\(5) & !\inst1|Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst1|Add6~7\,
	combout => \inst1|Add6~8_combout\,
	cout => \inst1|Add6~9\);

-- Location: LCCOMB_X36_Y28_N22
\inst1|Ball_Y_pos[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[5]~20_combout\ = (\inst1|Add4~21_combout\ & ((\inst1|Add6~8_combout\ & (\inst1|Ball_Y_pos[4]~19\ & VCC)) # (!\inst1|Add6~8_combout\ & (!\inst1|Ball_Y_pos[4]~19\)))) # (!\inst1|Add4~21_combout\ & ((\inst1|Add6~8_combout\ & 
-- (!\inst1|Ball_Y_pos[4]~19\)) # (!\inst1|Add6~8_combout\ & ((\inst1|Ball_Y_pos[4]~19\) # (GND)))))
-- \inst1|Ball_Y_pos[5]~21\ = CARRY((\inst1|Add4~21_combout\ & (!\inst1|Add6~8_combout\ & !\inst1|Ball_Y_pos[4]~19\)) # (!\inst1|Add4~21_combout\ & ((!\inst1|Ball_Y_pos[4]~19\) # (!\inst1|Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~21_combout\,
	datab => \inst1|Add6~8_combout\,
	datad => VCC,
	cin => \inst1|Ball_Y_pos[4]~19\,
	combout => \inst1|Ball_Y_pos[5]~20_combout\,
	cout => \inst1|Ball_Y_pos[5]~21\);

-- Location: FF_X36_Y28_N23
\inst1|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(5));

-- Location: LCCOMB_X35_Y28_N20
\inst1|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add6~10_combout\ = (\inst1|Ball_Y_pos\(6) & ((\inst1|Ball_Y_motion\(2) & (\inst1|Add6~9\ & VCC)) # (!\inst1|Ball_Y_motion\(2) & (!\inst1|Add6~9\)))) # (!\inst1|Ball_Y_pos\(6) & ((\inst1|Ball_Y_motion\(2) & (!\inst1|Add6~9\)) # 
-- (!\inst1|Ball_Y_motion\(2) & ((\inst1|Add6~9\) # (GND)))))
-- \inst1|Add6~11\ = CARRY((\inst1|Ball_Y_pos\(6) & (!\inst1|Ball_Y_motion\(2) & !\inst1|Add6~9\)) # (!\inst1|Ball_Y_pos\(6) & ((!\inst1|Add6~9\) # (!\inst1|Ball_Y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(6),
	datab => \inst1|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst1|Add6~9\,
	combout => \inst1|Add6~10_combout\,
	cout => \inst1|Add6~11\);

-- Location: LCCOMB_X35_Y28_N22
\inst1|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add6~12_combout\ = ((\inst1|Ball_Y_pos\(7) $ (\inst1|Ball_Y_motion\(2) $ (!\inst1|Add6~11\)))) # (GND)
-- \inst1|Add6~13\ = CARRY((\inst1|Ball_Y_pos\(7) & ((\inst1|Ball_Y_motion\(2)) # (!\inst1|Add6~11\))) # (!\inst1|Ball_Y_pos\(7) & (\inst1|Ball_Y_motion\(2) & !\inst1|Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(7),
	datab => \inst1|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst1|Add6~11\,
	combout => \inst1|Add6~12_combout\,
	cout => \inst1|Add6~13\);

-- Location: LCCOMB_X36_Y28_N24
\inst1|Ball_Y_pos[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[6]~22_combout\ = ((\inst1|Add4~20_combout\ $ (\inst1|Add6~10_combout\ $ (!\inst1|Ball_Y_pos[5]~21\)))) # (GND)
-- \inst1|Ball_Y_pos[6]~23\ = CARRY((\inst1|Add4~20_combout\ & ((\inst1|Add6~10_combout\) # (!\inst1|Ball_Y_pos[5]~21\))) # (!\inst1|Add4~20_combout\ & (\inst1|Add6~10_combout\ & !\inst1|Ball_Y_pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~20_combout\,
	datab => \inst1|Add6~10_combout\,
	datad => VCC,
	cin => \inst1|Ball_Y_pos[5]~21\,
	combout => \inst1|Ball_Y_pos[6]~22_combout\,
	cout => \inst1|Ball_Y_pos[6]~23\);

-- Location: LCCOMB_X36_Y28_N26
\inst1|Ball_Y_pos[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[7]~24_combout\ = (\inst1|Add4~20_combout\ & ((\inst1|Add6~12_combout\ & (\inst1|Ball_Y_pos[6]~23\ & VCC)) # (!\inst1|Add6~12_combout\ & (!\inst1|Ball_Y_pos[6]~23\)))) # (!\inst1|Add4~20_combout\ & ((\inst1|Add6~12_combout\ & 
-- (!\inst1|Ball_Y_pos[6]~23\)) # (!\inst1|Add6~12_combout\ & ((\inst1|Ball_Y_pos[6]~23\) # (GND)))))
-- \inst1|Ball_Y_pos[7]~25\ = CARRY((\inst1|Add4~20_combout\ & (!\inst1|Add6~12_combout\ & !\inst1|Ball_Y_pos[6]~23\)) # (!\inst1|Add4~20_combout\ & ((!\inst1|Ball_Y_pos[6]~23\) # (!\inst1|Add6~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~20_combout\,
	datab => \inst1|Add6~12_combout\,
	datad => VCC,
	cin => \inst1|Ball_Y_pos[6]~23\,
	combout => \inst1|Ball_Y_pos[7]~24_combout\,
	cout => \inst1|Ball_Y_pos[7]~25\);

-- Location: FF_X36_Y28_N27
\inst1|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(7));

-- Location: LCCOMB_X35_Y28_N2
\inst1|Ball_Y_motion~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion~1_combout\ = (\inst1|Ball_Y_pos\(6)) # ((\inst1|Ball_Y_pos\(4)) # ((\inst1|Ball_Y_pos\(7)) # (\inst1|Ball_Y_pos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(6),
	datab => \inst1|Ball_Y_pos\(4),
	datac => \inst1|Ball_Y_pos\(7),
	datad => \inst1|Ball_Y_pos\(5),
	combout => \inst1|Ball_Y_motion~1_combout\);

-- Location: LCCOMB_X35_Y28_N28
\inst1|Ball_Y_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion~2_combout\ = (\inst1|Ball_Y_pos\(8)) # ((\inst1|Ball_Y_motion~0_combout\) # (\inst1|Ball_Y_motion~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Ball_Y_pos\(8),
	datac => \inst1|Ball_Y_motion~0_combout\,
	datad => \inst1|Ball_Y_motion~1_combout\,
	combout => \inst1|Ball_Y_motion~2_combout\);

-- Location: LCCOMB_X35_Y28_N4
\inst1|Ball_Y_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion~3_combout\ = (\inst4|left_button~q\ & ((\inst1|Ball_Y_pos\(9)) # (\inst1|Ball_Y_motion~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|left_button~q\,
	datac => \inst1|Ball_Y_pos\(9),
	datad => \inst1|Ball_Y_motion~2_combout\,
	combout => \inst1|Ball_Y_motion~3_combout\);

-- Location: FF_X35_Y28_N5
\inst1|Ball_Y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_motion~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_motion\(2));

-- Location: LCCOMB_X36_Y28_N28
\inst1|Ball_Y_pos[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[8]~26_combout\ = ((\inst1|Add4~20_combout\ $ (\inst1|Add6~14_combout\ $ (!\inst1|Ball_Y_pos[7]~25\)))) # (GND)
-- \inst1|Ball_Y_pos[8]~27\ = CARRY((\inst1|Add4~20_combout\ & ((\inst1|Add6~14_combout\) # (!\inst1|Ball_Y_pos[7]~25\))) # (!\inst1|Add4~20_combout\ & (\inst1|Add6~14_combout\ & !\inst1|Ball_Y_pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add4~20_combout\,
	datab => \inst1|Add6~14_combout\,
	datad => VCC,
	cin => \inst1|Ball_Y_pos[7]~25\,
	combout => \inst1|Ball_Y_pos[8]~26_combout\,
	cout => \inst1|Ball_Y_pos[8]~27\);

-- Location: FF_X36_Y28_N29
\inst1|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(8));

-- Location: LCCOMB_X32_Y28_N8
\inst1|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan4~3_combout\ = (!\inst1|Ball_Y_pos\(7)) # (!\inst1|Ball_Y_pos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Ball_Y_pos\(8),
	datad => \inst1|Ball_Y_pos\(7),
	combout => \inst1|LessThan4~3_combout\);

-- Location: FF_X36_Y28_N25
\inst1|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(6));

-- Location: LCCOMB_X32_Y28_N30
\inst1|LessThan4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan4~2_combout\ = ((!\inst1|Ball_Y_pos\(5) & ((!\inst1|Ball_Y_pos\(4)) # (!\inst1|Ball_Y_pos\(3))))) # (!\inst1|Ball_Y_pos\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(3),
	datab => \inst1|Ball_Y_pos\(6),
	datac => \inst1|Ball_Y_pos\(4),
	datad => \inst1|Ball_Y_pos\(5),
	combout => \inst1|LessThan4~2_combout\);

-- Location: LCCOMB_X32_Y28_N14
\inst1|counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|counter~0_combout\ = (\inst1|Ball_Y_pos\(9)) # ((\inst4|left_button~q\) # ((!\inst1|LessThan4~3_combout\ & !\inst1|LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(9),
	datab => \inst1|LessThan4~3_combout\,
	datac => \inst1|LessThan4~2_combout\,
	datad => \inst4|left_button~q\,
	combout => \inst1|counter~0_combout\);

-- Location: FF_X33_Y28_N5
\inst1|Move_Ball:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	asdata => \inst1|Add4~26_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Move_Ball:counter[3]~q\);

-- Location: LCCOMB_X33_Y28_N8
\inst1|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~2_combout\ = (\inst1|Move_Ball:counter[1]~q\ & (!\inst1|Add4~1\)) # (!\inst1|Move_Ball:counter[1]~q\ & ((\inst1|Add4~1\) # (GND)))
-- \inst1|Add4~3\ = CARRY((!\inst1|Add4~1\) # (!\inst1|Move_Ball:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Move_Ball:counter[1]~q\,
	datad => VCC,
	cin => \inst1|Add4~1\,
	combout => \inst1|Add4~2_combout\,
	cout => \inst1|Add4~3\);

-- Location: LCCOMB_X33_Y28_N0
\inst1|Add4~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~28_combout\ = (!\inst1|counter~0_combout\ & \inst1|Add4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter~0_combout\,
	datad => \inst1|Add4~2_combout\,
	combout => \inst1|Add4~28_combout\);

-- Location: FF_X33_Y28_N1
\inst1|Move_Ball:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Add4~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Move_Ball:counter[1]~q\);

-- Location: LCCOMB_X33_Y28_N14
\inst1|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~8_combout\ = (\inst1|Move_Ball:counter[4]~q\ & (\inst1|Add4~7\ $ (GND))) # (!\inst1|Move_Ball:counter[4]~q\ & (!\inst1|Add4~7\ & VCC))
-- \inst1|Add4~9\ = CARRY((\inst1|Move_Ball:counter[4]~q\ & !\inst1|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Move_Ball:counter[4]~q\,
	datad => VCC,
	cin => \inst1|Add4~7\,
	combout => \inst1|Add4~8_combout\,
	cout => \inst1|Add4~9\);

-- Location: LCCOMB_X32_Y28_N10
\inst1|Add4~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~25_combout\ = (!\inst1|counter~0_combout\ & \inst1|Add4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|counter~0_combout\,
	datac => \inst1|Add4~8_combout\,
	combout => \inst1|Add4~25_combout\);

-- Location: FF_X33_Y28_N3
\inst1|Move_Ball:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	asdata => \inst1|Add4~25_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Move_Ball:counter[4]~q\);

-- Location: LCCOMB_X33_Y28_N16
\inst1|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~10_combout\ = (\inst1|Move_Ball:counter[5]~q\ & (!\inst1|Add4~9\)) # (!\inst1|Move_Ball:counter[5]~q\ & ((\inst1|Add4~9\) # (GND)))
-- \inst1|Add4~11\ = CARRY((!\inst1|Add4~9\) # (!\inst1|Move_Ball:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Move_Ball:counter[5]~q\,
	datad => VCC,
	cin => \inst1|Add4~9\,
	combout => \inst1|Add4~10_combout\,
	cout => \inst1|Add4~11\);

-- Location: LCCOMB_X32_Y28_N20
\inst1|Add4~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~24_combout\ = (!\inst1|counter~0_combout\ & \inst1|Add4~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|counter~0_combout\,
	datad => \inst1|Add4~10_combout\,
	combout => \inst1|Add4~24_combout\);

-- Location: FF_X33_Y28_N29
\inst1|Move_Ball:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	asdata => \inst1|Add4~24_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Move_Ball:counter[5]~q\);

-- Location: LCCOMB_X33_Y28_N20
\inst1|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~14_combout\ = (\inst1|Move_Ball:counter[7]~q\ & (!\inst1|Add4~13\)) # (!\inst1|Move_Ball:counter[7]~q\ & ((\inst1|Add4~13\) # (GND)))
-- \inst1|Add4~15\ = CARRY((!\inst1|Add4~13\) # (!\inst1|Move_Ball:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Move_Ball:counter[7]~q\,
	datad => VCC,
	cin => \inst1|Add4~13\,
	combout => \inst1|Add4~14_combout\,
	cout => \inst1|Add4~15\);

-- Location: LCCOMB_X33_Y28_N28
\inst1|Add4~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~22_combout\ = (\inst1|Add4~14_combout\ & !\inst1|counter~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add4~14_combout\,
	datad => \inst1|counter~0_combout\,
	combout => \inst1|Add4~22_combout\);

-- Location: FF_X33_Y28_N9
\inst1|Move_Ball:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	asdata => \inst1|Add4~22_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Move_Ball:counter[7]~q\);

-- Location: LCCOMB_X33_Y28_N24
\inst1|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~18_combout\ = \inst1|Add4~17\ $ (\inst1|Move_Ball:counter[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Move_Ball:counter[9]~q\,
	cin => \inst1|Add4~17\,
	combout => \inst1|Add4~18_combout\);

-- Location: LCCOMB_X33_Y28_N4
\inst1|Add4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add4~20_combout\ = (!\inst1|counter~0_combout\ & \inst1|Add4~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|counter~0_combout\,
	datad => \inst1|Add4~18_combout\,
	combout => \inst1|Add4~20_combout\);

-- Location: LCCOMB_X36_Y28_N30
\inst1|Ball_Y_pos[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[9]~28_combout\ = \inst1|Add6~16_combout\ $ (\inst1|Ball_Y_pos[8]~27\ $ (\inst1|Add4~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add6~16_combout\,
	datad => \inst1|Add4~20_combout\,
	cin => \inst1|Ball_Y_pos[8]~27\,
	combout => \inst1|Ball_Y_pos[9]~28_combout\);

-- Location: FF_X36_Y28_N31
\inst1|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(9));

-- Location: LCCOMB_X37_Y27_N22
\inst1|SYNC|pixel_row[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|pixel_row[3]~feeder_combout\ = \inst1|SYNC|v_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|v_count\(3),
	combout => \inst1|SYNC|pixel_row[3]~feeder_combout\);

-- Location: FF_X37_Y27_N23
\inst1|SYNC|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|pixel_row[3]~feeder_combout\,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(3));

-- Location: FF_X37_Y28_N25
\inst1|SYNC|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(2),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(2));

-- Location: LCCOMB_X38_Y28_N0
\inst1|SYNC|pixel_row[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|pixel_row[1]~feeder_combout\ = \inst1|SYNC|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|v_count\(1),
	combout => \inst1|SYNC|pixel_row[1]~feeder_combout\);

-- Location: FF_X38_Y28_N1
\inst1|SYNC|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|pixel_row[1]~feeder_combout\,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(1));

-- Location: FF_X36_Y28_N13
\inst1|Ball_Y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(0));

-- Location: LCCOMB_X38_Y28_N6
\inst1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~1_cout\ = CARRY((!\inst1|SYNC|pixel_row\(0) & \inst1|Ball_Y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(0),
	datab => \inst1|Ball_Y_pos\(0),
	datad => VCC,
	cout => \inst1|LessThan2~1_cout\);

-- Location: LCCOMB_X38_Y28_N8
\inst1|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~3_cout\ = CARRY((\inst1|Ball_Y_pos\(1) & (\inst1|SYNC|pixel_row\(1) & !\inst1|LessThan2~1_cout\)) # (!\inst1|Ball_Y_pos\(1) & ((\inst1|SYNC|pixel_row\(1)) # (!\inst1|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(1),
	datab => \inst1|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst1|LessThan2~1_cout\,
	cout => \inst1|LessThan2~3_cout\);

-- Location: LCCOMB_X38_Y28_N10
\inst1|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~5_cout\ = CARRY((\inst1|Ball_Y_pos\(2) & ((!\inst1|LessThan2~3_cout\) # (!\inst1|SYNC|pixel_row\(2)))) # (!\inst1|Ball_Y_pos\(2) & (!\inst1|SYNC|pixel_row\(2) & !\inst1|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(2),
	datab => \inst1|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst1|LessThan2~3_cout\,
	cout => \inst1|LessThan2~5_cout\);

-- Location: LCCOMB_X38_Y28_N12
\inst1|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~7_cout\ = CARRY((\inst1|Ball_Y_pos\(3) & (!\inst1|SYNC|pixel_row\(3) & !\inst1|LessThan2~5_cout\)) # (!\inst1|Ball_Y_pos\(3) & ((!\inst1|LessThan2~5_cout\) # (!\inst1|SYNC|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(3),
	datab => \inst1|SYNC|pixel_row\(3),
	datad => VCC,
	cin => \inst1|LessThan2~5_cout\,
	cout => \inst1|LessThan2~7_cout\);

-- Location: LCCOMB_X38_Y28_N14
\inst1|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~9_cout\ = CARRY((\inst1|Add2~0_combout\ & (\inst1|Ball_Y_pos\(4) & !\inst1|LessThan2~7_cout\)) # (!\inst1|Add2~0_combout\ & ((\inst1|Ball_Y_pos\(4)) # (!\inst1|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~0_combout\,
	datab => \inst1|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst1|LessThan2~7_cout\,
	cout => \inst1|LessThan2~9_cout\);

-- Location: LCCOMB_X38_Y28_N16
\inst1|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~11_cout\ = CARRY((\inst1|Ball_Y_pos\(5) & (\inst1|Add2~2_combout\ & !\inst1|LessThan2~9_cout\)) # (!\inst1|Ball_Y_pos\(5) & ((\inst1|Add2~2_combout\) # (!\inst1|LessThan2~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(5),
	datab => \inst1|Add2~2_combout\,
	datad => VCC,
	cin => \inst1|LessThan2~9_cout\,
	cout => \inst1|LessThan2~11_cout\);

-- Location: LCCOMB_X38_Y28_N18
\inst1|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~13_cout\ = CARRY((\inst1|Add2~4_combout\ & (\inst1|Ball_Y_pos\(6) & !\inst1|LessThan2~11_cout\)) # (!\inst1|Add2~4_combout\ & ((\inst1|Ball_Y_pos\(6)) # (!\inst1|LessThan2~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~4_combout\,
	datab => \inst1|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst1|LessThan2~11_cout\,
	cout => \inst1|LessThan2~13_cout\);

-- Location: LCCOMB_X38_Y28_N20
\inst1|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~15_cout\ = CARRY((\inst1|Ball_Y_pos\(7) & (\inst1|Add2~6_combout\ & !\inst1|LessThan2~13_cout\)) # (!\inst1|Ball_Y_pos\(7) & ((\inst1|Add2~6_combout\) # (!\inst1|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(7),
	datab => \inst1|Add2~6_combout\,
	datad => VCC,
	cin => \inst1|LessThan2~13_cout\,
	cout => \inst1|LessThan2~15_cout\);

-- Location: LCCOMB_X38_Y28_N22
\inst1|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~17_cout\ = CARRY((\inst1|Ball_Y_pos\(8) & ((!\inst1|LessThan2~15_cout\) # (!\inst1|Add2~8_combout\))) # (!\inst1|Ball_Y_pos\(8) & (!\inst1|Add2~8_combout\ & !\inst1|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(8),
	datab => \inst1|Add2~8_combout\,
	datad => VCC,
	cin => \inst1|LessThan2~15_cout\,
	cout => \inst1|LessThan2~17_cout\);

-- Location: LCCOMB_X38_Y28_N24
\inst1|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~18_combout\ = (\inst1|Add2~10_combout\ & (\inst1|LessThan2~17_cout\ & \inst1|Ball_Y_pos\(9))) # (!\inst1|Add2~10_combout\ & ((\inst1|LessThan2~17_cout\) # (\inst1|Ball_Y_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add2~10_combout\,
	datad => \inst1|Ball_Y_pos\(9),
	cin => \inst1|LessThan2~17_cout\,
	combout => \inst1|LessThan2~18_combout\);

-- Location: LCCOMB_X36_Y28_N4
\inst1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~4_combout\ = (\inst1|Ball_Y_pos\(6) & (\inst1|Add3~3\ $ (GND))) # (!\inst1|Ball_Y_pos\(6) & (!\inst1|Add3~3\ & VCC))
-- \inst1|Add3~5\ = CARRY((\inst1|Ball_Y_pos\(6) & !\inst1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst1|Add3~3\,
	combout => \inst1|Add3~4_combout\,
	cout => \inst1|Add3~5\);

-- Location: LCCOMB_X36_Y28_N6
\inst1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~6_combout\ = (\inst1|Ball_Y_pos\(7) & (!\inst1|Add3~5\)) # (!\inst1|Ball_Y_pos\(7) & ((\inst1|Add3~5\) # (GND)))
-- \inst1|Add3~7\ = CARRY((!\inst1|Add3~5\) # (!\inst1|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst1|Add3~5\,
	combout => \inst1|Add3~6_combout\,
	cout => \inst1|Add3~7\);

-- Location: LCCOMB_X38_Y28_N2
\inst1|SYNC|pixel_row[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|pixel_row[0]~feeder_combout\ = \inst1|SYNC|v_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|v_count\(0),
	combout => \inst1|SYNC|pixel_row[0]~feeder_combout\);

-- Location: FF_X38_Y28_N3
\inst1|SYNC|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|pixel_row[0]~feeder_combout\,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(0));

-- Location: LCCOMB_X37_Y28_N12
\inst1|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~1_cout\ = CARRY((!\inst1|Ball_Y_pos\(0) & \inst1|SYNC|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(0),
	datab => \inst1|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst1|LessThan3~1_cout\);

-- Location: LCCOMB_X37_Y28_N14
\inst1|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~3_cout\ = CARRY((\inst1|Ball_Y_pos\(1) & ((!\inst1|LessThan3~1_cout\) # (!\inst1|SYNC|pixel_row\(1)))) # (!\inst1|Ball_Y_pos\(1) & (!\inst1|SYNC|pixel_row\(1) & !\inst1|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(1),
	datab => \inst1|SYNC|pixel_row\(1),
	datad => VCC,
	cin => \inst1|LessThan3~1_cout\,
	cout => \inst1|LessThan3~3_cout\);

-- Location: LCCOMB_X37_Y28_N16
\inst1|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~5_cout\ = CARRY((\inst1|Ball_Y_pos\(2) & (\inst1|SYNC|pixel_row\(2) & !\inst1|LessThan3~3_cout\)) # (!\inst1|Ball_Y_pos\(2) & ((\inst1|SYNC|pixel_row\(2)) # (!\inst1|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(2),
	datab => \inst1|SYNC|pixel_row\(2),
	datad => VCC,
	cin => \inst1|LessThan3~3_cout\,
	cout => \inst1|LessThan3~5_cout\);

-- Location: LCCOMB_X37_Y28_N18
\inst1|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~7_cout\ = CARRY((\inst1|Ball_Y_pos\(3) & (!\inst1|SYNC|pixel_row\(3) & !\inst1|LessThan3~5_cout\)) # (!\inst1|Ball_Y_pos\(3) & ((!\inst1|LessThan3~5_cout\) # (!\inst1|SYNC|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(3),
	datab => \inst1|SYNC|pixel_row\(3),
	datad => VCC,
	cin => \inst1|LessThan3~5_cout\,
	cout => \inst1|LessThan3~7_cout\);

-- Location: LCCOMB_X37_Y28_N20
\inst1|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~9_cout\ = CARRY((\inst1|Add3~0_combout\ & (\inst1|SYNC|pixel_row\(4) & !\inst1|LessThan3~7_cout\)) # (!\inst1|Add3~0_combout\ & ((\inst1|SYNC|pixel_row\(4)) # (!\inst1|LessThan3~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~0_combout\,
	datab => \inst1|SYNC|pixel_row\(4),
	datad => VCC,
	cin => \inst1|LessThan3~7_cout\,
	cout => \inst1|LessThan3~9_cout\);

-- Location: LCCOMB_X37_Y28_N22
\inst1|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~11_cout\ = CARRY((\inst1|Add3~2_combout\ & ((!\inst1|LessThan3~9_cout\) # (!\inst1|SYNC|pixel_row\(5)))) # (!\inst1|Add3~2_combout\ & (!\inst1|SYNC|pixel_row\(5) & !\inst1|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~2_combout\,
	datab => \inst1|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst1|LessThan3~9_cout\,
	cout => \inst1|LessThan3~11_cout\);

-- Location: LCCOMB_X37_Y28_N24
\inst1|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~13_cout\ = CARRY((\inst1|SYNC|pixel_row\(6) & ((!\inst1|LessThan3~11_cout\) # (!\inst1|Add3~4_combout\))) # (!\inst1|SYNC|pixel_row\(6) & (!\inst1|Add3~4_combout\ & !\inst1|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(6),
	datab => \inst1|Add3~4_combout\,
	datad => VCC,
	cin => \inst1|LessThan3~11_cout\,
	cout => \inst1|LessThan3~13_cout\);

-- Location: LCCOMB_X37_Y28_N26
\inst1|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~15_cout\ = CARRY((\inst1|SYNC|pixel_row\(7) & (\inst1|Add3~6_combout\ & !\inst1|LessThan3~13_cout\)) # (!\inst1|SYNC|pixel_row\(7) & ((\inst1|Add3~6_combout\) # (!\inst1|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(7),
	datab => \inst1|Add3~6_combout\,
	datad => VCC,
	cin => \inst1|LessThan3~13_cout\,
	cout => \inst1|LessThan3~15_cout\);

-- Location: LCCOMB_X37_Y28_N28
\inst1|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~16_combout\ = (\inst1|SYNC|pixel_row\(8) & ((!\inst1|Add3~8_combout\) # (!\inst1|LessThan3~15_cout\))) # (!\inst1|SYNC|pixel_row\(8) & (!\inst1|LessThan3~15_cout\ & !\inst1|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_row\(8),
	datad => \inst1|Add3~8_combout\,
	cin => \inst1|LessThan3~15_cout\,
	combout => \inst1|LessThan3~16_combout\);

-- Location: LCCOMB_X37_Y28_N6
\inst1|Ball_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~combout\ = (!\inst1|Add3~10_combout\ & (\inst1|Ball_on~5_combout\ & (!\inst1|LessThan2~18_combout\ & !\inst1|LessThan3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~10_combout\,
	datab => \inst1|Ball_on~5_combout\,
	datac => \inst1|LessThan2~18_combout\,
	datad => \inst1|LessThan3~16_combout\,
	combout => \inst1|Ball_on~combout\);

-- Location: LCCOMB_X37_Y28_N0
\inst1|SYNC|blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|blue_out~0_combout\ = (\inst1|SYNC|video_on_h~q\ & (\inst1|SYNC|video_on_v~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[8]~input_o\,
	datab => \inst1|SYNC|video_on_h~q\,
	datac => \inst1|SYNC|video_on_v~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|blue_out~0_combout\);

-- Location: FF_X37_Y28_N1
\inst1|SYNC|blue_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|blue_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|blue_out\(3));

-- Location: IOIBUF_X0_Y26_N8
\SW[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X37_Y28_N10
\inst1|SYNC|blue_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|blue_out~1_combout\ = (\inst1|SYNC|video_on_v~q\ & (\inst1|SYNC|video_on_h~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_v~q\,
	datab => \inst1|SYNC|video_on_h~q\,
	datac => \SW[7]~input_o\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|blue_out~1_combout\);

-- Location: FF_X37_Y28_N11
\inst1|SYNC|blue_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|blue_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|blue_out\(2));

-- Location: IOIBUF_X0_Y25_N15
\SW[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X38_Y28_N28
\inst1|SYNC|blue_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|blue_out~2_combout\ = (\inst1|SYNC|video_on_h~q\ & (\inst1|SYNC|video_on_v~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_h~q\,
	datab => \inst1|SYNC|video_on_v~q\,
	datac => \SW[6]~input_o\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|blue_out~2_combout\);

-- Location: FF_X38_Y28_N29
\inst1|SYNC|blue_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|blue_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|blue_out\(1));

-- Location: LCCOMB_X37_Y28_N30
\inst1|SYNC|blue_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|blue_out~3_combout\ = (\inst1|SYNC|video_on_h~q\ & (\inst1|SYNC|video_on_v~q\ & !\inst1|Ball_on~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|video_on_h~q\,
	datac => \inst1|SYNC|video_on_v~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|blue_out~3_combout\);

-- Location: FF_X37_Y28_N15
\inst1|SYNC|blue_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|blue_out~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|blue_out\(0));

-- Location: IOIBUF_X0_Y22_N15
\SW[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X38_Y28_N26
\inst1|SYNC|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|green_out~0_combout\ = (\inst1|SYNC|video_on_h~q\ & (\inst1|SYNC|video_on_v~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_h~q\,
	datab => \inst1|SYNC|video_on_v~q\,
	datac => \SW[5]~input_o\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|green_out~0_combout\);

-- Location: FF_X38_Y28_N27
\inst1|SYNC|green_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|green_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|green_out\(3));

-- Location: LCCOMB_X38_Y28_N4
\inst1|SYNC|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|green_out~1_combout\ = (\inst1|SYNC|video_on_v~q\ & (\inst1|SYNC|video_on_h~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \inst1|SYNC|video_on_v~q\,
	datac => \inst1|SYNC|video_on_h~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|green_out~1_combout\);

-- Location: FF_X38_Y28_N5
\inst1|SYNC|green_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|green_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|green_out\(2));

-- Location: IOIBUF_X0_Y23_N8
\SW[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X38_Y28_N30
\inst1|SYNC|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|green_out~2_combout\ = (\inst1|SYNC|video_on_h~q\ & (\inst1|SYNC|video_on_v~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_h~q\,
	datab => \inst1|SYNC|video_on_v~q\,
	datac => \SW[3]~input_o\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|green_out~2_combout\);

-- Location: FF_X38_Y28_N31
\inst1|SYNC|green_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|green_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|green_out\(1));

-- Location: FF_X37_Y28_N19
\inst1|SYNC|green_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|blue_out~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|green_out\(0));

-- Location: LCCOMB_X37_Y28_N4
\inst1|SYNC|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|red_out~0_combout\ = (\inst1|SYNC|video_on_h~q\ & (\inst1|SYNC|video_on_v~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst1|SYNC|video_on_h~q\,
	datac => \inst1|SYNC|video_on_v~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|red_out~0_combout\);

-- Location: FF_X37_Y28_N5
\inst1|SYNC|red_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|red_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|red_out\(3));

-- Location: LCCOMB_X37_Y28_N2
\inst1|SYNC|red_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|red_out~1_combout\ = (\inst1|SYNC|video_on_h~q\ & (\inst1|SYNC|video_on_v~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \inst1|SYNC|video_on_h~q\,
	datac => \inst1|SYNC|video_on_v~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|red_out~1_combout\);

-- Location: FF_X37_Y28_N3
\inst1|SYNC|red_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|red_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|red_out\(2));

-- Location: LCCOMB_X37_Y28_N8
\inst1|SYNC|red_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|red_out~2_combout\ = (\inst1|SYNC|video_on_h~q\ & (\inst1|SYNC|video_on_v~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst1|SYNC|video_on_h~q\,
	datac => \inst1|SYNC|video_on_v~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|red_out~2_combout\);

-- Location: FF_X37_Y28_N9
\inst1|SYNC|red_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|red_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|red_out\(1));

-- Location: FF_X37_Y28_N31
\inst1|SYNC|red_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|blue_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|red_out\(0));

-- Location: IOIBUF_X0_Y21_N8
\bt2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt2,
	o => \bt2~input_o\);
END structure;


