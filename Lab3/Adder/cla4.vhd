library ieee;
use ieee.std_logic_1164.all;

entity cla4 is
	port (
		x, y 	: in 	std_logic_vector(3 downto 0);
		cin	: in 	std_logic;
		s		: out	std_logic_vector(3 downto 0);
		cout	: out	std_logic;
		BP, BG: out std_logic);
end cla4;

architecture BHV of cla4 is
	signal tempC			: std_logic;
	signal tempP, tempG	: std_logic_vector(1 downto 0);
begin
	U_CLA21	: entity work.cla2 port map (
		x => x(1 downto 0),
		y => y(1 downto 0),
		cin => cin,
		s => s(1 downto 0),
		cout => open,
		BP => tempP(0),
		BG => tempG(0)
		);
		
	U_CGEN2 : entity work.cgen2 port map (
		ci => cin,
		p => tempP,
		g => tempG,
		ci_out(0) => tempC,
		ci_out(1) => cout,
		BP => BP,
		BG => BG
		);
		
	U_CLA22 : entity work.cla2 port map (
		x => x(3 downto 2),
		y => y(3 downto 2),
		cin => tempC,
		s => s(3 downto 2),
		cout => open,
		BP => tempP(1),
		BG => tempG(1)
		);
end BHV;