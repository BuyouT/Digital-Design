library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        up_n   : in  std_logic;         -- active low
        load_n : in  std_logic;         -- active low
        input  : in  std_logic_vector(3 downto 0);
        output : out std_logic_vector(3 downto 0));
end counter;

architecture BHV of counter is
begin
	process(clk, rst)
		variable count : std_logic_vector(3 downto 0);
	begin
		if rst = '1' then
			count := "0000";
		elsif rising_edge(clk) then
			if load_n = '0' then
				count := input;
			elsif up_n = '0' then
				count := std_logic_vector(unsigned(count) + 1);
			else
				count := std_logic_vector(unsigned(count) - 1);
			end if;
		end if;
		output <= count;
	end process;
end BHV;
		