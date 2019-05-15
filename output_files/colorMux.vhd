LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_UNSIGNED.all;

entity colorMux is 
port (bird_n, char_n : in std_logic;
		bird : in STD_LOGIC_VECTOR(11 DOWNTO 0);
		char : in STD_LOGIC_VECTOR(11 DOWNTO 0);
		red, green, blue	: out STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
end colorMux;

architecture arc1 of colorMux is 

begin 
	red <=char(3 downto 0) when char_n = '1' else 
			bird(11 downto 8) when bird_n = '1' else 
			"1111";
	green <= char(7 downto 4) when char_n = '1' else
				bird(7 downto 4) when bird_n = '1' else 				
				"1111";
	blue <= char(3 downto 0) when char_n = '1' else
				bird(3 downto 0) when bird_n = '1' else 
				"1111";
end architecture;