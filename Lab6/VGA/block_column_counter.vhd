library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.vga_lib.all;

entity block_column_counter is
	port ( 
	move_sel			: in	std_logic_vector(2 downto 0);
	vmove_o			: in	std_logic_vector(COUNT_WIDTH -1 downto 0);
	input				: in  std_logic_vector(2 downto 0);
	Hcount       	: in  std_logic_vector(COUNT_WIDTH-1 downto 0);
	column_count 	: out std_logic_vector(5 downto 0);
	show_image		: out std_logic);
end block_column_counter;

architecture behv of block_column_counter  is
begin
	process(Hcount, input)
		variable temp_col_count	:  unsigned(COUNT_WIDTH-1 downto 0);
   begin
		if (input="001") then --show image at top left
			if unsigned(Hcount) <= TOP_LEFT_X_END and unsigned(Hcount) >= TOP_LEFT_X_START then
				temp_col_count := (unsigned(Hcount) - TOP_LEFT_X_START)/2;
				show_image<='1';
			else 
				temp_col_count := (others => '0');
				show_image<='0';
			end if;
		elsif (input="010") then --show image at top right
			if unsigned(Hcount) <= TOP_RIGHT_X_END and unsigned(Hcount) >= TOP_RIGHT_X_START then
				temp_col_count := (unsigned(Hcount) - TOP_RIGHT_X_START)/2;
				show_image<='1';
			else 
				temp_col_count := (others => '0');
				show_image<='0';
			end if;
		elsif (input="011") then --show image at bottom left
			if unsigned(Hcount) <= BOTTOM_LEFT_X_END and unsigned(Hcount) >= BOTTOM_LEFT_X_START then
				temp_col_count := (unsigned(Hcount) - BOTTOM_LEFT_X_START)/2;
				show_image<='1';
			else 
				temp_col_count := (others => '0');
				show_image<='0';
			end if;
		elsif (input="100") then --show image at bottom right
			if unsigned(Hcount) <= BOTTOM_RIGHT_X_END and unsigned(Hcount) >= BOTTOM_RIGHT_X_START then
				temp_col_count := (unsigned(Hcount) - BOTTOM_RIGHT_X_START)/2;
				show_image<='1';
			else 
				temp_col_count := (others => '0');
				show_image<='0';
			end if;
		else							--show at the center
			if move_sel = "010" then
				if unsigned(Hcount) <= CENTERED_X_END - unsigned(vmove_o)/2 and unsigned(Hcount) >= CENTERED_X_START - unsigned(vmove_o)/2 then
					temp_col_count := (unsigned(Hcount) - CENTERED_X_START)/2;
					show_image<='1';
				else 
					temp_col_count := (others => '0');
					show_image<='0';
				end if;	
			elsif move_sel = "001" then
				if unsigned(Hcount) <= CENTERED_X_END + unsigned(vmove_o)/2 and unsigned(Hcount) >= CENTERED_X_START + unsigned(vmove_o)/2 then
					temp_col_count := (unsigned(Hcount) - CENTERED_X_START)/2;
					show_image<='1';
				else 
					temp_col_count := (others => '0');
					show_image<='0';
				end if;	
			else
				if unsigned(Hcount) <= CENTERED_X_END and unsigned(Hcount) >= CENTERED_X_START then
					temp_col_count := (unsigned(Hcount) - CENTERED_X_START)/2;
					show_image<='1';
				else 
					temp_col_count := (others => '0');
					show_image<='0';
				end if;	
			end if;	
		end if;
		column_count <= std_logic_vector(temp_col_count(5 downto 0));
   end process; 
end behv;