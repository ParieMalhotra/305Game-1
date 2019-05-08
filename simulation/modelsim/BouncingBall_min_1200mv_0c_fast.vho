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

-- DATE "05/08/2019 17:19:17"

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
	bt1 : IN std_logic;
	bt2 : IN std_logic;
	clk : IN std_logic;
	SW : IN std_logic_vector(8 DOWNTO 0);
	vert_sync_out : OUT std_logic;
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0)
	);
END BouncingBall;

-- Design Ports Information
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bt2	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_bt1 : std_logic;
SIGNAL ww_bt2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_SW : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|SYNC|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Add2~0_combout\ : std_logic;
SIGNAL \inst1|Add2~4_combout\ : std_logic;
SIGNAL \inst1|Add2~8_combout\ : std_logic;
SIGNAL \inst1|Add3~4_combout\ : std_logic;
SIGNAL \inst1|Add3~9\ : std_logic;
SIGNAL \inst1|Add3~10_combout\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~14_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~16_combout\ : std_logic;
SIGNAL \inst1|SYNC|video_on_v~q\ : std_logic;
SIGNAL \inst1|SYNC|process_0~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~7_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion[2]~0_combout\ : std_logic;
SIGNAL \bt1~input_o\ : std_logic;
SIGNAL \bt2~input_o\ : std_logic;
SIGNAL \inst1|SYNC|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|SYNC|pixel_column[4]~feeder_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|SYNC|Add0~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~1\ : std_logic;
SIGNAL \inst1|SYNC|Add0~3\ : std_logic;
SIGNAL \inst1|SYNC|Add0~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~5\ : std_logic;
SIGNAL \inst1|SYNC|Add0~7\ : std_logic;
SIGNAL \inst1|SYNC|Add0~9\ : std_logic;
SIGNAL \inst1|SYNC|Add0~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add0~8_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal0~2_combout\ : std_logic;
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
SIGNAL \inst1|SYNC|horiz_sync_out~q\ : std_logic;
SIGNAL \inst1|SYNC|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~9_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~11_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[7]~3_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[8]~11_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~8_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~1\ : std_logic;
SIGNAL \inst1|SYNC|Add1~3\ : std_logic;
SIGNAL \inst1|SYNC|Add1~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[2]~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~5\ : std_logic;
SIGNAL \inst1|SYNC|Add1~7\ : std_logic;
SIGNAL \inst1|SYNC|Add1~8_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[4]~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~9\ : std_logic;
SIGNAL \inst1|SYNC|Add1~11\ : std_logic;
SIGNAL \inst1|SYNC|Add1~12_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[6]~9_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~13\ : std_logic;
SIGNAL \inst1|SYNC|Add1~15\ : std_logic;
SIGNAL \inst1|SYNC|Add1~17\ : std_logic;
SIGNAL \inst1|SYNC|Add1~18_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[9]~7_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~12_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[9]~1_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[7]~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~10_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[5]~8_combout\ : std_logic;
SIGNAL \inst1|SYNC|LessThan7~0_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|Add1~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|v_count[3]~5_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|process_0~5_combout\ : std_logic;
SIGNAL \inst1|SYNC|vert_sync~q\ : std_logic;
SIGNAL \inst1|SYNC|vert_sync_out~q\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \inst1|SYNC|process_0~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|video_on_h~q\ : std_logic;
SIGNAL \inst1|SYNC|Add0~6_combout\ : std_logic;
SIGNAL \inst1|SYNC|pixel_column[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|Ball_on~3_combout\ : std_logic;
SIGNAL \inst1|Add0~1_cout\ : std_logic;
SIGNAL \inst1|Add0~3_cout\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Ball_on~4_combout\ : std_logic;
SIGNAL \inst1|SYNC|LessThan7~1_combout\ : std_logic;
SIGNAL \inst1|Add2~1\ : std_logic;
SIGNAL \inst1|Add2~3\ : std_logic;
SIGNAL \inst1|Add2~5\ : std_logic;
SIGNAL \inst1|Add2~7\ : std_logic;
SIGNAL \inst1|Add2~9\ : std_logic;
SIGNAL \inst1|Add2~10_combout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Ball_on~0_combout\ : std_logic;
SIGNAL \inst1|Ball_on~1_combout\ : std_logic;
SIGNAL \inst1|Ball_on~2_combout\ : std_logic;
SIGNAL \inst1|Ball_on~5_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[1]~10\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[2]~11_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[2]~12\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[3]~13_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[3]~14\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[4]~15_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[4]~16\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[5]~17_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[1]~9_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion[2]~1_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion[2]~2_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_motion[2]~3_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[5]~18\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[6]~20\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[7]~21_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[7]~22\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[8]~24\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[9]~25_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[8]~23_combout\ : std_logic;
SIGNAL \inst1|Add2~6_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos[6]~19_combout\ : std_logic;
SIGNAL \inst1|Add2~2_combout\ : std_logic;
SIGNAL \inst1|LessThan2~1_cout\ : std_logic;
SIGNAL \inst1|LessThan2~3_cout\ : std_logic;
SIGNAL \inst1|LessThan2~5_cout\ : std_logic;
SIGNAL \inst1|LessThan2~7_cout\ : std_logic;
SIGNAL \inst1|LessThan2~9_cout\ : std_logic;
SIGNAL \inst1|LessThan2~11_cout\ : std_logic;
SIGNAL \inst1|LessThan2~13_cout\ : std_logic;
SIGNAL \inst1|LessThan2~15_cout\ : std_logic;
SIGNAL \inst1|LessThan2~16_combout\ : std_logic;
SIGNAL \inst1|Add3~1\ : std_logic;
SIGNAL \inst1|Add3~3\ : std_logic;
SIGNAL \inst1|Add3~5\ : std_logic;
SIGNAL \inst1|Add3~7\ : std_logic;
SIGNAL \inst1|Add3~8_combout\ : std_logic;
SIGNAL \inst1|Add3~6_combout\ : std_logic;
SIGNAL \inst1|Add3~2_combout\ : std_logic;
SIGNAL \inst1|Add3~0_combout\ : std_logic;
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
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst1|SYNC|green_out~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \inst1|SYNC|green_out~2_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \inst1|SYNC|red_out~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst1|SYNC|red_out~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst1|SYNC|red_out~2_combout\ : std_logic;
SIGNAL \inst1|SYNC|red_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|Ball_Y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|Ball_Y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SYNC|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SYNC|red_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|SYNC|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SYNC|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SYNC|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|SYNC|green_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|SYNC|blue_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);

BEGIN

horiz_sync_out <= ww_horiz_sync_out;
ww_bt1 <= bt1;
ww_bt2 <= bt2;
ww_clk <= clk;
ww_SW <= SW;
vert_sync_out <= ww_vert_sync_out;
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

\inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|altpll_component|auto_generated|wire_pll1_clk\(0));

