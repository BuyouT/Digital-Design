library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_div is
    generic(clk_in_freq  : natural := 50;
            clk_out_freq : natural := 10);
    port (
        clk_in  : in  std_logic;
        clk_out : out std_logic;
        rst     : in  std_logic);
end clk_div;

architecture BHV of clk_div is
	signal clk_hz 		: std_logic;
	signal max_range	: natural := (clk_in_freq/clk_out_freq)/2-1;
	signal count		: integer range 0 to max_range := 0;
begin
	process(rst, clk_in)
	begin
		if rst = '1' then
			clk_hz <= '0';
			count <= 0;
		elsif rising_edge(clk_in) then
				if count = max_range then
					count <= 0;
					clk_hz <= not clk_hz;
				else
					count <= count + 1;
				end if;
		end if;
	end process;
		clk_out <= clk_hz;
end BHV;