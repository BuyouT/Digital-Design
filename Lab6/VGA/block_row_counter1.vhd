library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_lib.all;

entity block_row_counter1  is
  port (  
  input			: in  std_logic_vector(2 downto 0);
  Vcount       : in 	std_logic_vector(COUNT_WIDTH-1 downto 0);
  row_count  	: out std_logic_vector(6 downto 0);
  show_image	: out std_logic);
end block_row_counter1;

architecture behv of block_row_counter1  is
begin
	process(Vcount, input)
		variable big_row_count  :  unsigned(COUNT_WIDTH-1 downto 0);
   begin
		if (input="001") then --show image at top left
			if unsigned(Vcount) <= TOP_LEFT_Y_END and unsigned(Vcount) >= TOP_LEFT_Y_START then
				big_row_count := (unsigned(Vcount) - TOP_LEFT_Y_START);
				show_image<='1';
			else 
				big_row_count := (others => '0');
				show_image<='0';
			end if;
		elsif (input="010") then --show image at top right
			if unsigned(Vcount) <= TOP_RIGHT_Y_END and unsigned(Vcount) >= TOP_RIGHT_Y_START then
				big_row_count := (unsigned(Vcount) - TOP_RIGHT_Y_START);
				show_image<='1';
			else 
				big_row_count := (others => '0');
				show_image<='0';
			end if;
		elsif (input="011") then --show image at bottom left
			if unsigned(Vcount) <= BOTTOM_LEFT_Y_END and unsigned(Vcount) >= BOTTOM_LEFT_Y_START then
				big_row_count := (unsigned(Vcount) - BOTTOM_LEFT_Y_START);
				show_image<='1';
			else 
				big_row_count := (others => '0');
				show_image<='0';
			end if;
		elsif (input="100") then --show image at bottom right
			if unsigned(Vcount) <= BOTTOM_RIGHT_Y_END and unsigned(Vcount) >= BOTTOM_RIGHT_Y_START then
				big_row_count := (unsigned(Vcount) - BOTTOM_RIGHT_Y_START);
				show_image<='1';
			else 
				big_row_count := (others => '0');
				show_image<='0';
			end if;
		else	  						--show at the center
			if unsigned(Vcount) <= CENTERED_Y_END and unsigned(Vcount) >= CENTERED_Y_START then
				big_row_count := (unsigned(Vcount) - CENTERED_Y_START);
				show_image<='1';
			else 
				big_row_count := (others => '0');
				show_image<='0';
			end if;	
		end if;
		row_count <=std_logic_vector(big_row_count(6 downto 0));
   end process; 
end behv;
