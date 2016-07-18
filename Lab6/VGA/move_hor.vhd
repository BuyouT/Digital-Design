library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_lib.all;


entity move_hor is
	port (
   Horiz_Sync	: in  std_logic;
	hmove_out   : out std_logic_vector(COUNT_WIDTH-1 downto 0)); 
end move_hor; 

architecture behvq of move_hor is  

begin
	process(Horiz_Sync)
	variable temp_count : unsigned(COUNT_WIDTH-1 downto 0) := (others => '0');
	begin
		if(Horiz_Sync'event and Horiz_Sync='1') then
			if (temp_count <= to_unsigned(480,10)) then
				temp_count := temp_count + 1;
			else
				temp_count := (others => '0');
			end if;
		end if;
		hmove_out <= std_logic_vector(temp_count);
	end process;
	

end behvq;
