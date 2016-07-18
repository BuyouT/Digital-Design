library ieee;
use ieee.std_logic_1164.all;

entity counter_tb is
end counter_tb;

architecture TB of counter_tb is
	signal clk, rst 		: std_logic := '0';
	signal up_n, load_n  	: std_logic := '1'; 
	signal input			: std_logic_vector (3 downto 0) := "1010";
	signal output			: std_logic_vector (3 downto 0);
begin

	U_COUNTER: entity work.counter
		port map(
			clk => clk,
			rst => rst,
			up_n => up_n,
			load_n => load_n,
			input => input,
			output => output);
	clk <= not clk after 5 ns;
	
	process
	begin
		 rst <= '1';
		 for i in 0 to 5 loop
			wait until clk'event and clk = '1';
		 end loop;  -- i

		 rst <= '0';
		 wait until clk'event and clk = '1';

		 for i in 0 to 100 loop
			load_n <= '0';
			for j in 10 to 15 loop
			  wait until clk'event and clk='1';
			end loop;  -- j
			load_n <= '1';
			for j in 30 to 35 loop
			  wait until clk'event and clk='1';
			end loop;  -- j
			up_n <= '0';
			for j in 30 to 35 loop
			  wait until clk'event and clk='1';
			end loop;  -- j
			up_n <= '1';
			wait until clk'event and clk='1';      
		 end loop;  -- i
	end process;
end TB;