library ieee;
use ieee.std_logic_1164.all;

entity cgen2 is
	port (
		ci			: in std_logic;
		p, g		: in std_logic_vector(1 downto 0);
		ci_out	: out std_logic_vector(1 downto 0);
		BP, BG	: out std_logic);
end cgen2;

architecture BHV of cgen2 is
begin
	ci_out(0) <= g(0) or (p(0) and ci);
	ci_out(1) <= g(1) or (g(0) and p(1)) or (p(1) and p(0) and ci);
	BP <= p(1) and p(0);
	BG <= g(1) or (p(1) and g(0));
end BHV;