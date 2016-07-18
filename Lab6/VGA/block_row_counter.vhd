library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_lib.all;

entity block_row_counter is
	port (
	move_sel		: in	std_logic_vector(2 downto 0);
	hmove_o		: in	std_logic_vector(COUNT_WIDTH -1 downto 0);
	input			: in  std_logic_vector(2 downto 0);
	Vcount      : in 	std_logic_vector(COUNT_WIDTH-1 downto 0);
	row_count  	: out std_logic_vector(5 downto 0);
	show_image	: out std_logic);
end block_row_counter;

architecture behv of block_row_counter  is
begin
	process(Vcount, input)
		variable temp_row_count  :  unsigned(COUNT_WIDTH-1 downto 0);
   begin
		if (input="001") then --show image at top left
			if unsigned(Vcount) <= TOP_LEFT_Y_END and unsigned(Vcount) >= TOP_LEFT_Y_START then
				temp_row_count := (unsigned(Vcount) - TOP_LEFT_Y_START)/2;
				show_image<='1';
			else 
				temp_row_count := (others => '0');
				show_image<='0';
			end if;
		elsif (input="010") then --show image at top right
			if unsigned(Vcount) <= TOP_RIGHT_Y_END and unsigned(Vcount) >= TOP_RIGHT_Y_START then
				temp_row_count := (unsigned(Vcount) - TOP_RIGHT_Y_START)/2;
				show_image<='1';
			else 
				temp_row_count := (others => '0');
				show_image<='0';
			end if;
		elsif (input="011") then --show image at bottom left
			if unsigned(Vcount) <= BOTTOM_LEFT_Y_END and unsigned(Vcount) >= BOTTOM_LEFT_Y_START then
				temp_row_count := (unsigned(Vcount) - BOTTOM_LEFT_Y_START)/2;
				show_image<='1';
			else 
				temp_row_count := (others => '0');
				show_image<='0';
			end if;
		elsif (input="100") then --show image at bottom right
			if unsigned(Vcount) <= BOTTOM_RIGHT_Y_END and unsigned(Vcount) >= BOTTOM_RIGHT_Y_START then
				temp_row_count := (unsigned(Vcount) - BOTTOM_RIGHT_Y_START)/2;
				show_image<='1';
			else 
				temp_row_count := (others => '0');
				show_image<='0';
			end if;
		else	  						--show at the center
			if move_sel = "110" then
				if unsigned(Vcount) <= CENTERED_Y_END - unsigned(hmove_o)/4 and unsigned(Vcount) >= CENTERED_Y_START - unsigned(hmove_o)/4 then
					temp_row_count := (unsigned(Vcount) - CENTERED_Y_START)/2;
					show_image<='1';
				else 
					temp_row_count := (others => '0');
					show_image<='0';
				end if;
			elsif move_sel = "101" then
				if unsigned(Vcount) <= CENTERED_Y_END + unsigned(hmove_o)/4 and unsigned(Vcount) >= CENTERED_Y_START + unsigned(hmove_o)/4 then
					temp_row_count := (unsigned(Vcount) - CENTERED_Y_START)/2;
					show_image<='1';
				else 
					temp_row_count := (others => '0');
					show_image<='0';
				end if;
			else
				if unsigned(Vcount) <= CENTERED_Y_END and unsigned(Vcount) >= CENTERED_Y_START then
					temp_row_count := (unsigned(Vcount) - CENTERED_Y_START)/2;
					show_image<='1';
				else 
					temp_row_count := (others => '0');
					show_image<='0';
				end if;
			end if;	
		end if;
		row_count <=std_logic_vector(temp_row_count(5 downto 0));
   end process; 
end behv;
