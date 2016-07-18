library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder7seg_tb is
end decoder7seg_tb;

architecture behavior of decoder7seg_tb is

   signal  input : std_logic_vector(3 downto 0);
	signal  output: std_logic_vector(6 downto 0);
  
begin  

  U_D7S : entity work.decoder7seg
    port map (
      input => input,
      output => output
      );
		
  U_CHECK: process 
	variable value : std_logic_vector (3 downto 0);
	begin
	for i in 0 to 15 loop
		value := std_logic_vector (to_unsigned(i, 4));

		  input(3) <= value(3);
		  input(2) <= value(2);
		  input(1) <= value(1);
		  input(0) <= value(0);

      wait for 50 ns; 
    end loop;

	 wait for 500 ns;
    report "SIMULATION FINISHED!";
    wait;

  end process;
end;