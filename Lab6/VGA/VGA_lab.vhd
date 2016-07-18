library ieee;
use ieee.std_logic_1164.all;
use work.vga_lib.all;

entity vga_lab is 
port (
	clk50Mhz 	: in std_logic;
	switch 		: in std_logic_vector(9 downto 0);
	button		: in std_logic_vector(2 downto 0);		
	vga_red		: out std_logic_vector(3 downto 0);
	vga_blue		: out std_logic_vector(3 downto 0);
	vga_green	: out std_logic_vector(3 downto 0);
	vga_v			: buffer std_logic;
	vga_h			: buffer std_logic);
end vga_lab;

architecture bhv of vga_lab is

signal clk25Mhz : std_logic;
signal Hcount, Vcount : std_logic_vector(COUNT_WIDTH-1 downto 0);
signal ROM_address : std_logic_vector(11 downto 0);
signal ROM_address1 : std_logic_vector(13 downto 0);
signal Video_On, show_row, show_col : std_logic;
signal show_row1, show_col1 : std_logic;
signal show_row2, show_col2 : std_logic;
signal get_q, get_q1, get_q2, get_q3 : std_logic_vector(11 downto 0);
signal rst : std_logic;
signal check_switch 	: std_logic;
signal check_switch1	: std_logic;
signal move_sel : std_logic_vector(2 downto 0);
signal vmove, hmove : std_logic_vector(COUNT_WIDTH-1 downto 0);

begin
	rst <= switch(0);
	check_switch <= switch(9);
	check_switch1 <= switch(8);
	move_sel <= switch(7 downto 5);
	
	U_PCLK: entity work.pixel_clock port map (
		rst => rst,
		clk => Clk50Mhz,
		pixel_clock => clk25Mhz);
	
	U_VSG: entity work.vga_sync_gen port map (
		clock_input => clk25Mhz,
		rst => rst,
		Hcount => Hcount,
		Vcount => Vcount,
		Horiz_Sync => vga_h,
		Vert_Sync => vga_v,
		Video_On => Video_On);
	
	U_BRC: entity work.block_row_counter port map (
		move_sel => move_sel,
		hmove_o => hmove,
		input => not button(2 downto 0),
		Vcount => Vcount,
		row_count => ROM_address(11 downto 6),
		show_image => show_row1);
	
	U_BCC: entity work.block_column_counter port map (
		move_sel => move_sel,
		vmove_o => vmove,
		input => not button(2 downto 0),
		Hcount => Hcount,
		column_count => ROM_address(5 downto 0),
		show_image => show_col1);
	
	U_BRC1: entity work.block_row_counter1 port map (
		input => not button(2 downto 0),
		Vcount => Vcount,
		row_count => ROM_address1(13 downto 7),
		show_image => show_row2);
	
	U_BCC1: entity work.block_column_counter1 port map (
		input => not button(2 downto 0),
		Hcount => Hcount,
		column_count => ROM_address1(6 downto 0),
		show_image => show_col2);
	
	U_MOVEV: entity work.move_vert port map (
		Vert_Sync => vga_v,
		vmove_out => vmove);
	
	U_MOVEH: entity work.move_hor port map (
		Horiz_Sync => vga_h,
		hmove_out => hmove);
	
	U_VGAROM1: entity work.vga_rom port map (
		address => ROM_address,
		clock => clk25Mhz,
		q => get_q1(11 downto 0));
		
	U_VGAROM2: entity work.vga_rom1 port map (
		address => ROM_address1,
		clock => clk25Mhz,
		q => get_q2(11 downto 0));
		
	U_VGAROM3: entity work.vga_rom2 port map (
		address => ROM_address,
		clock => clk25Mhz,
		q => get_q3(11 downto 0));
	
	process (check_switch)
	begin
		if check_switch = '0' then
			if check_switch1 = '0' then
				get_q <= get_q1;
			else
				get_q <= get_q3;
			end if;
			show_col <= show_col1;
			show_row <= show_row1;
		else 
			get_q <= get_q2;
			show_col <= show_col2;
			show_row <= show_row2;
		end if;
	end process;
	
	process(clk25Mhz,get_q)
	begin
		if(show_col = '1' and show_row = '1' and Video_On = '1') then
			vga_red <= get_q(11 downto 8);
			vga_green <= get_q(7 downto 4);
			vga_blue <= get_q(3 downto 0);
		else
			vga_red <= (others => '0');
			vga_green <= (others => '0');
			vga_blue <= (others => '0');
		end if;
	end process;
end bhv;