-- Location: LCCOMB_X37_Y23_N18
\inst1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~0_combout\ = (\inst1|SYNC|pixel_row\(4) & (\inst1|SYNC|pixel_row\(3) $ (VCC))) # (!\inst1|SYNC|pixel_row\(4) & (\inst1|SYNC|pixel_row\(3) & VCC))
-- \inst1|Add2~1\ = CARRY((\inst1|SYNC|pixel_row\(4) & \inst1|SYNC|pixel_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(4),
	datab => \inst1|SYNC|pixel_row\(3),
	datad => VCC,
	combout => \inst1|Add2~0_combout\,
	cout => \inst1|Add2~1\);

-- Location: LCCOMB_X37_Y23_N22
\inst1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~4_combout\ = (\inst1|SYNC|pixel_row\(6) & (\inst1|Add2~3\ $ (GND))) # (!\inst1|SYNC|pixel_row\(6) & (!\inst1|Add2~3\ & VCC))
-- \inst1|Add2~5\ = CARRY((\inst1|SYNC|pixel_row\(6) & !\inst1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst1|Add2~3\,
	combout => \inst1|Add2~4_combout\,
	cout => \inst1|Add2~5\);

-- Location: LCCOMB_X37_Y23_N26
\inst1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~8_combout\ = (\inst1|SYNC|pixel_row\(8) & (\inst1|Add2~7\ $ (GND))) # (!\inst1|SYNC|pixel_row\(8) & (!\inst1|Add2~7\ & VCC))
-- \inst1|Add2~9\ = CARRY((\inst1|SYNC|pixel_row\(8) & !\inst1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(8),
	datad => VCC,
	cin => \inst1|Add2~7\,
	combout => \inst1|Add2~8_combout\,
	cout => \inst1|Add2~9\);

-- Location: LCCOMB_X39_Y23_N6
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

-- Location: LCCOMB_X39_Y23_N10
\inst1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~8_combout\ = (\inst1|Ball_Y_pos\(8) & (\inst1|Add3~7\ $ (GND))) # (!\inst1|Ball_Y_pos\(8) & (!\inst1|Add3~7\ & VCC))
-- \inst1|Add3~9\ = CARRY((\inst1|Ball_Y_pos\(8) & !\inst1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst1|Add3~7\,
	combout => \inst1|Add3~8_combout\,
	cout => \inst1|Add3~9\);

-- Location: LCCOMB_X39_Y23_N12
\inst1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~10_combout\ = \inst1|Add3~9\ $ (\inst1|Ball_Y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Ball_Y_pos\(9),
	cin => \inst1|Add3~9\,
	combout => \inst1|Add3~10_combout\);

-- Location: LCCOMB_X38_Y24_N6
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

-- Location: LCCOMB_X40_Y24_N6
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

-- Location: LCCOMB_X40_Y24_N20
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

-- Location: LCCOMB_X40_Y24_N22
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

-- Location: FF_X39_Y23_N1
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

-- Location: FF_X39_Y23_N17
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

-- Location: FF_X39_Y23_N23
\inst1|SYNC|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(4),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(4));

-- Location: FF_X37_Y23_N3
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

-- Location: FF_X38_Y24_N5
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

-- Location: FF_X38_Y24_N13
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

-- Location: LCCOMB_X37_Y24_N26
\inst1|SYNC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~1_combout\ = (\inst1|SYNC|h_count\(3)) # ((!\inst1|SYNC|h_count\(5) & (\inst1|SYNC|h_count\(0) & \inst1|SYNC|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(3),
	datab => \inst1|SYNC|h_count\(5),
	datac => \inst1|SYNC|h_count\(0),
	datad => \inst1|SYNC|h_count\(1),
	combout => \inst1|SYNC|process_0~1_combout\);

-- Location: LCCOMB_X37_Y24_N28
\inst1|SYNC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~2_combout\ = (\inst1|SYNC|h_count\(4) & ((\inst1|SYNC|process_0~1_combout\) # (\inst1|SYNC|h_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~1_combout\,
	datac => \inst1|SYNC|h_count\(2),
	datad => \inst1|SYNC|h_count\(4),
	combout => \inst1|SYNC|process_0~2_combout\);

-- Location: LCCOMB_X40_Y24_N2
\inst1|SYNC|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~7_combout\ = (!\inst1|SYNC|v_count\(4) & (!\inst1|SYNC|v_count\(5) & ((!\inst1|SYNC|v_count\(2)) # (!\inst1|SYNC|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(3),
	datab => \inst1|SYNC|v_count\(4),
	datac => \inst1|SYNC|v_count\(5),
	datad => \inst1|SYNC|v_count\(2),
	combout => \inst1|SYNC|process_0~7_combout\);

-- Location: LCCOMB_X38_Y23_N30
\inst1|Ball_Y_motion[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion[2]~0_combout\ = (\inst1|Ball_Y_pos\(6) & ((\inst1|Ball_Y_motion\(2)) # ((\inst1|Ball_Y_pos\(8) & \inst1|Ball_Y_pos\(7))))) # (!\inst1|Ball_Y_pos\(6) & (\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(8)) # (\inst1|Ball_Y_pos\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(6),
	datab => \inst1|Ball_Y_motion\(2),
	datac => \inst1|Ball_Y_pos\(8),
	datad => \inst1|Ball_Y_pos\(7),
	combout => \inst1|Ball_Y_motion[2]~0_combout\);

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X38_Y24_N12
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
	pll_compensation_delay => 3403,
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

-- Location: LCCOMB_X37_Y24_N4
\inst1|SYNC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~0_combout\ = \inst1|SYNC|h_count\(0) $ (VCC)
-- \inst1|SYNC|Add0~1\ = CARRY(\inst1|SYNC|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(0),
	datad => VCC,
	combout => \inst1|SYNC|Add0~0_combout\,
	cout => \inst1|SYNC|Add0~1\);

-- Location: FF_X37_Y24_N5
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

-- Location: LCCOMB_X37_Y24_N6
\inst1|SYNC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~2_combout\ = (\inst1|SYNC|h_count\(1) & (!\inst1|SYNC|Add0~1\)) # (!\inst1|SYNC|h_count\(1) & ((\inst1|SYNC|Add0~1\) # (GND)))
-- \inst1|SYNC|Add0~3\ = CARRY((!\inst1|SYNC|Add0~1\) # (!\inst1|SYNC|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(1),
	datad => VCC,
	cin => \inst1|SYNC|Add0~1\,
	combout => \inst1|SYNC|Add0~2_combout\,
	cout => \inst1|SYNC|Add0~3\);

-- Location: LCCOMB_X37_Y24_N8
\inst1|SYNC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~4_combout\ = (\inst1|SYNC|h_count\(2) & (\inst1|SYNC|Add0~3\ $ (GND))) # (!\inst1|SYNC|h_count\(2) & (!\inst1|SYNC|Add0~3\ & VCC))
-- \inst1|SYNC|Add0~5\ = CARRY((\inst1|SYNC|h_count\(2) & !\inst1|SYNC|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(2),
	datad => VCC,
	cin => \inst1|SYNC|Add0~3\,
	combout => \inst1|SYNC|Add0~4_combout\,
	cout => \inst1|SYNC|Add0~5\);

-- Location: FF_X37_Y24_N9
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

-- Location: LCCOMB_X37_Y24_N10
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

-- Location: LCCOMB_X37_Y24_N12
\inst1|SYNC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~8_combout\ = (\inst1|SYNC|h_count\(4) & (\inst1|SYNC|Add0~7\ $ (GND))) # (!\inst1|SYNC|h_count\(4) & (!\inst1|SYNC|Add0~7\ & VCC))
-- \inst1|SYNC|Add0~9\ = CARRY((\inst1|SYNC|h_count\(4) & !\inst1|SYNC|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(4),
	datad => VCC,
	cin => \inst1|SYNC|Add0~7\,
	combout => \inst1|SYNC|Add0~8_combout\,
	cout => \inst1|SYNC|Add0~9\);

-- Location: LCCOMB_X37_Y24_N14
\inst1|SYNC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add0~10_combout\ = (\inst1|SYNC|h_count\(5) & (!\inst1|SYNC|Add0~9\)) # (!\inst1|SYNC|h_count\(5) & ((\inst1|SYNC|Add0~9\) # (GND)))
-- \inst1|SYNC|Add0~11\ = CARRY((!\inst1|SYNC|Add0~9\) # (!\inst1|SYNC|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|h_count\(5),
	datad => VCC,
	cin => \inst1|SYNC|Add0~9\,
	combout => \inst1|SYNC|Add0~10_combout\,
	cout => \inst1|SYNC|Add0~11\);

-- Location: LCCOMB_X39_Y24_N22
\inst1|SYNC|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal0~1_combout\ = (\inst1|SYNC|h_count\(8) & (\inst1|SYNC|h_count\(2) & (!\inst1|SYNC|h_count\(7) & !\inst1|SYNC|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(8),
	datab => \inst1|SYNC|h_count\(2),
	datac => \inst1|SYNC|h_count\(7),
	datad => \inst1|SYNC|h_count\(5),
	combout => \inst1|SYNC|Equal0~1_combout\);

-- Location: FF_X37_Y24_N7
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

-- Location: FF_X37_Y24_N13
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

-- Location: LCCOMB_X38_Y24_N30
\inst1|SYNC|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal0~0_combout\ = (\inst1|SYNC|h_count\(3) & (\inst1|SYNC|h_count\(1) & (\inst1|SYNC|h_count\(0) & \inst1|SYNC|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(3),
	datab => \inst1|SYNC|h_count\(1),
	datac => \inst1|SYNC|h_count\(0),
	datad => \inst1|SYNC|h_count\(4),
	combout => \inst1|SYNC|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y24_N12
\inst1|SYNC|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal0~2_combout\ = (!\inst1|SYNC|h_count\(6) & (\inst1|SYNC|h_count\(9) & (\inst1|SYNC|Equal0~1_combout\ & \inst1|SYNC|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(6),
	datab => \inst1|SYNC|h_count\(9),
	datac => \inst1|SYNC|Equal0~1_combout\,
	datad => \inst1|SYNC|Equal0~0_combout\,
	combout => \inst1|SYNC|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y24_N24
\inst1|SYNC|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|h_count~2_combout\ = (\inst1|SYNC|Add0~10_combout\ & !\inst1|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SYNC|Add0~10_combout\,
	datad => \inst1|SYNC|Equal0~2_combout\,
	combout => \inst1|SYNC|h_count~2_combout\);

-- Location: FF_X37_Y24_N25
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

-- Location: LCCOMB_X37_Y24_N16
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

-- Location: FF_X37_Y24_N17
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

-- Location: LCCOMB_X37_Y24_N18
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

-- Location: FF_X37_Y24_N19
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

-- Location: LCCOMB_X37_Y24_N20
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

-- Location: LCCOMB_X37_Y24_N0
\inst1|SYNC|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|h_count~0_combout\ = (\inst1|SYNC|Add0~16_combout\ & !\inst1|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|Add0~16_combout\,
	datad => \inst1|SYNC|Equal0~2_combout\,
	combout => \inst1|SYNC|h_count~0_combout\);

-- Location: FF_X37_Y24_N1
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

-- Location: LCCOMB_X37_Y24_N22
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

-- Location: LCCOMB_X37_Y24_N30
\inst1|SYNC|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|h_count~1_combout\ = (\inst1|SYNC|Add0~18_combout\ & !\inst1|SYNC|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SYNC|Add0~18_combout\,
	datad => \inst1|SYNC|Equal0~2_combout\,
	combout => \inst1|SYNC|h_count~1_combout\);

-- Location: FF_X37_Y24_N31
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

-- Location: LCCOMB_X39_Y24_N8
\inst1|SYNC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~0_combout\ = (!\inst1|SYNC|h_count\(8) & (\inst1|SYNC|h_count\(9) & \inst1|SYNC|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(8),
	datab => \inst1|SYNC|h_count\(9),
	datac => \inst1|SYNC|h_count\(7),
	combout => \inst1|SYNC|process_0~0_combout\);

-- Location: LCCOMB_X39_Y24_N20
\inst1|SYNC|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~3_combout\ = ((\inst1|SYNC|process_0~2_combout\ & (\inst1|SYNC|h_count\(6) & \inst1|SYNC|h_count\(5))) # (!\inst1|SYNC|process_0~2_combout\ & (!\inst1|SYNC|h_count\(6) & !\inst1|SYNC|h_count\(5)))) # 
-- (!\inst1|SYNC|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~2_combout\,
	datab => \inst1|SYNC|process_0~0_combout\,
	datac => \inst1|SYNC|h_count\(6),
	datad => \inst1|SYNC|h_count\(5),
	combout => \inst1|SYNC|process_0~3_combout\);

-- Location: FF_X39_Y24_N21
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

-- Location: FF_X40_Y24_N19
\inst1|SYNC|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|horiz_sync_out~q\);

-- Location: LCCOMB_X39_Y24_N4
\inst1|SYNC|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal1~0_combout\ = (\inst1|SYNC|h_count\(8)) # ((\inst1|SYNC|h_count\(2)) # ((!\inst1|SYNC|h_count\(5)) # (!\inst1|SYNC|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(8),
	datab => \inst1|SYNC|h_count\(2),
	datac => \inst1|SYNC|h_count\(7),
	datad => \inst1|SYNC|h_count\(5),
	combout => \inst1|SYNC|Equal1~0_combout\);

-- Location: LCCOMB_X39_Y24_N18
\inst1|SYNC|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Equal1~1_combout\ = (\inst1|SYNC|h_count\(6)) # (((\inst1|SYNC|Equal1~0_combout\) # (!\inst1|SYNC|Equal0~0_combout\)) # (!\inst1|SYNC|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(6),
	datab => \inst1|SYNC|h_count\(9),
	datac => \inst1|SYNC|Equal1~0_combout\,
	datad => \inst1|SYNC|Equal0~0_combout\,
	combout => \inst1|SYNC|Equal1~1_combout\);

-- Location: LCCOMB_X38_Y24_N24
\inst1|SYNC|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~10_combout\ = (\inst1|SYNC|h_count\(5) & \inst1|SYNC|h_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SYNC|h_count\(5),
	datad => \inst1|SYNC|h_count\(4),
	combout => \inst1|SYNC|process_0~10_combout\);

-- Location: LCCOMB_X37_Y24_N2
\inst1|SYNC|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~9_combout\ = ((!\inst1|SYNC|h_count\(2) & ((!\inst1|SYNC|h_count\(1)) # (!\inst1|SYNC|h_count\(0))))) # (!\inst1|SYNC|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(3),
	datab => \inst1|SYNC|h_count\(2),
	datac => \inst1|SYNC|h_count\(0),
	datad => \inst1|SYNC|h_count\(1),
	combout => \inst1|SYNC|process_0~9_combout\);

-- Location: LCCOMB_X38_Y24_N26
\inst1|SYNC|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~11_combout\ = (!\inst1|SYNC|h_count\(8) & (!\inst1|SYNC|h_count\(6) & ((\inst1|SYNC|process_0~9_combout\) # (!\inst1|SYNC|process_0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(8),
	datab => \inst1|SYNC|process_0~10_combout\,
	datac => \inst1|SYNC|h_count\(6),
	datad => \inst1|SYNC|process_0~9_combout\,
	combout => \inst1|SYNC|process_0~11_combout\);

-- Location: LCCOMB_X39_Y24_N2
\inst1|SYNC|v_count[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[7]~3_combout\ = (!\inst1|SYNC|Equal1~1_combout\ & ((\inst1|SYNC|process_0~8_combout\) # ((\inst1|SYNC|process_0~11_combout\) # (\inst1|SYNC|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~8_combout\,
	datab => \inst1|SYNC|Equal1~1_combout\,
	datac => \inst1|SYNC|process_0~11_combout\,
	datad => \inst1|SYNC|process_0~12_combout\,
	combout => \inst1|SYNC|v_count[7]~3_combout\);

-- Location: LCCOMB_X39_Y24_N6
\inst1|SYNC|v_count[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[8]~11_combout\ = (\inst1|SYNC|Add1~16_combout\ & ((\inst1|SYNC|v_count[7]~3_combout\) # ((\inst1|SYNC|v_count\(8) & !\inst1|SYNC|v_count[9]~1_combout\)))) # (!\inst1|SYNC|Add1~16_combout\ & (((\inst1|SYNC|v_count\(8) & 
-- !\inst1|SYNC|v_count[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Add1~16_combout\,
	datab => \inst1|SYNC|v_count[7]~3_combout\,
	datac => \inst1|SYNC|v_count\(8),
	datad => \inst1|SYNC|v_count[9]~1_combout\,
	combout => \inst1|SYNC|v_count[8]~11_combout\);

-- Location: FF_X39_Y24_N7
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

-- Location: LCCOMB_X39_Y24_N10
\inst1|SYNC|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~8_combout\ = (\inst1|SYNC|process_0~7_combout\ & (!\inst1|SYNC|v_count\(7) & (!\inst1|SYNC|v_count\(8) & !\inst1|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~7_combout\,
	datab => \inst1|SYNC|v_count\(7),
	datac => \inst1|SYNC|v_count\(8),
	datad => \inst1|SYNC|v_count\(6),
	combout => \inst1|SYNC|process_0~8_combout\);

-- Location: LCCOMB_X39_Y24_N30
\inst1|SYNC|v_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count~0_combout\ = (\inst1|SYNC|Add1~0_combout\ & ((\inst1|SYNC|process_0~12_combout\) # ((\inst1|SYNC|process_0~11_combout\) # (\inst1|SYNC|process_0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Add1~0_combout\,
	datab => \inst1|SYNC|process_0~12_combout\,
	datac => \inst1|SYNC|process_0~11_combout\,
	datad => \inst1|SYNC|process_0~8_combout\,
	combout => \inst1|SYNC|v_count~0_combout\);

-- Location: FF_X39_Y24_N31
\inst1|SYNC|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|v_count~0_combout\,
	ena => \inst1|SYNC|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(0));

-- Location: LCCOMB_X40_Y24_N8
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

-- Location: LCCOMB_X40_Y24_N10
\inst1|SYNC|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~4_combout\ = (\inst1|SYNC|v_count\(2) & (\inst1|SYNC|Add1~3\ $ (GND))) # (!\inst1|SYNC|v_count\(2) & (!\inst1|SYNC|Add1~3\ & VCC))
-- \inst1|SYNC|Add1~5\ = CARRY((\inst1|SYNC|v_count\(2) & !\inst1|SYNC|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|v_count\(2),
	datad => VCC,
	cin => \inst1|SYNC|Add1~3\,
	combout => \inst1|SYNC|Add1~4_combout\,
	cout => \inst1|SYNC|Add1~5\);

-- Location: LCCOMB_X40_Y24_N28
\inst1|SYNC|v_count[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[2]~4_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~4_combout\) # ((!\inst1|SYNC|v_count[9]~1_combout\ & \inst1|SYNC|v_count\(2))))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (!\inst1|SYNC|v_count[9]~1_combout\ & 
-- (\inst1|SYNC|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|v_count[9]~1_combout\,
	datac => \inst1|SYNC|v_count\(2),
	datad => \inst1|SYNC|Add1~4_combout\,
	combout => \inst1|SYNC|v_count[2]~4_combout\);

-- Location: FF_X40_Y24_N29
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

-- Location: LCCOMB_X40_Y24_N12
\inst1|SYNC|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|Add1~6_combout\ = (\inst1|SYNC|v_count\(3) & (!\inst1|SYNC|Add1~5\)) # (!\inst1|SYNC|v_count\(3) & ((\inst1|SYNC|Add1~5\) # (GND)))
-- \inst1|SYNC|Add1~7\ = CARRY((!\inst1|SYNC|Add1~5\) # (!\inst1|SYNC|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(3),
	datad => VCC,
	cin => \inst1|SYNC|Add1~5\,
	combout => \inst1|SYNC|Add1~6_combout\,
	cout => \inst1|SYNC|Add1~7\);

-- Location: LCCOMB_X40_Y24_N14
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

-- Location: LCCOMB_X40_Y24_N0
\inst1|SYNC|v_count[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[4]~6_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~8_combout\) # ((\inst1|SYNC|v_count\(4) & !\inst1|SYNC|v_count[9]~1_combout\)))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (((\inst1|SYNC|v_count\(4) & 
-- !\inst1|SYNC|v_count[9]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|Add1~8_combout\,
	datac => \inst1|SYNC|v_count\(4),
	datad => \inst1|SYNC|v_count[9]~1_combout\,
	combout => \inst1|SYNC|v_count[4]~6_combout\);

-- Location: FF_X40_Y24_N1
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

-- Location: LCCOMB_X40_Y24_N16
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

-- Location: LCCOMB_X40_Y24_N18
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

-- Location: LCCOMB_X40_Y24_N4
\inst1|SYNC|v_count[6]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[6]~9_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~12_combout\) # ((!\inst1|SYNC|v_count[9]~1_combout\ & \inst1|SYNC|v_count\(6))))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (!\inst1|SYNC|v_count[9]~1_combout\ & 
-- (\inst1|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|v_count[9]~1_combout\,
	datac => \inst1|SYNC|v_count\(6),
	datad => \inst1|SYNC|Add1~12_combout\,
	combout => \inst1|SYNC|v_count[6]~9_combout\);

-- Location: FF_X40_Y24_N5
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

-- Location: LCCOMB_X40_Y24_N24
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

-- Location: LCCOMB_X40_Y24_N26
\inst1|SYNC|v_count[9]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[9]~7_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~18_combout\) # ((!\inst1|SYNC|v_count[9]~1_combout\ & \inst1|SYNC|v_count\(9))))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (!\inst1|SYNC|v_count[9]~1_combout\ & 
-- (\inst1|SYNC|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|v_count[9]~1_combout\,
	datac => \inst1|SYNC|v_count\(9),
	datad => \inst1|SYNC|Add1~18_combout\,
	combout => \inst1|SYNC|v_count[9]~7_combout\);

-- Location: FF_X40_Y24_N27
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

-- Location: LCCOMB_X40_Y23_N6
\inst1|SYNC|process_0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~12_combout\ = (((!\inst1|SYNC|h_count\(7) & !\inst1|SYNC|h_count\(8))) # (!\inst1|SYNC|v_count\(9))) # (!\inst1|SYNC|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|h_count\(7),
	datab => \inst1|SYNC|h_count\(9),
	datac => \inst1|SYNC|h_count\(8),
	datad => \inst1|SYNC|v_count\(9),
	combout => \inst1|SYNC|process_0~12_combout\);

-- Location: LCCOMB_X39_Y24_N28
\inst1|SYNC|v_count[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[9]~1_combout\ = ((!\inst1|SYNC|process_0~8_combout\ & (!\inst1|SYNC|process_0~11_combout\ & !\inst1|SYNC|process_0~12_combout\))) # (!\inst1|SYNC|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~8_combout\,
	datab => \inst1|SYNC|Equal1~1_combout\,
	datac => \inst1|SYNC|process_0~11_combout\,
	datad => \inst1|SYNC|process_0~12_combout\,
	combout => \inst1|SYNC|v_count[9]~1_combout\);

-- Location: LCCOMB_X39_Y24_N0
\inst1|SYNC|v_count[7]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[7]~10_combout\ = (\inst1|SYNC|Add1~14_combout\ & ((\inst1|SYNC|v_count[7]~3_combout\) # ((!\inst1|SYNC|v_count[9]~1_combout\ & \inst1|SYNC|v_count\(7))))) # (!\inst1|SYNC|Add1~14_combout\ & (!\inst1|SYNC|v_count[9]~1_combout\ & 
-- (\inst1|SYNC|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|Add1~14_combout\,
	datab => \inst1|SYNC|v_count[9]~1_combout\,
	datac => \inst1|SYNC|v_count\(7),
	datad => \inst1|SYNC|v_count[7]~3_combout\,
	combout => \inst1|SYNC|v_count[7]~10_combout\);

-- Location: FF_X39_Y24_N1
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

-- Location: LCCOMB_X39_Y24_N26
\inst1|SYNC|v_count[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[5]~8_combout\ = (\inst1|SYNC|v_count[9]~1_combout\ & (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~10_combout\)))) # (!\inst1|SYNC|v_count[9]~1_combout\ & ((\inst1|SYNC|v_count\(5)) # ((\inst1|SYNC|v_count[7]~3_combout\ & 
-- \inst1|SYNC|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[9]~1_combout\,
	datab => \inst1|SYNC|v_count[7]~3_combout\,
	datac => \inst1|SYNC|v_count\(5),
	datad => \inst1|SYNC|Add1~10_combout\,
	combout => \inst1|SYNC|v_count[5]~8_combout\);

-- Location: FF_X39_Y24_N27
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

-- Location: LCCOMB_X39_Y24_N24
\inst1|SYNC|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|LessThan7~0_combout\ = (\inst1|SYNC|v_count\(8) & (\inst1|SYNC|v_count\(7) & (\inst1|SYNC|v_count\(5) & \inst1|SYNC|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(8),
	datab => \inst1|SYNC|v_count\(7),
	datac => \inst1|SYNC|v_count\(5),
	datad => \inst1|SYNC|v_count\(6),
	combout => \inst1|SYNC|LessThan7~0_combout\);

-- Location: LCCOMB_X39_Y24_N16
\inst1|SYNC|v_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count~2_combout\ = (\inst1|SYNC|Add1~2_combout\ & ((\inst1|SYNC|process_0~8_combout\) # ((\inst1|SYNC|process_0~11_combout\) # (\inst1|SYNC|process_0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|process_0~8_combout\,
	datab => \inst1|SYNC|Add1~2_combout\,
	datac => \inst1|SYNC|process_0~11_combout\,
	datad => \inst1|SYNC|process_0~12_combout\,
	combout => \inst1|SYNC|v_count~2_combout\);

-- Location: FF_X39_Y24_N17
\inst1|SYNC|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|v_count~2_combout\,
	ena => \inst1|SYNC|v_count[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|v_count\(1));

-- Location: LCCOMB_X40_Y24_N30
\inst1|SYNC|v_count[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|v_count[3]~5_combout\ = (\inst1|SYNC|v_count[7]~3_combout\ & ((\inst1|SYNC|Add1~6_combout\) # ((!\inst1|SYNC|v_count[9]~1_combout\ & \inst1|SYNC|v_count\(3))))) # (!\inst1|SYNC|v_count[7]~3_combout\ & (!\inst1|SYNC|v_count[9]~1_combout\ & 
-- (\inst1|SYNC|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count[7]~3_combout\,
	datab => \inst1|SYNC|v_count[9]~1_combout\,
	datac => \inst1|SYNC|v_count\(3),
	datad => \inst1|SYNC|Add1~6_combout\,
	combout => \inst1|SYNC|v_count[3]~5_combout\);

-- Location: FF_X40_Y24_N31
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

-- Location: LCCOMB_X37_Y23_N30
\inst1|SYNC|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~4_combout\ = ((\inst1|SYNC|v_count\(0) $ (!\inst1|SYNC|v_count\(1))) # (!\inst1|SYNC|v_count\(2))) # (!\inst1|SYNC|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(0),
	datab => \inst1|SYNC|v_count\(1),
	datac => \inst1|SYNC|v_count\(3),
	datad => \inst1|SYNC|v_count\(2),
	combout => \inst1|SYNC|process_0~4_combout\);

-- Location: LCCOMB_X40_Y23_N20
\inst1|SYNC|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|process_0~5_combout\ = (\inst1|SYNC|v_count\(4)) # (((\inst1|SYNC|process_0~4_combout\) # (\inst1|SYNC|v_count\(9))) # (!\inst1|SYNC|LessThan7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|v_count\(4),
	datab => \inst1|SYNC|LessThan7~0_combout\,
	datac => \inst1|SYNC|process_0~4_combout\,
	datad => \inst1|SYNC|v_count\(9),
	combout => \inst1|SYNC|process_0~5_combout\);

-- Location: FF_X40_Y23_N21
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

-- Location: FF_X40_Y15_N17
\inst1|SYNC|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|vert_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|vert_sync_out~q\);

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

-- Location: LCCOMB_X40_Y23_N26
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

-- Location: FF_X40_Y23_N27
\inst1|SYNC|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|video_on_h~q\);

-- Location: FF_X37_Y24_N11
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

-- Location: LCCOMB_X38_Y24_N18
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

-- Location: FF_X38_Y24_N19
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

-- Location: FF_X38_Y24_N15
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

-- Location: FF_X38_Y24_N1
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

-- Location: LCCOMB_X38_Y24_N14
\inst1|Ball_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~3_combout\ = (\inst1|SYNC|pixel_column\(8) & (\inst1|SYNC|pixel_column\(3) & ((\inst1|SYNC|pixel_column\(0)) # (\inst1|SYNC|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(8),
	datab => \inst1|SYNC|pixel_column\(3),
	datac => \inst1|SYNC|pixel_column\(0),
	datad => \inst1|SYNC|pixel_column\(1),
	combout => \inst1|Ball_on~3_combout\);

-- Location: FF_X38_Y24_N7
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

-- Location: FF_X38_Y24_N3
\inst1|SYNC|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|h_count\(5),
	sload => VCC,
	ena => \inst1|SYNC|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_column\(5));

-- Location: LCCOMB_X38_Y24_N0
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

-- Location: LCCOMB_X38_Y24_N2
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

-- Location: LCCOMB_X38_Y24_N4
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

-- Location: LCCOMB_X38_Y24_N8
\inst1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|SYNC|pixel_column\(8) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|SYNC|pixel_column\(8) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|SYNC|pixel_column\(8) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(8),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: FF_X38_Y24_N11
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

-- Location: LCCOMB_X38_Y24_N10
\inst1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = \inst1|Add0~9\ $ (\inst1|SYNC|pixel_column\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SYNC|pixel_column\(9),
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\);

-- Location: LCCOMB_X38_Y24_N28
\inst1|Ball_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~4_combout\ = (\inst1|Add0~8_combout\ & (!\inst1|Add0~10_combout\ & ((!\inst1|Ball_on~3_combout\) # (!\inst1|SYNC|pixel_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(6),
	datab => \inst1|Ball_on~3_combout\,
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|Ball_on~4_combout\);

-- Location: LCCOMB_X40_Y23_N14
\inst1|SYNC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|LessThan7~1_combout\ = (!\inst1|SYNC|v_count\(9) & !\inst1|SYNC|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|v_count\(9),
	datad => \inst1|SYNC|LessThan7~0_combout\,
	combout => \inst1|SYNC|LessThan7~1_combout\);

-- Location: FF_X39_Y23_N19
\inst1|SYNC|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(7),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(7));

-- Location: FF_X39_Y23_N7
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

-- Location: FF_X37_Y23_N19
\inst1|SYNC|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(3),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(3));

-- Location: LCCOMB_X37_Y23_N20
\inst1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add2~2_combout\ = (\inst1|SYNC|pixel_row\(5) & (!\inst1|Add2~1\)) # (!\inst1|SYNC|pixel_row\(5) & ((\inst1|Add2~1\) # (GND)))
-- \inst1|Add2~3\ = CARRY((!\inst1|Add2~1\) # (!\inst1|SYNC|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(5),
	datad => VCC,
	cin => \inst1|Add2~1\,
	combout => \inst1|Add2~2_combout\,
	cout => \inst1|Add2~3\);

-- Location: LCCOMB_X37_Y23_N24
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

-- Location: LCCOMB_X37_Y23_N28
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

-- Location: FF_X38_Y24_N17
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

-- Location: LCCOMB_X38_Y24_N16
\inst1|Ball_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~0_combout\ = (\inst1|SYNC|pixel_column\(4)) # ((\inst1|SYNC|pixel_column\(2) & \inst1|SYNC|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(4),
	datac => \inst1|SYNC|pixel_column\(2),
	datad => \inst1|SYNC|pixel_column\(3),
	combout => \inst1|Ball_on~0_combout\);

-- Location: LCCOMB_X38_Y24_N22
\inst1|Ball_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~1_combout\ = (\inst1|SYNC|pixel_column\(7)) # ((\inst1|SYNC|pixel_column\(6) & ((\inst1|SYNC|pixel_column\(5)) # (\inst1|Ball_on~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(6),
	datab => \inst1|SYNC|pixel_column\(5),
	datac => \inst1|SYNC|pixel_column\(7),
	datad => \inst1|Ball_on~0_combout\,
	combout => \inst1|Ball_on~1_combout\);

-- Location: FF_X38_Y24_N9
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

-- Location: LCCOMB_X38_Y24_N20
\inst1|Ball_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~2_combout\ = (\inst1|Add0~6_combout\ & (((!\inst1|SYNC|pixel_column\(8)) # (!\inst1|Ball_on~1_combout\)))) # (!\inst1|Add0~6_combout\ & (\inst1|Add0~4_combout\ & ((!\inst1|SYNC|pixel_column\(8)) # (!\inst1|Ball_on~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~6_combout\,
	datab => \inst1|Add0~4_combout\,
	datac => \inst1|Ball_on~1_combout\,
	datad => \inst1|SYNC|pixel_column\(8),
	combout => \inst1|Ball_on~2_combout\);

-- Location: LCCOMB_X39_Y24_N14
\inst1|Ball_on~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~5_combout\ = (!\inst1|SYNC|pixel_column\(9) & (\inst1|Ball_on~4_combout\ & (!\inst1|Add2~10_combout\ & \inst1|Ball_on~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_column\(9),
	datab => \inst1|Ball_on~4_combout\,
	datac => \inst1|Add2~10_combout\,
	datad => \inst1|Ball_on~2_combout\,
	combout => \inst1|Ball_on~5_combout\);

-- Location: LCCOMB_X38_Y23_N12
\inst1|Ball_Y_pos[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[1]~9_combout\ = \inst1|Ball_Y_pos\(1) $ (VCC)
-- \inst1|Ball_Y_pos[1]~10\ = CARRY(\inst1|Ball_Y_pos\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(1),
	datad => VCC,
	combout => \inst1|Ball_Y_pos[1]~9_combout\,
	cout => \inst1|Ball_Y_pos[1]~10\);

-- Location: LCCOMB_X38_Y23_N14
\inst1|Ball_Y_pos[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[2]~11_combout\ = (\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(2) & (\inst1|Ball_Y_pos[1]~10\ & VCC)) # (!\inst1|Ball_Y_pos\(2) & (!\inst1|Ball_Y_pos[1]~10\)))) # (!\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(2) & 
-- (!\inst1|Ball_Y_pos[1]~10\)) # (!\inst1|Ball_Y_pos\(2) & ((\inst1|Ball_Y_pos[1]~10\) # (GND)))))
-- \inst1|Ball_Y_pos[2]~12\ = CARRY((\inst1|Ball_Y_motion\(2) & (!\inst1|Ball_Y_pos\(2) & !\inst1|Ball_Y_pos[1]~10\)) # (!\inst1|Ball_Y_motion\(2) & ((!\inst1|Ball_Y_pos[1]~10\) # (!\inst1|Ball_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[1]~10\,
	combout => \inst1|Ball_Y_pos[2]~11_combout\,
	cout => \inst1|Ball_Y_pos[2]~12\);

-- Location: FF_X38_Y23_N15
\inst1|Ball_Y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[2]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(2));

-- Location: LCCOMB_X38_Y23_N16
\inst1|Ball_Y_pos[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[3]~13_combout\ = ((\inst1|Ball_Y_motion\(2) $ (\inst1|Ball_Y_pos\(3) $ (!\inst1|Ball_Y_pos[2]~12\)))) # (GND)
-- \inst1|Ball_Y_pos[3]~14\ = CARRY((\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(3)) # (!\inst1|Ball_Y_pos[2]~12\))) # (!\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos\(3) & !\inst1|Ball_Y_pos[2]~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(3),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[2]~12\,
	combout => \inst1|Ball_Y_pos[3]~13_combout\,
	cout => \inst1|Ball_Y_pos[3]~14\);

-- Location: FF_X38_Y23_N17
\inst1|Ball_Y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(3));

-- Location: LCCOMB_X38_Y23_N18
\inst1|Ball_Y_pos[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[4]~15_combout\ = (\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(4) & (\inst1|Ball_Y_pos[3]~14\ & VCC)) # (!\inst1|Ball_Y_pos\(4) & (!\inst1|Ball_Y_pos[3]~14\)))) # (!\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(4) & 
-- (!\inst1|Ball_Y_pos[3]~14\)) # (!\inst1|Ball_Y_pos\(4) & ((\inst1|Ball_Y_pos[3]~14\) # (GND)))))
-- \inst1|Ball_Y_pos[4]~16\ = CARRY((\inst1|Ball_Y_motion\(2) & (!\inst1|Ball_Y_pos\(4) & !\inst1|Ball_Y_pos[3]~14\)) # (!\inst1|Ball_Y_motion\(2) & ((!\inst1|Ball_Y_pos[3]~14\) # (!\inst1|Ball_Y_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[3]~14\,
	combout => \inst1|Ball_Y_pos[4]~15_combout\,
	cout => \inst1|Ball_Y_pos[4]~16\);

-- Location: FF_X38_Y23_N19
\inst1|Ball_Y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(4));

-- Location: LCCOMB_X38_Y23_N20
\inst1|Ball_Y_pos[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[5]~17_combout\ = ((\inst1|Ball_Y_motion\(2) $ (\inst1|Ball_Y_pos\(5) $ (!\inst1|Ball_Y_pos[4]~16\)))) # (GND)
-- \inst1|Ball_Y_pos[5]~18\ = CARRY((\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(5)) # (!\inst1|Ball_Y_pos[4]~16\))) # (!\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos\(5) & !\inst1|Ball_Y_pos[4]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[4]~16\,
	combout => \inst1|Ball_Y_pos[5]~17_combout\,
	cout => \inst1|Ball_Y_pos[5]~18\);

-- Location: FF_X38_Y23_N21
\inst1|Ball_Y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(5));

-- Location: FF_X38_Y23_N13
\inst1|Ball_Y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[1]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(1));

-- Location: LCCOMB_X38_Y23_N0
\inst1|Ball_Y_motion[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion[2]~1_combout\ = (\inst1|Ball_Y_pos\(3) & ((\inst1|Ball_Y_pos\(8)) # ((\inst1|Ball_Y_pos\(1)) # (\inst1|Ball_Y_pos\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(8),
	datab => \inst1|Ball_Y_pos\(3),
	datac => \inst1|Ball_Y_pos\(1),
	datad => \inst1|Ball_Y_pos\(2),
	combout => \inst1|Ball_Y_motion[2]~1_combout\);

-- Location: LCCOMB_X38_Y23_N10
\inst1|Ball_Y_motion[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion[2]~2_combout\ = (\inst1|Ball_Y_pos\(5)) # ((\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(4)) # (\inst1|Ball_Y_motion[2]~1_combout\))) # (!\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos\(4) & \inst1|Ball_Y_motion[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(4),
	datac => \inst1|Ball_Y_pos\(5),
	datad => \inst1|Ball_Y_motion[2]~1_combout\,
	combout => \inst1|Ball_Y_motion[2]~2_combout\);

-- Location: LCCOMB_X38_Y23_N4
\inst1|Ball_Y_motion[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_motion[2]~3_combout\ = (\inst1|Ball_Y_pos\(9)) # ((\inst1|Ball_Y_motion[2]~0_combout\ & ((\inst1|Ball_Y_motion\(2)) # (\inst1|Ball_Y_motion[2]~2_combout\))) # (!\inst1|Ball_Y_motion[2]~0_combout\ & (\inst1|Ball_Y_motion\(2) & 
-- \inst1|Ball_Y_motion[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion[2]~0_combout\,
	datab => \inst1|Ball_Y_pos\(9),
	datac => \inst1|Ball_Y_motion\(2),
	datad => \inst1|Ball_Y_motion[2]~2_combout\,
	combout => \inst1|Ball_Y_motion[2]~3_combout\);

-- Location: FF_X38_Y23_N5
\inst1|Ball_Y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_motion[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_motion\(2));

-- Location: LCCOMB_X38_Y23_N22
\inst1|Ball_Y_pos[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[6]~19_combout\ = (\inst1|Ball_Y_pos\(6) & ((\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos[5]~18\ & VCC)) # (!\inst1|Ball_Y_motion\(2) & (!\inst1|Ball_Y_pos[5]~18\)))) # (!\inst1|Ball_Y_pos\(6) & ((\inst1|Ball_Y_motion\(2) & 
-- (!\inst1|Ball_Y_pos[5]~18\)) # (!\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos[5]~18\) # (GND)))))
-- \inst1|Ball_Y_pos[6]~20\ = CARRY((\inst1|Ball_Y_pos\(6) & (!\inst1|Ball_Y_motion\(2) & !\inst1|Ball_Y_pos[5]~18\)) # (!\inst1|Ball_Y_pos\(6) & ((!\inst1|Ball_Y_pos[5]~18\) # (!\inst1|Ball_Y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(6),
	datab => \inst1|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[5]~18\,
	combout => \inst1|Ball_Y_pos[6]~19_combout\,
	cout => \inst1|Ball_Y_pos[6]~20\);

-- Location: LCCOMB_X38_Y23_N24
\inst1|Ball_Y_pos[7]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[7]~21_combout\ = ((\inst1|Ball_Y_motion\(2) $ (\inst1|Ball_Y_pos\(7) $ (!\inst1|Ball_Y_pos[6]~20\)))) # (GND)
-- \inst1|Ball_Y_pos[7]~22\ = CARRY((\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos\(7)) # (!\inst1|Ball_Y_pos[6]~20\))) # (!\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos\(7) & !\inst1|Ball_Y_pos[6]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datab => \inst1|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[6]~20\,
	combout => \inst1|Ball_Y_pos[7]~21_combout\,
	cout => \inst1|Ball_Y_pos[7]~22\);

-- Location: FF_X38_Y23_N25
\inst1|Ball_Y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[7]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(7));

-- Location: LCCOMB_X38_Y23_N26
\inst1|Ball_Y_pos[8]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[8]~23_combout\ = (\inst1|Ball_Y_pos\(8) & ((\inst1|Ball_Y_motion\(2) & (\inst1|Ball_Y_pos[7]~22\ & VCC)) # (!\inst1|Ball_Y_motion\(2) & (!\inst1|Ball_Y_pos[7]~22\)))) # (!\inst1|Ball_Y_pos\(8) & ((\inst1|Ball_Y_motion\(2) & 
-- (!\inst1|Ball_Y_pos[7]~22\)) # (!\inst1|Ball_Y_motion\(2) & ((\inst1|Ball_Y_pos[7]~22\) # (GND)))))
-- \inst1|Ball_Y_pos[8]~24\ = CARRY((\inst1|Ball_Y_pos\(8) & (!\inst1|Ball_Y_motion\(2) & !\inst1|Ball_Y_pos[7]~22\)) # (!\inst1|Ball_Y_pos\(8) & ((!\inst1|Ball_Y_pos[7]~22\) # (!\inst1|Ball_Y_motion\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(8),
	datab => \inst1|Ball_Y_motion\(2),
	datad => VCC,
	cin => \inst1|Ball_Y_pos[7]~22\,
	combout => \inst1|Ball_Y_pos[8]~23_combout\,
	cout => \inst1|Ball_Y_pos[8]~24\);

-- Location: LCCOMB_X38_Y23_N28
\inst1|Ball_Y_pos[9]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_Y_pos[9]~25_combout\ = \inst1|Ball_Y_motion\(2) $ (\inst1|Ball_Y_pos[8]~24\ $ (!\inst1|Ball_Y_pos\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_motion\(2),
	datad => \inst1|Ball_Y_pos\(9),
	cin => \inst1|Ball_Y_pos[8]~24\,
	combout => \inst1|Ball_Y_pos[9]~25_combout\);

-- Location: FF_X38_Y23_N29
\inst1|Ball_Y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[9]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(9));

-- Location: FF_X38_Y23_N27
\inst1|Ball_Y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[8]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(8));

-- Location: FF_X38_Y23_N23
\inst1|Ball_Y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|SYNC|vert_sync_out~clkctrl_outclk\,
	d => \inst1|Ball_Y_pos[6]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Ball_Y_pos\(6));

-- Location: LCCOMB_X37_Y23_N0
\inst1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~1_cout\ = CARRY((!\inst1|SYNC|pixel_row\(1) & \inst1|Ball_Y_pos\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(1),
	datab => \inst1|Ball_Y_pos\(1),
	datad => VCC,
	cout => \inst1|LessThan2~1_cout\);

-- Location: LCCOMB_X37_Y23_N2
\inst1|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~3_cout\ = CARRY((\inst1|SYNC|pixel_row\(2) & ((!\inst1|LessThan2~1_cout\) # (!\inst1|Ball_Y_pos\(2)))) # (!\inst1|SYNC|pixel_row\(2) & (!\inst1|Ball_Y_pos\(2) & !\inst1|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(2),
	datab => \inst1|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst1|LessThan2~1_cout\,
	cout => \inst1|LessThan2~3_cout\);

-- Location: LCCOMB_X37_Y23_N4
\inst1|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~5_cout\ = CARRY((\inst1|Ball_Y_pos\(3) & ((\inst1|SYNC|pixel_row\(3)) # (!\inst1|LessThan2~3_cout\))) # (!\inst1|Ball_Y_pos\(3) & (\inst1|SYNC|pixel_row\(3) & !\inst1|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(3),
	datab => \inst1|SYNC|pixel_row\(3),
	datad => VCC,
	cin => \inst1|LessThan2~3_cout\,
	cout => \inst1|LessThan2~5_cout\);

-- Location: LCCOMB_X37_Y23_N6
\inst1|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~7_cout\ = CARRY((\inst1|Add2~0_combout\ & ((!\inst1|LessThan2~5_cout\) # (!\inst1|Ball_Y_pos\(4)))) # (!\inst1|Add2~0_combout\ & (!\inst1|Ball_Y_pos\(4) & !\inst1|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~0_combout\,
	datab => \inst1|Ball_Y_pos\(4),
	datad => VCC,
	cin => \inst1|LessThan2~5_cout\,
	cout => \inst1|LessThan2~7_cout\);

-- Location: LCCOMB_X37_Y23_N8
\inst1|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~9_cout\ = CARRY((\inst1|Ball_Y_pos\(5) & ((!\inst1|LessThan2~7_cout\) # (!\inst1|Add2~2_combout\))) # (!\inst1|Ball_Y_pos\(5) & (!\inst1|Add2~2_combout\ & !\inst1|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(5),
	datab => \inst1|Add2~2_combout\,
	datad => VCC,
	cin => \inst1|LessThan2~7_cout\,
	cout => \inst1|LessThan2~9_cout\);

-- Location: LCCOMB_X37_Y23_N10
\inst1|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~11_cout\ = CARRY((\inst1|Add2~4_combout\ & ((!\inst1|LessThan2~9_cout\) # (!\inst1|Ball_Y_pos\(6)))) # (!\inst1|Add2~4_combout\ & (!\inst1|Ball_Y_pos\(6) & !\inst1|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~4_combout\,
	datab => \inst1|Ball_Y_pos\(6),
	datad => VCC,
	cin => \inst1|LessThan2~9_cout\,
	cout => \inst1|LessThan2~11_cout\);

-- Location: LCCOMB_X37_Y23_N12
\inst1|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~13_cout\ = CARRY((\inst1|Ball_Y_pos\(7) & ((!\inst1|LessThan2~11_cout\) # (!\inst1|Add2~6_combout\))) # (!\inst1|Ball_Y_pos\(7) & (!\inst1|Add2~6_combout\ & !\inst1|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(7),
	datab => \inst1|Add2~6_combout\,
	datad => VCC,
	cin => \inst1|LessThan2~11_cout\,
	cout => \inst1|LessThan2~13_cout\);

-- Location: LCCOMB_X37_Y23_N14
\inst1|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~15_cout\ = CARRY((\inst1|Add2~8_combout\ & ((!\inst1|LessThan2~13_cout\) # (!\inst1|Ball_Y_pos\(8)))) # (!\inst1|Add2~8_combout\ & (!\inst1|Ball_Y_pos\(8) & !\inst1|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~8_combout\,
	datab => \inst1|Ball_Y_pos\(8),
	datad => VCC,
	cin => \inst1|LessThan2~13_cout\,
	cout => \inst1|LessThan2~15_cout\);

-- Location: LCCOMB_X37_Y23_N16
\inst1|LessThan2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan2~16_combout\ = (\inst1|Add2~10_combout\ & (!\inst1|LessThan2~15_cout\ & \inst1|Ball_Y_pos\(9))) # (!\inst1|Add2~10_combout\ & ((\inst1|Ball_Y_pos\(9)) # (!\inst1|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add2~10_combout\,
	datad => \inst1|Ball_Y_pos\(9),
	cin => \inst1|LessThan2~15_cout\,
	combout => \inst1|LessThan2~16_combout\);

-- Location: FF_X39_Y23_N5
\inst1|SYNC|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(8),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(8));

-- Location: LCCOMB_X39_Y23_N2
\inst1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~0_combout\ = (\inst1|Ball_Y_pos\(3) & (\inst1|Ball_Y_pos\(4) $ (VCC))) # (!\inst1|Ball_Y_pos\(3) & (\inst1|Ball_Y_pos\(4) & VCC))
-- \inst1|Add3~1\ = CARRY((\inst1|Ball_Y_pos\(3) & \inst1|Ball_Y_pos\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Ball_Y_pos\(3),
	datab => \inst1|Ball_Y_pos\(4),
	datad => VCC,
	combout => \inst1|Add3~0_combout\,
	cout => \inst1|Add3~1\);

-- Location: LCCOMB_X39_Y23_N4
\inst1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~2_combout\ = (\inst1|Ball_Y_pos\(5) & (!\inst1|Add3~1\)) # (!\inst1|Ball_Y_pos\(5) & ((\inst1|Add3~1\) # (GND)))
-- \inst1|Add3~3\ = CARRY((!\inst1|Add3~1\) # (!\inst1|Ball_Y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Ball_Y_pos\(5),
	datad => VCC,
	cin => \inst1|Add3~1\,
	combout => \inst1|Add3~2_combout\,
	cout => \inst1|Add3~3\);

-- Location: LCCOMB_X39_Y23_N8
\inst1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Add3~6_combout\ = (\inst1|Ball_Y_pos\(7) & (!\inst1|Add3~5\)) # (!\inst1|Ball_Y_pos\(7) & ((\inst1|Add3~5\) # (GND)))
-- \inst1|Add3~7\ = CARRY((!\inst1|Add3~5\) # (!\inst1|Ball_Y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Ball_Y_pos\(7),
	datad => VCC,
	cin => \inst1|Add3~5\,
	combout => \inst1|Add3~6_combout\,
	cout => \inst1|Add3~7\);

-- Location: FF_X37_Y23_N21
\inst1|SYNC|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(1),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(1));

-- Location: FF_X39_Y23_N15
\inst1|SYNC|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|SYNC|v_count\(0),
	sload => VCC,
	ena => \inst1|SYNC|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|pixel_row\(0));

-- Location: LCCOMB_X39_Y23_N14
\inst1|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~1_cout\ = CARRY(\inst1|SYNC|pixel_row\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|SYNC|pixel_row\(0),
	datad => VCC,
	cout => \inst1|LessThan3~1_cout\);

-- Location: LCCOMB_X39_Y23_N16
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

-- Location: LCCOMB_X39_Y23_N18
\inst1|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~5_cout\ = CARRY((\inst1|SYNC|pixel_row\(2) & ((!\inst1|LessThan3~3_cout\) # (!\inst1|Ball_Y_pos\(2)))) # (!\inst1|SYNC|pixel_row\(2) & (!\inst1|Ball_Y_pos\(2) & !\inst1|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(2),
	datab => \inst1|Ball_Y_pos\(2),
	datad => VCC,
	cin => \inst1|LessThan3~3_cout\,
	cout => \inst1|LessThan3~5_cout\);

-- Location: LCCOMB_X39_Y23_N20
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

-- Location: LCCOMB_X39_Y23_N22
\inst1|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~9_cout\ = CARRY((\inst1|SYNC|pixel_row\(4) & ((!\inst1|LessThan3~7_cout\) # (!\inst1|Add3~0_combout\))) # (!\inst1|SYNC|pixel_row\(4) & (!\inst1|Add3~0_combout\ & !\inst1|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(4),
	datab => \inst1|Add3~0_combout\,
	datad => VCC,
	cin => \inst1|LessThan3~7_cout\,
	cout => \inst1|LessThan3~9_cout\);

-- Location: LCCOMB_X39_Y23_N24
\inst1|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~11_cout\ = CARRY((\inst1|SYNC|pixel_row\(5) & (\inst1|Add3~2_combout\ & !\inst1|LessThan3~9_cout\)) # (!\inst1|SYNC|pixel_row\(5) & ((\inst1|Add3~2_combout\) # (!\inst1|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|pixel_row\(5),
	datab => \inst1|Add3~2_combout\,
	datad => VCC,
	cin => \inst1|LessThan3~9_cout\,
	cout => \inst1|LessThan3~11_cout\);

-- Location: LCCOMB_X39_Y23_N26
\inst1|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan3~13_cout\ = CARRY((\inst1|Add3~4_combout\ & (\inst1|SYNC|pixel_row\(6) & !\inst1|LessThan3~11_cout\)) # (!\inst1|Add3~4_combout\ & ((\inst1|SYNC|pixel_row\(6)) # (!\inst1|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~4_combout\,
	datab => \inst1|SYNC|pixel_row\(6),
	datad => VCC,
	cin => \inst1|LessThan3~11_cout\,
	cout => \inst1|LessThan3~13_cout\);

-- Location: LCCOMB_X39_Y23_N28
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

-- Location: LCCOMB_X39_Y23_N30
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

-- Location: LCCOMB_X40_Y23_N0
\inst1|Ball_on\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Ball_on~combout\ = (!\inst1|Add3~10_combout\ & (\inst1|Ball_on~5_combout\ & (!\inst1|LessThan2~16_combout\ & !\inst1|LessThan3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~10_combout\,
	datab => \inst1|Ball_on~5_combout\,
	datac => \inst1|LessThan2~16_combout\,
	datad => \inst1|LessThan3~16_combout\,
	combout => \inst1|Ball_on~combout\);

-- Location: LCCOMB_X40_Y23_N8
\inst1|SYNC|blue_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|blue_out~0_combout\ = (\inst1|SYNC|video_on_v~q\ & (\inst1|SYNC|video_on_h~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_v~q\,
	datab => \SW[8]~input_o\,
	datac => \inst1|SYNC|video_on_h~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|blue_out~0_combout\);

-- Location: FF_X40_Y23_N9
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

-- Location: LCCOMB_X40_Y23_N10
\inst1|SYNC|blue_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|blue_out~1_combout\ = (\inst1|SYNC|video_on_v~q\ & (\inst1|SYNC|video_on_h~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_v~q\,
	datab => \SW[7]~input_o\,
	datac => \inst1|SYNC|video_on_h~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|blue_out~1_combout\);

-- Location: FF_X40_Y23_N11
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

-- Location: LCCOMB_X40_Y23_N28
\inst1|SYNC|blue_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|blue_out~2_combout\ = (\inst1|SYNC|video_on_v~q\ & (\inst1|SYNC|video_on_h~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_v~q\,
	datab => \SW[6]~input_o\,
	datac => \inst1|SYNC|video_on_h~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|blue_out~2_combout\);

-- Location: FF_X40_Y23_N29
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

-- Location: LCCOMB_X40_Y23_N22
\inst1|SYNC|blue_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|blue_out~3_combout\ = (\inst1|SYNC|video_on_v~q\ & (\inst1|SYNC|video_on_h~q\ & !\inst1|Ball_on~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_v~q\,
	datac => \inst1|SYNC|video_on_h~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|blue_out~3_combout\);

-- Location: FF_X40_Y23_N15
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

-- Location: LCCOMB_X40_Y23_N12
\inst1|SYNC|green_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|green_out~0_combout\ = (\inst1|SYNC|video_on_v~q\ & (\inst1|SYNC|video_on_h~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_v~q\,
	datab => \SW[5]~input_o\,
	datac => \inst1|SYNC|video_on_h~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|green_out~0_combout\);

-- Location: FF_X40_Y23_N13
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

-- Location: LCCOMB_X40_Y23_N18
\inst1|SYNC|green_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|green_out~1_combout\ = (\inst1|SYNC|video_on_v~q\ & (\inst1|SYNC|video_on_h~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_v~q\,
	datab => \SW[4]~input_o\,
	datac => \inst1|SYNC|video_on_h~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|green_out~1_combout\);

-- Location: FF_X40_Y23_N19
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

-- Location: LCCOMB_X40_Y23_N4
\inst1|SYNC|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|green_out~2_combout\ = (\inst1|SYNC|video_on_v~q\ & (\inst1|SYNC|video_on_h~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_v~q\,
	datab => \SW[3]~input_o\,
	datac => \inst1|SYNC|video_on_h~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|green_out~2_combout\);

-- Location: FF_X40_Y23_N5
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

-- Location: FF_X40_Y23_N23
\inst1|SYNC|green_out[0]\ : dffeas
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
	q => \inst1|SYNC|green_out\(0));

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

-- Location: LCCOMB_X40_Y23_N24
\inst1|SYNC|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|red_out~0_combout\ = (\inst1|SYNC|video_on_v~q\ & (\inst1|SYNC|video_on_h~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_v~q\,
	datab => \SW[2]~input_o\,
	datac => \inst1|SYNC|video_on_h~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|red_out~0_combout\);

-- Location: FF_X40_Y23_N25
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

-- Location: LCCOMB_X40_Y23_N30
\inst1|SYNC|red_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|red_out~1_combout\ = (\inst1|SYNC|video_on_v~q\ & (\inst1|SYNC|video_on_h~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_v~q\,
	datab => \SW[1]~input_o\,
	datac => \inst1|SYNC|video_on_h~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|red_out~1_combout\);

-- Location: FF_X40_Y23_N31
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

-- Location: LCCOMB_X40_Y23_N16
\inst1|SYNC|red_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|red_out~2_combout\ = (\inst1|SYNC|video_on_v~q\ & (\inst1|SYNC|video_on_h~q\ & ((!\inst1|Ball_on~combout\) # (!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|SYNC|video_on_v~q\,
	datab => \SW[0]~input_o\,
	datac => \inst1|SYNC|video_on_h~q\,
	datad => \inst1|Ball_on~combout\,
	combout => \inst1|SYNC|red_out~2_combout\);

-- Location: FF_X40_Y23_N17
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

-- Location: LCCOMB_X40_Y23_N2
\inst1|SYNC|red_out[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SYNC|red_out[0]~feeder_combout\ = \inst1|SYNC|blue_out~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SYNC|blue_out~3_combout\,
	combout => \inst1|SYNC|red_out[0]~feeder_combout\);

-- Location: FF_X40_Y23_N3
\inst1|SYNC|red_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|SYNC|red_out[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SYNC|red_out\(0));

-- Location: IOIBUF_X0_Y23_N15
\bt1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bt1,
	o => \bt1~input_o\);

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


