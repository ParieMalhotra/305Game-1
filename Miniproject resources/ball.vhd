-- Bouncing Ball Video 
--
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
LIBRARY lpm;
USE lpm.lpm_components.ALL;

PACKAGE de0core IS
	COMPONENT vga_sync
 		PORT(
		clock_25Mhz  : in STD_LOGIC;
				red, green, blue	: IN	STD_LOGIC_VECTOR(3 downto 0);
         	red_out, green_out, blue_out	: OUT 	STD_LOGIC_VECTOR(3 downto 0);
			horiz_sync_out, vert_sync_out	: OUT 	STD_LOGIC;
			pixel_row, pixel_column			: OUT STD_LOGIC_VECTOR(9 DOWNTO 0)
			);
	END COMPONENT;
END de0core;

			-- Bouncing Ball Video 
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE IEEE.STD_LOGIC_ARITH.all;
USE IEEE.STD_LOGIC_SIGNED.all;
LIBRARY work;
USE work.de0core.all;


ENTITY ball IS
Generic(ADDR_WIDTH: integer := 12; DATA_WIDTH: integer := 1);

   PORT(SIGNAL PB1, PB2, Clock 			: IN std_logic;
		  signal left_button	: in std_logic;
		  signal buttons : in STD_LOGIC_VECTOR(8 downto 0);
        SIGNAL Red,Green,Blue 			: OUT std_logic_vector(3 downto 0);
        SIGNAL Horiz_sync,Vert_sync		: OUT std_logic);		
END ball;

architecture behavior of ball is

			-- Video Display Signals   
SIGNAL vert_sync_int, reset, Ball_on, Direction			: std_logic;
signal Red_Data, Green_Data, Blue_Data : std_logic_vector(3 DOWNTO 0); 
SIGNAL Size 								: std_logic_vector(9 DOWNTO 0);  
SIGNAL Ball_Y_motion 						: std_logic_vector(9 DOWNTO 0);
SIGNAL Ball_Y_pos, Ball_X_pos				: std_logic_vector(9 DOWNTO 0);
SIGNAL pixel_row, pixel_column				: std_logic_vector(9 DOWNTO 0); 
SIGNAL char_output : std_LOGIC;

	COMPONENT char_rom is
 		PORT(
		character_address	:	IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		font_row, font_col	:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		clock				: 	IN STD_LOGIC ;
		pixel_row : in std_LOGIC_VECTOR(9 downto 0);
		pixel_col : in std_LOGIC_VECTOR(9 downto 0);
		rom_mux_output		:	OUT STD_LOGIC
		);
	END COMPONENT;

BEGIN           
   SYNC: vga_sync
 		PORT MAP(clock_25Mhz => clock, 
				red => red_data, 
				green => green_data, 
				blue => blue_data,	
    	     	red_out => red, green_out => green, blue_out => blue,
			 	horiz_sync_out => horiz_sync, vert_sync_out => vert_sync_int,
			 	pixel_row => pixel_row, pixel_column => pixel_column);


char1: char_rom
	PORT MAP (
		clock => clock,
	pixel_row => pixel_row,
	pixel_col => pixel_column,
	rom_mux_output => char_output ,
	character_address =>  pixel_row(9 downto 4),
	font_row => pixel_row(3 downto 1) ,
	font_col => pixel_column(3 downto 1) 
	);

Size <= CONV_STD_LOGIC_VECTOR(8,10);
Ball_X_pos <= CONV_STD_LOGIC_VECTOR(320,10);

		-- need internal copy of vert_sync to read
vert_sync <= vert_sync_int;

		-- Colors for pixel data on video signal
Red_Data(0) <= not('1' and Ball_on)when char_output = '0' else
						'0';
Red_Data(1) <= not(buttons(0) and Ball_on)when char_output = '0' else
						'0';
Red_Data(2) <= not(buttons(1) and Ball_on)when char_output = '0' else
						'0';
Red_Data(3) <= not(buttons(2) and Ball_on)when char_output = '0' else
						'0';

Green_Data(0) <= not('1' and Ball_on)when char_output = '0' else
						'0';
Green_Data(1) <= not(buttons(3) and Ball_on)when char_output = '0' else
						'0';
Green_Data(2) <= not(buttons(4)and Ball_on)when char_output = '0' else
						'0';
Green_Data(3) <= not(buttons(5) and Ball_on)when char_output = '0' else
						'0';

Blue_Data(0) <=  not('1'and Ball_on) when char_output = '0' else
						'0';
Blue_Data(1) <=  not(buttons(6) and Ball_on)when char_output = '0' else
						'0';
Blue_Data(2) <=  not(buttons(7) and Ball_on)when char_output = '0' else
						'0';
Blue_Data(3) <=  not(buttons(8) and Ball_on)when char_output = '0' else
						'0';

RGB_Display: Process (Ball_X_pos, Ball_Y_pos, pixel_column, pixel_row, Size)
BEGIN
			-- Set Ball_on ='1' to display ball
 IF ('0' & Ball_X_pos <= pixel_column + Size) AND
 			-- compare positive numbers only
 	(Ball_X_pos + Size >= '0' & pixel_column) AND
 	('0' & Ball_Y_pos <= pixel_row + Size) AND
 	(Ball_Y_pos + Size >= '0' & pixel_row ) THEN
 		Ball_on <= '1';
 	ELSE
 		Ball_on <= '0';
END IF;
END process RGB_Display;

Move_Ball: process
	variable counter : std_logic_vector(9 downto 0) := "0000000000";
BEGIN
			-- Move ball once every vertical sync
	WAIT UNTIL vert_sync_int'event and vert_sync_int = '1';
			-- Bounce off top or bottom of screen
			if	(left_button = '1') then -- if the button IS pressed then move up
				Ball_Y_motion <=  CONV_STD_LOGIC_VECTOR(2,10);
				counter := counter + "0000000001";
			else 
				Ball_Y_motion <= - CONV_STD_LOGIC_VECTOR(2,10);
				counter := "0000000000";
			end if;
			
			--check colisions 
			IF (('0' & Ball_Y_pos) >= CONV_STD_LOGIC_VECTOR(480,10) - Size) THEN
			if	(left_button = '0') then -- if the button is not pressed then move down
				Ball_Y_motion <= - CONV_STD_LOGIC_VECTOR(2,10);
			else 
			 Ball_Y_motion <= "0000000000";--keep the ball in that position
			 counter := "0000000000";
			end if;
			ELSIF Ball_Y_pos <= Size THEN
			if (left_button = '1') then -- if the button IS pressed then move up
				Ball_Y_motion <= CONV_STD_LOGIC_VECTOR(2,10);
			else 
				Ball_Y_motion <= "0000000000";
				counter := "0000000000";
			end if;
			END IF;
			Ball_Y_pos <= Ball_Y_pos + Ball_Y_motion + (counter(9 downto 3));
END process Move_Ball;

END behavior;

