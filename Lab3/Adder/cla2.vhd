library ieee;
use ieee.std_logic_1164.all;

entity cla2 is
	port (
		x, y 	: in 	std_logic_vector(1 downto 0);
		cin	: in 	std_logic;
		s		: out	std_logic_vector(1 downto 0);
		cout	: out	std_logic;
		BP, BG: out std_logic);
end cla2;

architecture BHV of cla2 is
	signal temp	: std_logic;
begin
	s(0)	<= x(0) xor y(0) xor cin;
	temp	<= (x(0) and y(0)) or (x(0) and cin) or (y(0) and cin);
	s(1)	<= x(1) xor y(1) xor temp;
	cout	<= (x(1) and y(1)) or (x(1) and temp) or (y(1) and temp);
	BP		<= (x(1) or y(1)) and (x(0) or y(0));
	BG		<= (x(1) and y(1)) or ((x(1) or y(1)) and (x(0) and y(0))); 
end BHV;