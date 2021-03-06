library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_lib.all;


entity move_vert is
	port (
   Vert_Sync		: in  std_logic;
	vmove_out   	: out std_logic_vector(COUNT_WIDTH-1 downto 0)); 
end move_vert; 

architecture behvq of move_vert is  

begin
	process(Vert_Sync)
	variable temp_count : unsigned(COUNT_WIDTH-1 downto 0) := (others => '0');
	begin
		if(Vert_Sync'event and Vert_Sync='1') then
			if (temp_count <= to_unsigned(600,10)) then
				temp_count := temp_count + 1;
			else
				temp_count := (others => '0');
			end if;
		end if;
		vmove_out <= std_logic_vector(temp_count);
	end process;
	

end behvq;
