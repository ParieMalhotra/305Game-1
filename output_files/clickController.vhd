LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;
use ieee.numeric_std.all;

entity mouseController is 
port (
		clk : in std_logic;
		left_click : in std_logic;
		speed : out std_logic_vector(9 downto 0);
		click : out std_logic
		);
end mouseController;

architecture arc1 of mouseController is 
--signal
begin 
process (clk, left_click)
variable counter : unsigned(25 downto 0) := "00000000000000000000000000";
variable tmp_clicked: std_logic := '0';
begin 
	if (clk'event and clk = '1') then 
		counter := counter + 1;
			
		if (counter > "00011100000000000000000000") then 
			tmp_clicked := '0';
			counter := "00000000000000000000000000";
		end if;
	end if;
	
	if tmp_clicked = '0' and left_click = '1' then
		counter := "00000000000000000000000000";
		tmp_clicked := '1';
	end if;
	click <= not(tmp_clicked);
end process;
end architecture;