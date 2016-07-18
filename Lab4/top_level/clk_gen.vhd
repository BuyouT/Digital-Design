library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_gen is
    generic (
        ms_period : positive := 1000);          -- amount of ms for button to be
                                        -- pressed before creating clock pulse
    port (
        clk50MHz : in  std_logic;
        rst      : in  std_logic;
        button_n : in  std_logic;
        clk_out  : out std_logic);
end clk_gen;

architecture BHV of clk_gen is
	signal temp_in		: std_logic;
	signal temp_out		: std_logic;
	signal count		: integer range 0 to ms_period := 0;
begin
	U_CD: entity work.clk_div
		generic map(
		clk_in_freq => 50000000,
		clk_out_freq => 1000)
		port map(
		clk_in => clk50MHz,
		rst => rst,
		clk_out => temp_in);
	process(rst, temp_in)
	begin
		if rst = '1' then
			count <= 0;
			temp_out <= '0';
		elsif rising_edge(temp_in) then
			if button_n = '0' then
				if count = ms_period then
					temp_out <= '1';
					count <= 1;
				else
					count <= count + 1;
					temp_out <= '0';
				end if;
			else
				count <= 0;
				temp_out <= '0';
			end if;
		end if;
	end process;
	clk_out <= temp_out;
end BHV;