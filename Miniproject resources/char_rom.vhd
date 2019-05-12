---
--Pong game 2018
---

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_UNSIGNED.all;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY char_rom IS
	PORT
	(
		clock				: 	IN STD_LOGIC ;
		Red, Blue, Green: in std_logic_vector(3 DOWNTO 0);
		pixel_row : in std_LOGIC_VECTOR(9 downto 0);
		pixel_column : in std_LOGIC_VECTOR(9 downto 0);
		Red_out, Green_out, Blue_out : out std_LOGIC_VECTOR(3 downto 0)
		--rom_mux_output		:	OUT STD_LOGIC
	);
END char_rom;


ARCHITECTURE SYN OF char_rom IS

	SIGNAL rom_data				: STD_LOGIC_VECTOR (7 DOWNTO 0);
	SIGNAL rom_address			: STD_LOGIC_VECTOR (8 DOWNTO 0);
	signal rom_mux_output 		: std_LOGIC;
	signal character_address	: STD_LOGIC_VECTOR (5 DOWNTO 0);
	signal font_row, font_col	: STD_LOGIC_VECTOR (2 DOWNTO 0);

	COMPONENT altsyncram
	GENERIC (
		address_aclr_a			: STRING;
		clock_enable_input_a	: STRING;
		clock_enable_output_a	: STRING;
		init_file				: STRING;
		intended_device_family	: STRING;
		lpm_hint				: STRING;
		lpm_type				: STRING;
		numwords_a				: NATURAL;
		operation_mode			: STRING;
		outdata_aclr_a			: STRING;
		outdata_reg_a			: STRING;
		widthad_a				: NATURAL;
		width_a					: NATURAL;
		width_byteena_a			: NATURAL
	);
	PORT (
		clock0		: IN STD_LOGIC ;
		address_a	: IN STD_LOGIC_VECTOR (8 DOWNTO 0);
		q_a			: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	--rom_mux_output	<= sub_wire0(7 DOWNTO 0);
	--character_address <=  pixel_row(9 downto 4);
	font_row <= pixel_row(3 downto 1) + "110";--why though
	font_col <= pixel_column(3 downto 1);

	altsyncram_component : altsyncram
	GENERIC MAP (
		address_aclr_a => "NONE",
		clock_enable_input_a => "BYPASS",
		clock_enable_output_a => "BYPASS",
		init_file => "tcgrom.mif",
		intended_device_family => "Cyclone III",
		lpm_hint => "ENABLE_RUNTIME_MOD=NO",
		lpm_type => "altsyncram",
		numwords_a => 512,
		operation_mode => "ROM",
		outdata_aclr_a => "NONE",
		outdata_reg_a => "UNREGISTERED",
		widthad_a => 9,
		width_a => 8,
		width_byteena_a => 1
	)
	PORT MAP (
		clock0 => clock,
		address_a => rom_address,
		q_a => rom_data
	);
																		 
	rom_address <= "010011" & font_row when pixel_column <= "0000010000" else 
						"000011" & font_row when pixel_column <= "0000100000" else
						"001111" & font_row when pixel_column <= "0000110000" else
						"010010" & font_row when pixel_column <= "0001000000" else
						"000101" & font_row;
	rom_mux_output <= rom_data (CONV_INTEGER(NOT font_col(2 DOWNTO 0))) when pixel_row < "0000010011"  and pixel_row > "0000000011" and pixel_column < "0001010000" and pixel_column > "0000000000" else --each character in this case is 16*16 original scale is 8*8
							'0';--not need as an output
	
	Red_out <= red when rom_mux_output = '0' else 
				  "0000";
	Green_out <= green when rom_mux_output = '0' else 
				  "0000";
	Blue_out <= blue when rom_mux_output = '0' else 
				  "0000";

END SYN;