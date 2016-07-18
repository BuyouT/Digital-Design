-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "03/17/2016 08:47:19"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_lab IS
    PORT (
	clk50Mhz : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(2 DOWNTO 0);
	vga_red : OUT std_logic_vector(3 DOWNTO 0);
	vga_blue : OUT std_logic_vector(3 DOWNTO 0);
	vga_green : OUT std_logic_vector(3 DOWNTO 0);
	vga_v : BUFFER std_logic;
	vga_h : BUFFER std_logic
	);
END vga_lab;

-- Design Ports Information
-- switch[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[1]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_red[3]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[0]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[1]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[2]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_blue[3]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[0]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[2]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_green[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_v	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vga_h	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50Mhz	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_lab IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50Mhz : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_vga_red : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_blue : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_green : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_vga_v : std_logic;
SIGNAL ww_vga_h : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_VSG|process_1~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_PCLK|toggle~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_VSG|process_1~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \vga_red[0]~output_o\ : std_logic;
SIGNAL \vga_red[1]~output_o\ : std_logic;
SIGNAL \vga_red[2]~output_o\ : std_logic;
SIGNAL \vga_red[3]~output_o\ : std_logic;
SIGNAL \vga_blue[0]~output_o\ : std_logic;
SIGNAL \vga_blue[1]~output_o\ : std_logic;
SIGNAL \vga_blue[2]~output_o\ : std_logic;
SIGNAL \vga_blue[3]~output_o\ : std_logic;
SIGNAL \vga_green[0]~output_o\ : std_logic;
SIGNAL \vga_green[1]~output_o\ : std_logic;
SIGNAL \vga_green[2]~output_o\ : std_logic;
SIGNAL \vga_green[3]~output_o\ : std_logic;
SIGNAL \vga_v~output_o\ : std_logic;
SIGNAL \vga_h~output_o\ : std_logic;
SIGNAL \button[2]~input_o\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \clk50Mhz~input_o\ : std_logic;
SIGNAL \U_PCLK|toggle~0_combout\ : std_logic;
SIGNAL \U_PCLK|toggle~feeder_combout\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \U_PCLK|toggle~q\ : std_logic;
SIGNAL \U_PCLK|toggle~clkctrl_outclk\ : std_logic;
SIGNAL \U_VSG|tempVcount[0]~10_combout\ : std_logic;
SIGNAL \U_VSG|Add0~0_combout\ : std_logic;
SIGNAL \U_VSG|Add0~1\ : std_logic;
SIGNAL \U_VSG|Add0~2_combout\ : std_logic;
SIGNAL \U_VSG|Add0~3\ : std_logic;
SIGNAL \U_VSG|Add0~4_combout\ : std_logic;
SIGNAL \U_VSG|Add0~5\ : std_logic;
SIGNAL \U_VSG|Add0~6_combout\ : std_logic;
SIGNAL \U_VSG|Add0~7\ : std_logic;
SIGNAL \U_VSG|Add0~8_combout\ : std_logic;
SIGNAL \U_VSG|Equal0~0_combout\ : std_logic;
SIGNAL \U_VSG|Add0~9\ : std_logic;
SIGNAL \U_VSG|Add0~10_combout\ : std_logic;
SIGNAL \U_VSG|Add0~13\ : std_logic;
SIGNAL \U_VSG|Add0~14_combout\ : std_logic;
SIGNAL \U_VSG|Add0~15\ : std_logic;
SIGNAL \U_VSG|Add0~16_combout\ : std_logic;
SIGNAL \U_VSG|tempHcount~0_combout\ : std_logic;
SIGNAL \U_VSG|Add0~17\ : std_logic;
SIGNAL \U_VSG|Add0~18_combout\ : std_logic;
SIGNAL \U_VSG|tempHcount~1_combout\ : std_logic;
SIGNAL \U_VSG|Equal0~1_combout\ : std_logic;
SIGNAL \U_VSG|Equal0~2_combout\ : std_logic;
SIGNAL \U_VSG|tempHcount~2_combout\ : std_logic;
SIGNAL \U_VSG|Add0~11\ : std_logic;
SIGNAL \U_VSG|Add0~12_combout\ : std_logic;
SIGNAL \U_VSG|Equal1~0_combout\ : std_logic;
SIGNAL \U_VSG|Equal1~1_combout\ : std_logic;
SIGNAL \U_VSG|tempVcount[8]~27\ : std_logic;
SIGNAL \U_VSG|tempVcount[9]~28_combout\ : std_logic;
SIGNAL \U_VSG|Equal2~2_combout\ : std_logic;
SIGNAL \U_VSG|Equal2~1_combout\ : std_logic;
SIGNAL \U_VSG|Equal2~0_combout\ : std_logic;
SIGNAL \U_VSG|tempVcount[4]~30_combout\ : std_logic;
SIGNAL \U_VSG|tempVcount[0]~11\ : std_logic;
SIGNAL \U_VSG|tempVcount[1]~12_combout\ : std_logic;
SIGNAL \U_VSG|tempVcount[1]~13\ : std_logic;
SIGNAL \U_VSG|tempVcount[2]~14_combout\ : std_logic;
SIGNAL \U_VSG|tempVcount[2]~15\ : std_logic;
SIGNAL \U_VSG|tempVcount[3]~16_combout\ : std_logic;
SIGNAL \U_VSG|tempVcount[3]~17\ : std_logic;
SIGNAL \U_VSG|tempVcount[4]~18_combout\ : std_logic;
SIGNAL \U_VSG|tempVcount[4]~19\ : std_logic;
SIGNAL \U_VSG|tempVcount[5]~20_combout\ : std_logic;
SIGNAL \U_VSG|tempVcount[5]~21\ : std_logic;
SIGNAL \U_VSG|tempVcount[6]~22_combout\ : std_logic;
SIGNAL \U_VSG|tempVcount[6]~23\ : std_logic;
SIGNAL \U_VSG|tempVcount[7]~24_combout\ : std_logic;
SIGNAL \U_VSG|tempVcount[7]~25\ : std_logic;
SIGNAL \U_VSG|tempVcount[8]~26_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[6]~1_combout\ : std_logic;
SIGNAL \U_BRC1|LessThan3~0_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[6]~2_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[6]~0_combout\ : std_logic;
SIGNAL \show_row~0_combout\ : std_logic;
SIGNAL \U_BRC1|LessThan0~0_combout\ : std_logic;
SIGNAL \show_row~4_combout\ : std_logic;
SIGNAL \show_row~5_combout\ : std_logic;
SIGNAL \show_row~1_combout\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \U_BRC|row_count[3]~6_combout\ : std_logic;
SIGNAL \U_VSG|process_1~5_combout\ : std_logic;
SIGNAL \U_VSG|process_1~6_combout\ : std_logic;
SIGNAL \U_VSG|process_1~4_combout\ : std_logic;
SIGNAL \U_VSG|process_1~0_combout\ : std_logic;
SIGNAL \U_VSG|process_1~0clkctrl_outclk\ : std_logic;
SIGNAL \U_MOVEH|temp_count[0]~10_combout\ : std_logic;
SIGNAL \U_MOVEH|LessThan0~1_combout\ : std_logic;
SIGNAL \U_MOVEH|LessThan0~0_combout\ : std_logic;
SIGNAL \U_MOVEH|LessThan0~2_combout\ : std_logic;
SIGNAL \U_MOVEH|temp_count[0]~11\ : std_logic;
SIGNAL \U_MOVEH|temp_count[1]~12_combout\ : std_logic;
SIGNAL \U_MOVEH|temp_count[1]~13\ : std_logic;
SIGNAL \U_MOVEH|temp_count[2]~14_combout\ : std_logic;
SIGNAL \U_MOVEH|temp_count[2]~15\ : std_logic;
SIGNAL \U_MOVEH|temp_count[3]~16_combout\ : std_logic;
SIGNAL \U_MOVEH|temp_count[3]~17\ : std_logic;
SIGNAL \U_MOVEH|temp_count[4]~18_combout\ : std_logic;
SIGNAL \U_MOVEH|temp_count[4]~19\ : std_logic;
SIGNAL \U_MOVEH|temp_count[5]~20_combout\ : std_logic;
SIGNAL \U_MOVEH|temp_count[5]~21\ : std_logic;
SIGNAL \U_MOVEH|temp_count[6]~22_combout\ : std_logic;
SIGNAL \U_MOVEH|temp_count[6]~23\ : std_logic;
SIGNAL \U_MOVEH|temp_count[7]~24_combout\ : std_logic;
SIGNAL \U_MOVEH|temp_count[7]~25\ : std_logic;
SIGNAL \U_MOVEH|temp_count[8]~26_combout\ : std_logic;
SIGNAL \U_MOVEH|temp_count[8]~27\ : std_logic;
SIGNAL \U_MOVEH|temp_count[9]~28_combout\ : std_logic;
SIGNAL \U_BRC|Add4~1\ : std_logic;
SIGNAL \U_BRC|Add4~3\ : std_logic;
SIGNAL \U_BRC|Add4~5\ : std_logic;
SIGNAL \U_BRC|Add4~7\ : std_logic;
SIGNAL \U_BRC|Add4~9\ : std_logic;
SIGNAL \U_BRC|Add4~11\ : std_logic;
SIGNAL \U_BRC|Add4~13\ : std_logic;
SIGNAL \U_BRC|Add4~15\ : std_logic;
SIGNAL \U_BRC|Add4~16_combout\ : std_logic;
SIGNAL \U_BRC|Add4~14_combout\ : std_logic;
SIGNAL \U_BRC|Add4~12_combout\ : std_logic;
SIGNAL \U_BRC|Add4~10_combout\ : std_logic;
SIGNAL \U_BRC|Add4~8_combout\ : std_logic;
SIGNAL \U_BRC|Add4~6_combout\ : std_logic;
SIGNAL \U_BRC|Add4~4_combout\ : std_logic;
SIGNAL \U_BRC|Add4~2_combout\ : std_logic;
SIGNAL \U_BRC|Add4~0_combout\ : std_logic;
SIGNAL \U_BRC|LessThan7~1_cout\ : std_logic;
SIGNAL \U_BRC|LessThan7~3_cout\ : std_logic;
SIGNAL \U_BRC|LessThan7~5_cout\ : std_logic;
SIGNAL \U_BRC|LessThan7~7_cout\ : std_logic;
SIGNAL \U_BRC|LessThan7~9_cout\ : std_logic;
SIGNAL \U_BRC|LessThan7~11_cout\ : std_logic;
SIGNAL \U_BRC|LessThan7~13_cout\ : std_logic;
SIGNAL \U_BRC|LessThan7~15_cout\ : std_logic;
SIGNAL \U_BRC|LessThan7~16_combout\ : std_logic;
SIGNAL \U_BRC|Add3~1\ : std_logic;
SIGNAL \U_BRC|Add3~3\ : std_logic;
SIGNAL \U_BRC|Add3~5\ : std_logic;
SIGNAL \U_BRC|Add3~7\ : std_logic;
SIGNAL \U_BRC|Add3~9\ : std_logic;
SIGNAL \U_BRC|Add3~11\ : std_logic;
SIGNAL \U_BRC|Add3~13\ : std_logic;
SIGNAL \U_BRC|Add3~15\ : std_logic;
SIGNAL \U_BRC|Add3~16_combout\ : std_logic;
SIGNAL \U_BRC|Add3~14_combout\ : std_logic;
SIGNAL \U_BRC|Add3~12_combout\ : std_logic;
SIGNAL \U_BRC|Add3~10_combout\ : std_logic;
SIGNAL \U_BRC|Add3~8_combout\ : std_logic;
SIGNAL \U_BRC|Add3~6_combout\ : std_logic;
SIGNAL \U_BRC|Add3~0_combout\ : std_logic;
SIGNAL \U_BRC|Add3~2_combout\ : std_logic;
SIGNAL \U_BRC|LessThan6~2_combout\ : std_logic;
SIGNAL \U_BRC|Add3~4_combout\ : std_logic;
SIGNAL \U_BRC|LessThan6~3_combout\ : std_logic;
SIGNAL \U_BRC|LessThan6~4_combout\ : std_logic;
SIGNAL \U_BRC|LessThan6~8_combout\ : std_logic;
SIGNAL \U_BRC|LessThan6~5_combout\ : std_logic;
SIGNAL \U_BRC|LessThan6~6_combout\ : std_logic;
SIGNAL \U_BRC|LessThan6~7_combout\ : std_logic;
SIGNAL \U_BRC|row_count[3]~3_combout\ : std_logic;
SIGNAL \U_BRC|row_count[3]~4_combout\ : std_logic;
SIGNAL \U_BRC|Add2~1_combout\ : std_logic;
SIGNAL \U_BRC|Add2~2_combout\ : std_logic;
SIGNAL \U_BRC|LessThan5~6_combout\ : std_logic;
SIGNAL \U_BRC|LessThan5~8_combout\ : std_logic;
SIGNAL \U_BRC|LessThan5~14_combout\ : std_logic;
SIGNAL \U_BRC|LessThan5~10_combout\ : std_logic;
SIGNAL \U_BRC|LessThan5~11_combout\ : std_logic;
SIGNAL \U_BRC|LessThan5~12_combout\ : std_logic;
SIGNAL \U_BRC|LessThan5~9_combout\ : std_logic;
SIGNAL \U_BRC|LessThan5~15_combout\ : std_logic;
SIGNAL \U_BRC|LessThan5~7_combout\ : std_logic;
SIGNAL \U_BRC|LessThan5~13_combout\ : std_logic;
SIGNAL \U_BRC|Equal4~0_combout\ : std_logic;
SIGNAL \U_BRC|show_image~0_combout\ : std_logic;
SIGNAL \U_BRC|Add2~0_combout\ : std_logic;
SIGNAL \U_BRC|Add2~3_combout\ : std_logic;
SIGNAL \U_BRC|LessThan4~1_cout\ : std_logic;
SIGNAL \U_BRC|LessThan4~3_cout\ : std_logic;
SIGNAL \U_BRC|LessThan4~5_cout\ : std_logic;
SIGNAL \U_BRC|LessThan4~7_cout\ : std_logic;
SIGNAL \U_BRC|LessThan4~9_cout\ : std_logic;
SIGNAL \U_BRC|LessThan4~11_cout\ : std_logic;
SIGNAL \U_BRC|LessThan4~13_cout\ : std_logic;
SIGNAL \U_BRC|LessThan4~15_cout\ : std_logic;
SIGNAL \U_BRC|LessThan4~16_combout\ : std_logic;
SIGNAL \U_BRC|show_image~1_combout\ : std_logic;
SIGNAL \U_BRC|show_image~2_combout\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \U_BRC|row_count[3]~2_combout\ : std_logic;
SIGNAL \U_BRC|process_0~0_combout\ : std_logic;
SIGNAL \U_BRC|process_0~1_combout\ : std_logic;
SIGNAL \show_row~2_combout\ : std_logic;
SIGNAL \show_row~3_combout\ : std_logic;
SIGNAL \process_1~5_combout\ : std_logic;
SIGNAL \process_1~6_combout\ : std_logic;
SIGNAL \process_1~8_combout\ : std_logic;
SIGNAL \process_1~7_combout\ : std_logic;
SIGNAL \U_BCC1|LessThan3~0_combout\ : std_logic;
SIGNAL \U_BCC1|LessThan3~1_combout\ : std_logic;
SIGNAL \process_1~9_combout\ : std_logic;
SIGNAL \U_BCC1|Equal0~0_combout\ : std_logic;
SIGNAL \process_1~10_combout\ : std_logic;
SIGNAL \process_1~2_combout\ : std_logic;
SIGNAL \process_1~3_combout\ : std_logic;
SIGNAL \U_BCC|process_0~0_combout\ : std_logic;
SIGNAL \U_BCC|process_0~1_combout\ : std_logic;
SIGNAL \process_1~4_combout\ : std_logic;
SIGNAL \process_1~11_combout\ : std_logic;
SIGNAL \U_BCC|Equal4~0_combout\ : std_logic;
SIGNAL \U_VSG|process_1~2_combout\ : std_logic;
SIGNAL \U_BRC1|LessThan2~0_combout\ : std_logic;
SIGNAL \U_VSG|process_1~1_combout\ : std_logic;
SIGNAL \U_VSG|process_1~1clkctrl_outclk\ : std_logic;
SIGNAL \U_MOVEV|temp_count[0]~10_combout\ : std_logic;
SIGNAL \U_MOVEV|LessThan0~0_combout\ : std_logic;
SIGNAL \U_MOVEV|LessThan0~1_combout\ : std_logic;
SIGNAL \U_MOVEV|LessThan0~2_combout\ : std_logic;
SIGNAL \U_MOVEV|temp_count[0]~11\ : std_logic;
SIGNAL \U_MOVEV|temp_count[1]~12_combout\ : std_logic;
SIGNAL \U_MOVEV|temp_count[1]~13\ : std_logic;
SIGNAL \U_MOVEV|temp_count[2]~14_combout\ : std_logic;
SIGNAL \U_MOVEV|temp_count[2]~15\ : std_logic;
SIGNAL \U_MOVEV|temp_count[3]~16_combout\ : std_logic;
SIGNAL \U_MOVEV|temp_count[3]~17\ : std_logic;
SIGNAL \U_MOVEV|temp_count[4]~18_combout\ : std_logic;
SIGNAL \U_MOVEV|temp_count[4]~19\ : std_logic;
SIGNAL \U_MOVEV|temp_count[5]~20_combout\ : std_logic;
SIGNAL \U_MOVEV|temp_count[5]~21\ : std_logic;
SIGNAL \U_MOVEV|temp_count[6]~22_combout\ : std_logic;
SIGNAL \U_MOVEV|temp_count[6]~23\ : std_logic;
SIGNAL \U_MOVEV|temp_count[7]~24_combout\ : std_logic;
SIGNAL \U_MOVEV|temp_count[7]~25\ : std_logic;
SIGNAL \U_MOVEV|temp_count[8]~26_combout\ : std_logic;
SIGNAL \U_MOVEV|temp_count[8]~27\ : std_logic;
SIGNAL \U_MOVEV|temp_count[9]~28_combout\ : std_logic;
SIGNAL \U_BCC|show_image~1_combout\ : std_logic;
SIGNAL \U_BCC|Add1~0_combout\ : std_logic;
SIGNAL \U_BCC|Add1~1_combout\ : std_logic;
SIGNAL \U_BCC|LessThan4~1_cout\ : std_logic;
SIGNAL \U_BCC|LessThan4~3_cout\ : std_logic;
SIGNAL \U_BCC|LessThan4~5_cout\ : std_logic;
SIGNAL \U_BCC|LessThan4~7_cout\ : std_logic;
SIGNAL \U_BCC|LessThan4~9_cout\ : std_logic;
SIGNAL \U_BCC|LessThan4~11_cout\ : std_logic;
SIGNAL \U_BCC|LessThan4~13_cout\ : std_logic;
SIGNAL \U_BCC|LessThan4~15_cout\ : std_logic;
SIGNAL \U_BCC|LessThan4~17_cout\ : std_logic;
SIGNAL \U_BCC|LessThan4~18_combout\ : std_logic;
SIGNAL \U_BCC|show_image~0_combout\ : std_logic;
SIGNAL \U_BCC|LessThan5~0_combout\ : std_logic;
SIGNAL \U_BCC|LessThan5~1_combout\ : std_logic;
SIGNAL \U_BCC|LessThan5~2_combout\ : std_logic;
SIGNAL \U_BCC|show_image~5_combout\ : std_logic;
SIGNAL \U_BCC|show_image~6_combout\ : std_logic;
SIGNAL \U_BCC|show_image~3_combout\ : std_logic;
SIGNAL \U_BCC|show_image~4_combout\ : std_logic;
SIGNAL \U_BCC|show_image~2_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \U_BCC|process_0~2_combout\ : std_logic;
SIGNAL \U_BCC|Equal5~0_combout\ : std_logic;
SIGNAL \process_1~12_combout\ : std_logic;
SIGNAL \U_BCC|Add3~1\ : std_logic;
SIGNAL \U_BCC|Add3~3\ : std_logic;
SIGNAL \U_BCC|Add3~5\ : std_logic;
SIGNAL \U_BCC|Add3~7\ : std_logic;
SIGNAL \U_BCC|Add3~9\ : std_logic;
SIGNAL \U_BCC|Add3~11\ : std_logic;
SIGNAL \U_BCC|Add3~13\ : std_logic;
SIGNAL \U_BCC|Add3~15\ : std_logic;
SIGNAL \U_BCC|Add3~17\ : std_logic;
SIGNAL \U_BCC|Add3~18_combout\ : std_logic;
SIGNAL \U_BCC|Add3~16_combout\ : std_logic;
SIGNAL \U_BCC|Add3~14_combout\ : std_logic;
SIGNAL \U_BCC|Add3~12_combout\ : std_logic;
SIGNAL \U_BCC|Add3~10_combout\ : std_logic;
SIGNAL \U_BCC|Add3~8_combout\ : std_logic;
SIGNAL \U_BCC|Add3~6_combout\ : std_logic;
SIGNAL \U_BCC|Add3~4_combout\ : std_logic;
SIGNAL \U_BCC|Add3~2_combout\ : std_logic;
SIGNAL \U_BCC|Add3~0_combout\ : std_logic;
SIGNAL \U_BCC|LessThan6~1_cout\ : std_logic;
SIGNAL \U_BCC|LessThan6~3_cout\ : std_logic;
SIGNAL \U_BCC|LessThan6~5_cout\ : std_logic;
SIGNAL \U_BCC|LessThan6~7_cout\ : std_logic;
SIGNAL \U_BCC|LessThan6~9_cout\ : std_logic;
SIGNAL \U_BCC|LessThan6~11_cout\ : std_logic;
SIGNAL \U_BCC|LessThan6~13_cout\ : std_logic;
SIGNAL \U_BCC|LessThan6~15_cout\ : std_logic;
SIGNAL \U_BCC|LessThan6~17_cout\ : std_logic;
SIGNAL \U_BCC|LessThan6~18_combout\ : std_logic;
SIGNAL \U_BCC|Add4~1\ : std_logic;
SIGNAL \U_BCC|Add4~3\ : std_logic;
SIGNAL \U_BCC|Add4~5\ : std_logic;
SIGNAL \U_BCC|Add4~7\ : std_logic;
SIGNAL \U_BCC|Add4~9\ : std_logic;
SIGNAL \U_BCC|Add4~11\ : std_logic;
SIGNAL \U_BCC|Add4~13\ : std_logic;
SIGNAL \U_BCC|Add4~15\ : std_logic;
SIGNAL \U_BCC|Add4~17\ : std_logic;
SIGNAL \U_BCC|Add4~18_combout\ : std_logic;
SIGNAL \U_BCC|Add4~16_combout\ : std_logic;
SIGNAL \U_BCC|Add4~14_combout\ : std_logic;
SIGNAL \U_BCC|Add4~12_combout\ : std_logic;
SIGNAL \U_BCC|Add4~10_combout\ : std_logic;
SIGNAL \U_BCC|Add4~8_combout\ : std_logic;
SIGNAL \U_BCC|Add4~6_combout\ : std_logic;
SIGNAL \U_BCC|Add4~4_combout\ : std_logic;
SIGNAL \U_BCC|Add4~2_combout\ : std_logic;
SIGNAL \U_BCC|Add4~0_combout\ : std_logic;
SIGNAL \U_BCC|LessThan7~1_cout\ : std_logic;
SIGNAL \U_BCC|LessThan7~3_cout\ : std_logic;
SIGNAL \U_BCC|LessThan7~5_cout\ : std_logic;
SIGNAL \U_BCC|LessThan7~7_cout\ : std_logic;
SIGNAL \U_BCC|LessThan7~9_cout\ : std_logic;
SIGNAL \U_BCC|LessThan7~11_cout\ : std_logic;
SIGNAL \U_BCC|LessThan7~13_cout\ : std_logic;
SIGNAL \U_BCC|LessThan7~15_cout\ : std_logic;
SIGNAL \U_BCC|LessThan7~17_cout\ : std_logic;
SIGNAL \U_BCC|LessThan7~18_combout\ : std_logic;
SIGNAL \process_1~13_combout\ : std_logic;
SIGNAL \process_1~14_combout\ : std_logic;
SIGNAL \process_1~15_combout\ : std_logic;
SIGNAL \process_1~16_combout\ : std_logic;
SIGNAL \U_BCC|Add5~0_combout\ : std_logic;
SIGNAL \U_BCC1|LessThan0~0_combout\ : std_logic;
SIGNAL \U_BCC|column_count[0]~0_combout\ : std_logic;
SIGNAL \U_BCC|column_count[5]~2_combout\ : std_logic;
SIGNAL \U_BCC|column_count[5]~1_combout\ : std_logic;
SIGNAL \U_BCC|column_count[5]~3_combout\ : std_logic;
SIGNAL \U_BCC|column_count[0]~4_combout\ : std_logic;
SIGNAL \U_BCC|Add5~2_combout\ : std_logic;
SIGNAL \U_BCC|Add5~1\ : std_logic;
SIGNAL \U_BCC|Add5~3_combout\ : std_logic;
SIGNAL \U_BCC|Add5~5_combout\ : std_logic;
SIGNAL \U_BCC|Add5~4\ : std_logic;
SIGNAL \U_BCC|Add5~6_combout\ : std_logic;
SIGNAL \U_BCC|Add5~8_combout\ : std_logic;
SIGNAL \U_BCC|Add5~7\ : std_logic;
SIGNAL \U_BCC|Add5~9_combout\ : std_logic;
SIGNAL \U_BCC|Add5~11_combout\ : std_logic;
SIGNAL \U_BCC|Add5~10\ : std_logic;
SIGNAL \U_BCC|Add5~12_combout\ : std_logic;
SIGNAL \U_BCC|Add5~14_combout\ : std_logic;
SIGNAL \U_BCC|Add5~13\ : std_logic;
SIGNAL \U_BCC|Add5~15_combout\ : std_logic;
SIGNAL \U_BCC|Add5~17_combout\ : std_logic;
SIGNAL \U_BRC|Add5~0_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[3]~3_combout\ : std_logic;
SIGNAL \U_BRC|Add0~2_combout\ : std_logic;
SIGNAL \U_BRC|Add0~3_combout\ : std_logic;
SIGNAL \U_BRC|Add0~4_combout\ : std_logic;
SIGNAL \U_BRC|Add0~0_combout\ : std_logic;
SIGNAL \U_BRC|Add0~5_combout\ : std_logic;
SIGNAL \U_BRC|row_count[3]~5_combout\ : std_logic;
SIGNAL \U_BRC|Add0~6_combout\ : std_logic;
SIGNAL \U_BRC|Add0~7_combout\ : std_logic;
SIGNAL \U_BRC|Add0~1\ : std_logic;
SIGNAL \U_BRC|Add0~8_combout\ : std_logic;
SIGNAL \U_BRC|Add0~10_combout\ : std_logic;
SIGNAL \U_BRC|Add5~1\ : std_logic;
SIGNAL \U_BRC|Add5~2_combout\ : std_logic;
SIGNAL \U_BRC|Add0~11_combout\ : std_logic;
SIGNAL \U_BRC|Add0~9\ : std_logic;
SIGNAL \U_BRC|Add0~12_combout\ : std_logic;
SIGNAL \U_BRC|Add0~14_combout\ : std_logic;
SIGNAL \U_BRC|Add5~3\ : std_logic;
SIGNAL \U_BRC|Add5~4_combout\ : std_logic;
SIGNAL \U_BRC|Add0~15_combout\ : std_logic;
SIGNAL \U_BRC|Add5~5\ : std_logic;
SIGNAL \U_BRC|Add5~6_combout\ : std_logic;
SIGNAL \U_BRC|Add0~13\ : std_logic;
SIGNAL \U_BRC|Add0~16_combout\ : std_logic;
SIGNAL \U_BRC|Add0~18_combout\ : std_logic;
SIGNAL \U_BRC|Add0~19_combout\ : std_logic;
SIGNAL \U_BRC|Add0~17\ : std_logic;
SIGNAL \U_BRC|Add0~20_combout\ : std_logic;
SIGNAL \U_BRC|Add0~22_combout\ : std_logic;
SIGNAL \U_BRC|Add5~7\ : std_logic;
SIGNAL \U_BRC|Add5~8_combout\ : std_logic;
SIGNAL \U_BRC|Add0~23_combout\ : std_logic;
SIGNAL \U_BRC|Add5~9\ : std_logic;
SIGNAL \U_BRC|Add5~10_combout\ : std_logic;
SIGNAL \U_BRC|Add0~21\ : std_logic;
SIGNAL \U_BRC|Add0~24_combout\ : std_logic;
SIGNAL \U_BRC|Add0~26_combout\ : std_logic;
SIGNAL \U_BRC|Add0~27_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \U_BRC|process_0~2_combout\ : std_logic;
SIGNAL \U_BRC1|Add0~1\ : std_logic;
SIGNAL \U_BRC1|Add0~3\ : std_logic;
SIGNAL \U_BRC1|Add0~5\ : std_logic;
SIGNAL \U_BRC1|Add0~7\ : std_logic;
SIGNAL \U_BRC1|Add0~9\ : std_logic;
SIGNAL \U_BRC1|Add0~11\ : std_logic;
SIGNAL \U_BRC1|Add0~12_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[6]~4_combout\ : std_logic;
SIGNAL \U_BRC1|Add1~1\ : std_logic;
SIGNAL \U_BRC1|Add1~3\ : std_logic;
SIGNAL \U_BRC1|Add1~5\ : std_logic;
SIGNAL \U_BRC1|Add1~7\ : std_logic;
SIGNAL \U_BRC1|Add1~9\ : std_logic;
SIGNAL \U_BRC1|Add1~11\ : std_logic;
SIGNAL \U_BRC1|Add1~12_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[6]~5_combout\ : std_logic;
SIGNAL \vga_green~0_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[0]~16_combout\ : std_logic;
SIGNAL \U_BCC1|Add1~0_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[0]~7_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[0]~6_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[0]~8_combout\ : std_logic;
SIGNAL \U_BCC1|Add1~1\ : std_logic;
SIGNAL \U_BCC1|Add1~2_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[1]~9_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[1]~17_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[1]~10_combout\ : std_logic;
SIGNAL \U_BCC1|Add1~3\ : std_logic;
SIGNAL \U_BCC1|Add1~4_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[2]~11_combout\ : std_logic;
SIGNAL \U_BCC1|Add1~5\ : std_logic;
SIGNAL \U_BCC1|Add1~6_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[3]~18_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[3]~12_combout\ : std_logic;
SIGNAL \U_BCC1|Add1~7\ : std_logic;
SIGNAL \U_BCC1|Add1~8_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[4]~13_combout\ : std_logic;
SIGNAL \U_BCC1|Add1~9\ : std_logic;
SIGNAL \U_BCC1|Add1~10_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[5]~14_combout\ : std_logic;
SIGNAL \U_BCC1|Add1~11\ : std_logic;
SIGNAL \U_BCC1|Add1~12_combout\ : std_logic;
SIGNAL \U_BCC1|column_count[6]~15_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[0]~6_combout\ : std_logic;
SIGNAL \U_BRC1|Add0~0_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[0]~7_combout\ : std_logic;
SIGNAL \U_BRC1|Add1~0_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[0]~8_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[0]~9_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[0]~10_combout\ : std_logic;
SIGNAL \U_BRC1|Add0~2_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[1]~12_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[5]~11_combout\ : std_logic;
SIGNAL \U_BRC1|Add1~2_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[1]~13_combout\ : std_logic;
SIGNAL \U_BRC1|Add1~4_combout\ : std_logic;
SIGNAL \U_BRC1|Add0~4_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[2]~14_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[2]~15_combout\ : std_logic;
SIGNAL \U_BRC1|Add1~6_combout\ : std_logic;
SIGNAL \U_BRC1|Add0~6_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[3]~16_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[3]~17_combout\ : std_logic;
SIGNAL \U_BRC1|Add1~8_combout\ : std_logic;
SIGNAL \U_BRC1|Add0~8_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[4]~18_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[4]~19_combout\ : std_logic;
SIGNAL \U_BRC1|Add0~10_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[5]~20_combout\ : std_logic;
SIGNAL \U_BRC1|Add1~10_combout\ : std_logic;
SIGNAL \U_BRC1|row_count[5]~21_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \vga_red~0_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a20~portadataout\ : std_logic;
SIGNAL \vga_red~1_combout\ : std_logic;
SIGNAL \vga_red~2_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a9~portadataout\ : std_logic;
SIGNAL \vga_red~3_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a21~portadataout\ : std_logic;
SIGNAL \vga_red~4_combout\ : std_logic;
SIGNAL \vga_red~5_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a22~portadataout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a10~portadataout\ : std_logic;
SIGNAL \vga_red~6_combout\ : std_logic;
SIGNAL \vga_red~7_combout\ : std_logic;
SIGNAL \vga_red~8_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a23~portadataout\ : std_logic;
SIGNAL \vga_red~9_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a11~portadataout\ : std_logic;
SIGNAL \vga_red~10_combout\ : std_logic;
SIGNAL \vga_red~11_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \vga_blue~0_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a12~portadataout\ : std_logic;
SIGNAL \vga_blue~1_combout\ : std_logic;
SIGNAL \vga_blue~2_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a13~portadataout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a1~portadataout\ : std_logic;
SIGNAL \vga_blue~3_combout\ : std_logic;
SIGNAL \vga_blue~4_combout\ : std_logic;
SIGNAL \vga_blue~5_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a14~portadataout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a2~portadataout\ : std_logic;
SIGNAL \vga_blue~6_combout\ : std_logic;
SIGNAL \vga_blue~7_combout\ : std_logic;
SIGNAL \vga_blue~8_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a15~portadataout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a3~portadataout\ : std_logic;
SIGNAL \vga_blue~9_combout\ : std_logic;
SIGNAL \vga_blue~10_combout\ : std_logic;
SIGNAL \vga_blue~11_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a16~portadataout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a4~portadataout\ : std_logic;
SIGNAL \vga_green~1_combout\ : std_logic;
SIGNAL \vga_green~2_combout\ : std_logic;
SIGNAL \vga_green~3_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a5~portadataout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a17~portadataout\ : std_logic;
SIGNAL \vga_green~4_combout\ : std_logic;
SIGNAL \vga_green~5_combout\ : std_logic;
SIGNAL \vga_green~6_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a6~portadataout\ : std_logic;
SIGNAL \vga_green~7_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a18~portadataout\ : std_logic;
SIGNAL \vga_green~8_combout\ : std_logic;
SIGNAL \vga_green~9_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a19~portadataout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a7~portadataout\ : std_logic;
SIGNAL \vga_green~10_combout\ : std_logic;
SIGNAL \vga_green~11_combout\ : std_logic;
SIGNAL \vga_green~12_combout\ : std_logic;
SIGNAL \U_VGAROM2|altsyncram_component|auto_generated|address_reg_a\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \U_MOVEV|temp_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_VGAROM3|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_VGAROM1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \U_MOVEH|temp_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_VSG|tempVcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_VSG|tempHcount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_switch[0]~input_o\ : std_logic;
SIGNAL \U_VSG|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \U_BRC1|ALT_INV_row_count[6]~5_combout\ : std_logic;

BEGIN

ww_clk50Mhz <= clk50Mhz;
ww_switch <= switch;
ww_button <= button;
vga_red <= ww_vga_red;
vga_blue <= ww_vga_blue;
vga_green <= ww_vga_green;
vga_v <= ww_vga_v;
vga_h <= ww_vga_h;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);

\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\U_BRC|Add0~27_combout\ & \U_BRC|Add0~23_combout\ & \U_BRC|Add0~19_combout\ & \U_BRC|Add0~15_combout\ & \U_BRC|Add0~11_combout\ & \U_BRC|Add0~7_combout\ & 
\U_BCC|Add5~17_combout\ & \U_BCC|Add5~14_combout\ & \U_BCC|Add5~11_combout\ & \U_BCC|Add5~8_combout\ & \U_BCC|Add5~5_combout\ & \U_BCC|Add5~2_combout\);

\U_VGAROM3|altsyncram_component|auto_generated|q_a\(8) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\U_VGAROM1|altsyncram_component|auto_generated|q_a\(8) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a20~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\(0);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a9~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);

\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\ <= (\U_BRC|Add0~27_combout\ & \U_BRC|Add0~23_combout\ & \U_BRC|Add0~19_combout\ & \U_BRC|Add0~15_combout\ & \U_BRC|Add0~11_combout\ & \U_BRC|Add0~7_combout\ & 
\U_BCC|Add5~17_combout\ & \U_BCC|Add5~14_combout\ & \U_BCC|Add5~11_combout\ & \U_BCC|Add5~8_combout\ & \U_BCC|Add5~5_combout\ & \U_BCC|Add5~2_combout\);

\U_VGAROM3|altsyncram_component|auto_generated|q_a\(9) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(0);
\U_VGAROM1|altsyncram_component|auto_generated|q_a\(9) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\(1);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a21~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\(0);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a10~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);

\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\U_BRC|Add0~27_combout\ & \U_BRC|Add0~23_combout\ & \U_BRC|Add0~19_combout\ & \U_BRC|Add0~15_combout\ & \U_BRC|Add0~11_combout\ & \U_BRC|Add0~7_combout\ & 
\U_BCC|Add5~17_combout\ & \U_BCC|Add5~14_combout\ & \U_BCC|Add5~11_combout\ & \U_BCC|Add5~8_combout\ & \U_BCC|Add5~5_combout\ & \U_BCC|Add5~2_combout\);

\U_VGAROM3|altsyncram_component|auto_generated|q_a\(10) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\U_VGAROM1|altsyncram_component|auto_generated|q_a\(10) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a22~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a11~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);

\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\ <= (\U_BRC|Add0~27_combout\ & \U_BRC|Add0~23_combout\ & \U_BRC|Add0~19_combout\ & \U_BRC|Add0~15_combout\ & \U_BRC|Add0~11_combout\ & \U_BRC|Add0~7_combout\ & 
\U_BCC|Add5~17_combout\ & \U_BCC|Add5~14_combout\ & \U_BCC|Add5~11_combout\ & \U_BCC|Add5~8_combout\ & \U_BCC|Add5~5_combout\ & \U_BCC|Add5~2_combout\);

\U_VGAROM3|altsyncram_component|auto_generated|q_a\(11) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(0);
\U_VGAROM1|altsyncram_component|auto_generated|q_a\(11) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\(1);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a23~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\(0);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a0~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);

\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U_BRC|Add0~27_combout\ & \U_BRC|Add0~23_combout\ & \U_BRC|Add0~19_combout\ & \U_BRC|Add0~15_combout\ & \U_BRC|Add0~11_combout\ & \U_BRC|Add0~7_combout\ & 
\U_BCC|Add5~17_combout\ & \U_BCC|Add5~14_combout\ & \U_BCC|Add5~11_combout\ & \U_BCC|Add5~8_combout\ & \U_BCC|Add5~5_combout\ & \U_BCC|Add5~2_combout\);

\U_VGAROM3|altsyncram_component|auto_generated|q_a\(0) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U_VGAROM1|altsyncram_component|auto_generated|q_a\(0) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a12~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a1~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);

\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\ <= (\U_BRC|Add0~27_combout\ & \U_BRC|Add0~23_combout\ & \U_BRC|Add0~19_combout\ & \U_BRC|Add0~15_combout\ & \U_BRC|Add0~11_combout\ & \U_BRC|Add0~7_combout\ & 
\U_BCC|Add5~17_combout\ & \U_BCC|Add5~14_combout\ & \U_BCC|Add5~11_combout\ & \U_BCC|Add5~8_combout\ & \U_BCC|Add5~5_combout\ & \U_BCC|Add5~2_combout\);

\U_VGAROM3|altsyncram_component|auto_generated|q_a\(1) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(0);
\U_VGAROM1|altsyncram_component|auto_generated|q_a\(1) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\(1);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a13~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\(0);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a2~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);

\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\U_BRC|Add0~27_combout\ & \U_BRC|Add0~23_combout\ & \U_BRC|Add0~19_combout\ & \U_BRC|Add0~15_combout\ & \U_BRC|Add0~11_combout\ & \U_BRC|Add0~7_combout\ & 
\U_BCC|Add5~17_combout\ & \U_BCC|Add5~14_combout\ & \U_BCC|Add5~11_combout\ & \U_BCC|Add5~8_combout\ & \U_BCC|Add5~5_combout\ & \U_BCC|Add5~2_combout\);

\U_VGAROM3|altsyncram_component|auto_generated|q_a\(2) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\U_VGAROM1|altsyncram_component|auto_generated|q_a\(2) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a14~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\(0);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a3~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);

\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\ <= (\U_BRC|Add0~27_combout\ & \U_BRC|Add0~23_combout\ & \U_BRC|Add0~19_combout\ & \U_BRC|Add0~15_combout\ & \U_BRC|Add0~11_combout\ & \U_BRC|Add0~7_combout\ & 
\U_BCC|Add5~17_combout\ & \U_BCC|Add5~14_combout\ & \U_BCC|Add5~11_combout\ & \U_BCC|Add5~8_combout\ & \U_BCC|Add5~5_combout\ & \U_BCC|Add5~2_combout\);

\U_VGAROM3|altsyncram_component|auto_generated|q_a\(3) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(0);
\U_VGAROM1|altsyncram_component|auto_generated|q_a\(3) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\(1);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a15~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\(0);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a4~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);

\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\ <= (\U_BRC|Add0~27_combout\ & \U_BRC|Add0~23_combout\ & \U_BRC|Add0~19_combout\ & \U_BRC|Add0~15_combout\ & \U_BRC|Add0~11_combout\ & \U_BRC|Add0~7_combout\ & 
\U_BCC|Add5~17_combout\ & \U_BCC|Add5~14_combout\ & \U_BCC|Add5~11_combout\ & \U_BCC|Add5~8_combout\ & \U_BCC|Add5~5_combout\ & \U_BCC|Add5~2_combout\);

\U_VGAROM3|altsyncram_component|auto_generated|q_a\(4) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(0);
\U_VGAROM1|altsyncram_component|auto_generated|q_a\(4) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\(1);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a16~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\(0);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a5~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);

\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\ <= (\U_BRC|Add0~27_combout\ & \U_BRC|Add0~23_combout\ & \U_BRC|Add0~19_combout\ & \U_BRC|Add0~15_combout\ & \U_BRC|Add0~11_combout\ & \U_BRC|Add0~7_combout\ & 
\U_BCC|Add5~17_combout\ & \U_BCC|Add5~14_combout\ & \U_BCC|Add5~11_combout\ & \U_BCC|Add5~8_combout\ & \U_BCC|Add5~5_combout\ & \U_BCC|Add5~2_combout\);

\U_VGAROM3|altsyncram_component|auto_generated|q_a\(5) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(0);
\U_VGAROM1|altsyncram_component|auto_generated|q_a\(5) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\(1);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a17~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\(0);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a6~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);

\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\ <= (\U_BRC|Add0~27_combout\ & \U_BRC|Add0~23_combout\ & \U_BRC|Add0~19_combout\ & \U_BRC|Add0~15_combout\ & \U_BRC|Add0~11_combout\ & \U_BRC|Add0~7_combout\ & 
\U_BCC|Add5~17_combout\ & \U_BCC|Add5~14_combout\ & \U_BCC|Add5~11_combout\ & \U_BCC|Add5~8_combout\ & \U_BCC|Add5~5_combout\ & \U_BCC|Add5~2_combout\);

\U_VGAROM3|altsyncram_component|auto_generated|q_a\(6) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(0);
\U_VGAROM1|altsyncram_component|auto_generated|q_a\(6) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\(1);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a18~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\(0);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a7~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);

\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\ <= (\U_BRC|Add0~27_combout\ & \U_BRC|Add0~23_combout\ & \U_BRC|Add0~19_combout\ & \U_BRC|Add0~15_combout\ & \U_BRC|Add0~11_combout\ & \U_BRC|Add0~7_combout\ & 
\U_BCC|Add5~17_combout\ & \U_BCC|Add5~14_combout\ & \U_BCC|Add5~11_combout\ & \U_BCC|Add5~8_combout\ & \U_BCC|Add5~5_combout\ & \U_BCC|Add5~2_combout\);

\U_VGAROM3|altsyncram_component|auto_generated|q_a\(7) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(0);
\U_VGAROM1|altsyncram_component|auto_generated|q_a\(7) <= \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\(1);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\ <= (\U_BRC1|row_count[5]~21_combout\ & \U_BRC1|row_count[4]~19_combout\ & \U_BRC1|row_count[3]~17_combout\ & \U_BRC1|row_count[2]~15_combout\ & \U_BRC1|row_count[1]~13_combout\ & 
\U_BRC1|row_count[0]~10_combout\ & \U_BCC1|column_count[6]~15_combout\ & \U_BCC1|column_count[5]~14_combout\ & \U_BCC1|column_count[4]~13_combout\ & \U_BCC1|column_count[3]~12_combout\ & \U_BCC1|column_count[2]~11_combout\ & 
\U_BCC1|column_count[1]~10_combout\ & \U_BCC1|column_count[0]~8_combout\);

\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a19~portadataout\ <= \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\(0);

\U_VSG|process_1~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_VSG|process_1~0_combout\);

\U_PCLK|toggle~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_PCLK|toggle~q\);

\U_VSG|process_1~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_VSG|process_1~1_combout\);
\ALT_INV_switch[0]~input_o\ <= NOT \switch[0]~input_o\;
\U_VSG|ALT_INV_Equal1~1_combout\ <= NOT \U_VSG|Equal1~1_combout\;
\U_BRC1|ALT_INV_row_count[6]~5_combout\ <= NOT \U_BRC1|row_count[6]~5_combout\;

-- Location: IOOBUF_X41_Y23_N23
\vga_red[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_red~2_combout\,
	devoe => ww_devoe,
	o => \vga_red[0]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\vga_red[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_red~5_combout\,
	devoe => ww_devoe,
	o => \vga_red[1]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\vga_red[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_red~8_combout\,
	devoe => ww_devoe,
	o => \vga_red[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\vga_red[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_red~11_combout\,
	devoe => ww_devoe,
	o => \vga_red[3]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\vga_blue[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_blue~2_combout\,
	devoe => ww_devoe,
	o => \vga_blue[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\vga_blue[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_blue~5_combout\,
	devoe => ww_devoe,
	o => \vga_blue[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\vga_blue[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_blue~8_combout\,
	devoe => ww_devoe,
	o => \vga_blue[2]~output_o\);

-- Location: IOOBUF_X41_Y21_N9
\vga_blue[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_blue~11_combout\,
	devoe => ww_devoe,
	o => \vga_blue[3]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\vga_green[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_green~3_combout\,
	devoe => ww_devoe,
	o => \vga_green[0]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\vga_green[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_green~6_combout\,
	devoe => ww_devoe,
	o => \vga_green[1]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\vga_green[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_green~9_combout\,
	devoe => ww_devoe,
	o => \vga_green[2]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\vga_green[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_green~12_combout\,
	devoe => ww_devoe,
	o => \vga_green[3]~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\vga_v~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VSG|process_1~1_combout\,
	devoe => ww_devoe,
	o => \vga_v~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\vga_h~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_VSG|process_1~0_combout\,
	devoe => ww_devoe,
	o => \vga_h~output_o\);

-- Location: IOIBUF_X0_Y23_N1
\button[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(2),
	o => \button[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\button[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\button[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk50Mhz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50Mhz,
	o => \clk50Mhz~input_o\);

-- Location: LCCOMB_X24_Y17_N30
\U_PCLK|toggle~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_PCLK|toggle~0_combout\ = !\U_PCLK|toggle~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_PCLK|toggle~q\,
	combout => \U_PCLK|toggle~0_combout\);

-- Location: LCCOMB_X24_Y17_N26
\U_PCLK|toggle~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_PCLK|toggle~feeder_combout\ = \U_PCLK|toggle~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_PCLK|toggle~0_combout\,
	combout => \U_PCLK|toggle~feeder_combout\);

-- Location: IOIBUF_X0_Y24_N1
\switch[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: FF_X24_Y17_N27
\U_PCLK|toggle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50Mhz~input_o\,
	d => \U_PCLK|toggle~feeder_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_PCLK|toggle~q\);

-- Location: CLKCTRL_G19
\U_PCLK|toggle~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_PCLK|toggle~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_PCLK|toggle~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y7_N8
\U_VSG|tempVcount[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempVcount[0]~10_combout\ = \U_VSG|tempVcount\(0) $ (VCC)
-- \U_VSG|tempVcount[0]~11\ = CARRY(\U_VSG|tempVcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(0),
	datad => VCC,
	combout => \U_VSG|tempVcount[0]~10_combout\,
	cout => \U_VSG|tempVcount[0]~11\);

-- Location: LCCOMB_X24_Y17_N4
\U_VSG|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Add0~0_combout\ = \U_VSG|tempHcount\(0) $ (VCC)
-- \U_VSG|Add0~1\ = CARRY(\U_VSG|tempHcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(0),
	datad => VCC,
	combout => \U_VSG|Add0~0_combout\,
	cout => \U_VSG|Add0~1\);

-- Location: FF_X27_Y17_N21
\U_VSG|tempHcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~clkctrl_outclk\,
	asdata => \U_VSG|Add0~0_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempHcount\(0));

-- Location: LCCOMB_X24_Y17_N6
\U_VSG|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Add0~2_combout\ = (\U_VSG|tempHcount\(1) & (!\U_VSG|Add0~1\)) # (!\U_VSG|tempHcount\(1) & ((\U_VSG|Add0~1\) # (GND)))
-- \U_VSG|Add0~3\ = CARRY((!\U_VSG|Add0~1\) # (!\U_VSG|tempHcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(1),
	datad => VCC,
	cin => \U_VSG|Add0~1\,
	combout => \U_VSG|Add0~2_combout\,
	cout => \U_VSG|Add0~3\);

-- Location: FF_X27_Y17_N23
\U_VSG|tempHcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	asdata => \U_VSG|Add0~2_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempHcount\(1));

-- Location: LCCOMB_X24_Y17_N8
\U_VSG|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Add0~4_combout\ = (\U_VSG|tempHcount\(2) & (\U_VSG|Add0~3\ $ (GND))) # (!\U_VSG|tempHcount\(2) & (!\U_VSG|Add0~3\ & VCC))
-- \U_VSG|Add0~5\ = CARRY((\U_VSG|tempHcount\(2) & !\U_VSG|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(2),
	datad => VCC,
	cin => \U_VSG|Add0~3\,
	combout => \U_VSG|Add0~4_combout\,
	cout => \U_VSG|Add0~5\);

-- Location: FF_X24_Y17_N9
\U_VSG|tempHcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|Add0~4_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempHcount\(2));

-- Location: LCCOMB_X24_Y17_N10
\U_VSG|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Add0~6_combout\ = (\U_VSG|tempHcount\(3) & (!\U_VSG|Add0~5\)) # (!\U_VSG|tempHcount\(3) & ((\U_VSG|Add0~5\) # (GND)))
-- \U_VSG|Add0~7\ = CARRY((!\U_VSG|Add0~5\) # (!\U_VSG|tempHcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(3),
	datad => VCC,
	cin => \U_VSG|Add0~5\,
	combout => \U_VSG|Add0~6_combout\,
	cout => \U_VSG|Add0~7\);

-- Location: FF_X24_Y17_N11
\U_VSG|tempHcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|Add0~6_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempHcount\(3));

-- Location: LCCOMB_X24_Y17_N12
\U_VSG|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Add0~8_combout\ = (\U_VSG|tempHcount\(4) & (\U_VSG|Add0~7\ $ (GND))) # (!\U_VSG|tempHcount\(4) & (!\U_VSG|Add0~7\ & VCC))
-- \U_VSG|Add0~9\ = CARRY((\U_VSG|tempHcount\(4) & !\U_VSG|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(4),
	datad => VCC,
	cin => \U_VSG|Add0~7\,
	combout => \U_VSG|Add0~8_combout\,
	cout => \U_VSG|Add0~9\);

-- Location: FF_X24_Y17_N13
\U_VSG|tempHcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|Add0~8_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempHcount\(4));

-- Location: LCCOMB_X27_Y17_N14
\U_VSG|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Equal0~0_combout\ = (\U_VSG|tempHcount\(4) & (\U_VSG|tempHcount\(3) & (\U_VSG|tempHcount\(1) & \U_VSG|tempHcount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(4),
	datab => \U_VSG|tempHcount\(3),
	datac => \U_VSG|tempHcount\(1),
	datad => \U_VSG|tempHcount\(0),
	combout => \U_VSG|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y17_N14
\U_VSG|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Add0~10_combout\ = (\U_VSG|tempHcount\(5) & (!\U_VSG|Add0~9\)) # (!\U_VSG|tempHcount\(5) & ((\U_VSG|Add0~9\) # (GND)))
-- \U_VSG|Add0~11\ = CARRY((!\U_VSG|Add0~9\) # (!\U_VSG|tempHcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(5),
	datad => VCC,
	cin => \U_VSG|Add0~9\,
	combout => \U_VSG|Add0~10_combout\,
	cout => \U_VSG|Add0~11\);

-- Location: LCCOMB_X24_Y17_N16
\U_VSG|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Add0~12_combout\ = (\U_VSG|tempHcount\(6) & (\U_VSG|Add0~11\ $ (GND))) # (!\U_VSG|tempHcount\(6) & (!\U_VSG|Add0~11\ & VCC))
-- \U_VSG|Add0~13\ = CARRY((\U_VSG|tempHcount\(6) & !\U_VSG|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(6),
	datad => VCC,
	cin => \U_VSG|Add0~11\,
	combout => \U_VSG|Add0~12_combout\,
	cout => \U_VSG|Add0~13\);

-- Location: LCCOMB_X24_Y17_N18
\U_VSG|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Add0~14_combout\ = (\U_VSG|tempHcount\(7) & (!\U_VSG|Add0~13\)) # (!\U_VSG|tempHcount\(7) & ((\U_VSG|Add0~13\) # (GND)))
-- \U_VSG|Add0~15\ = CARRY((!\U_VSG|Add0~13\) # (!\U_VSG|tempHcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(7),
	datad => VCC,
	cin => \U_VSG|Add0~13\,
	combout => \U_VSG|Add0~14_combout\,
	cout => \U_VSG|Add0~15\);

-- Location: FF_X24_Y17_N19
\U_VSG|tempHcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|Add0~14_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempHcount\(7));

-- Location: LCCOMB_X24_Y17_N20
\U_VSG|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Add0~16_combout\ = (\U_VSG|tempHcount\(8) & (\U_VSG|Add0~15\ $ (GND))) # (!\U_VSG|tempHcount\(8) & (!\U_VSG|Add0~15\ & VCC))
-- \U_VSG|Add0~17\ = CARRY((\U_VSG|tempHcount\(8) & !\U_VSG|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(8),
	datad => VCC,
	cin => \U_VSG|Add0~15\,
	combout => \U_VSG|Add0~16_combout\,
	cout => \U_VSG|Add0~17\);

-- Location: LCCOMB_X27_Y21_N4
\U_VSG|tempHcount~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempHcount~0_combout\ = (!\U_VSG|Equal0~2_combout\ & \U_VSG|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|Equal0~2_combout\,
	datad => \U_VSG|Add0~16_combout\,
	combout => \U_VSG|tempHcount~0_combout\);

-- Location: FF_X27_Y21_N5
\U_VSG|tempHcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|tempHcount~0_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempHcount\(8));

-- Location: LCCOMB_X24_Y17_N22
\U_VSG|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Add0~18_combout\ = \U_VSG|Add0~17\ $ (\U_VSG|tempHcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VSG|tempHcount\(9),
	cin => \U_VSG|Add0~17\,
	combout => \U_VSG|Add0~18_combout\);

-- Location: LCCOMB_X24_Y17_N0
\U_VSG|tempHcount~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempHcount~1_combout\ = (\U_VSG|Add0~18_combout\ & !\U_VSG|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VSG|Add0~18_combout\,
	datad => \U_VSG|Equal0~2_combout\,
	combout => \U_VSG|tempHcount~1_combout\);

-- Location: FF_X24_Y17_N1
\U_VSG|tempHcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|tempHcount~1_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempHcount\(9));

-- Location: LCCOMB_X27_Y21_N28
\U_VSG|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Equal0~1_combout\ = (!\U_VSG|tempHcount\(5) & (\U_VSG|tempHcount\(8) & (\U_VSG|tempHcount\(9) & !\U_VSG|tempHcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(5),
	datab => \U_VSG|tempHcount\(8),
	datac => \U_VSG|tempHcount\(9),
	datad => \U_VSG|tempHcount\(7),
	combout => \U_VSG|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y21_N30
\U_VSG|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Equal0~2_combout\ = (\U_VSG|tempHcount\(2) & (\U_VSG|Equal0~0_combout\ & (!\U_VSG|tempHcount\(6) & \U_VSG|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(2),
	datab => \U_VSG|Equal0~0_combout\,
	datac => \U_VSG|tempHcount\(6),
	datad => \U_VSG|Equal0~1_combout\,
	combout => \U_VSG|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y17_N24
\U_VSG|tempHcount~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempHcount~2_combout\ = (\U_VSG|Add0~10_combout\ & !\U_VSG|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VSG|Add0~10_combout\,
	datad => \U_VSG|Equal0~2_combout\,
	combout => \U_VSG|tempHcount~2_combout\);

-- Location: FF_X24_Y17_N25
\U_VSG|tempHcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|tempHcount~2_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempHcount\(5));

-- Location: FF_X24_Y17_N17
\U_VSG|tempHcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|Add0~12_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempHcount\(6));

-- Location: LCCOMB_X23_Y17_N10
\U_VSG|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Equal1~0_combout\ = (\U_VSG|tempHcount\(9) & (\U_VSG|tempHcount\(7) & (!\U_VSG|tempHcount\(8) & \U_VSG|tempHcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(9),
	datab => \U_VSG|tempHcount\(7),
	datac => \U_VSG|tempHcount\(8),
	datad => \U_VSG|tempHcount\(5),
	combout => \U_VSG|Equal1~0_combout\);

-- Location: LCCOMB_X23_Y17_N4
\U_VSG|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Equal1~1_combout\ = (\U_VSG|Equal0~0_combout\ & (!\U_VSG|tempHcount\(6) & (!\U_VSG|tempHcount\(2) & \U_VSG|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|Equal0~0_combout\,
	datab => \U_VSG|tempHcount\(6),
	datac => \U_VSG|tempHcount\(2),
	datad => \U_VSG|Equal1~0_combout\,
	combout => \U_VSG|Equal1~1_combout\);

-- Location: LCCOMB_X22_Y7_N24
\U_VSG|tempVcount[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempVcount[8]~26_combout\ = (\U_VSG|tempVcount\(8) & (\U_VSG|tempVcount[7]~25\ $ (GND))) # (!\U_VSG|tempVcount\(8) & (!\U_VSG|tempVcount[7]~25\ & VCC))
-- \U_VSG|tempVcount[8]~27\ = CARRY((\U_VSG|tempVcount\(8) & !\U_VSG|tempVcount[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(8),
	datad => VCC,
	cin => \U_VSG|tempVcount[7]~25\,
	combout => \U_VSG|tempVcount[8]~26_combout\,
	cout => \U_VSG|tempVcount[8]~27\);

-- Location: LCCOMB_X22_Y7_N26
\U_VSG|tempVcount[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempVcount[9]~28_combout\ = \U_VSG|tempVcount\(9) $ (\U_VSG|tempVcount[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(9),
	cin => \U_VSG|tempVcount[8]~27\,
	combout => \U_VSG|tempVcount[9]~28_combout\);

-- Location: FF_X22_Y7_N27
\U_VSG|tempVcount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|tempVcount[9]~28_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	sclr => \U_VSG|ALT_INV_Equal1~1_combout\,
	ena => \U_VSG|tempVcount[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempVcount\(9));

-- Location: LCCOMB_X22_Y10_N12
\U_VSG|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Equal2~2_combout\ = (\U_VSG|tempVcount\(8)) # (!\U_VSG|tempVcount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VSG|tempVcount\(9),
	datad => \U_VSG|tempVcount\(8),
	combout => \U_VSG|Equal2~2_combout\);

-- Location: LCCOMB_X22_Y10_N18
\U_VSG|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Equal2~1_combout\ = (\U_VSG|tempVcount\(5)) # ((\U_VSG|tempVcount\(4)) # ((!\U_VSG|tempVcount\(2)) # (!\U_VSG|tempVcount\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(5),
	datab => \U_VSG|tempVcount\(4),
	datac => \U_VSG|tempVcount\(3),
	datad => \U_VSG|tempVcount\(2),
	combout => \U_VSG|Equal2~1_combout\);

-- Location: LCCOMB_X22_Y10_N16
\U_VSG|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|Equal2~0_combout\ = (\U_VSG|tempVcount\(1)) # ((\U_VSG|tempVcount\(0)) # ((\U_VSG|tempVcount\(7)) # (\U_VSG|tempVcount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(1),
	datab => \U_VSG|tempVcount\(0),
	datac => \U_VSG|tempVcount\(7),
	datad => \U_VSG|tempVcount\(6),
	combout => \U_VSG|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y10_N30
\U_VSG|tempVcount[4]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempVcount[4]~30_combout\ = (\U_VSG|Equal1~1_combout\) # ((!\U_VSG|Equal2~2_combout\ & (!\U_VSG|Equal2~1_combout\ & !\U_VSG|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|Equal2~2_combout\,
	datab => \U_VSG|Equal2~1_combout\,
	datac => \U_VSG|Equal2~0_combout\,
	datad => \U_VSG|Equal1~1_combout\,
	combout => \U_VSG|tempVcount[4]~30_combout\);

-- Location: FF_X23_Y8_N5
\U_VSG|tempVcount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~clkctrl_outclk\,
	asdata => \U_VSG|tempVcount[0]~10_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	sclr => \U_VSG|ALT_INV_Equal1~1_combout\,
	sload => VCC,
	ena => \U_VSG|tempVcount[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempVcount\(0));

-- Location: LCCOMB_X22_Y7_N10
\U_VSG|tempVcount[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempVcount[1]~12_combout\ = (\U_VSG|tempVcount\(1) & (!\U_VSG|tempVcount[0]~11\)) # (!\U_VSG|tempVcount\(1) & ((\U_VSG|tempVcount[0]~11\) # (GND)))
-- \U_VSG|tempVcount[1]~13\ = CARRY((!\U_VSG|tempVcount[0]~11\) # (!\U_VSG|tempVcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(1),
	datad => VCC,
	cin => \U_VSG|tempVcount[0]~11\,
	combout => \U_VSG|tempVcount[1]~12_combout\,
	cout => \U_VSG|tempVcount[1]~13\);

-- Location: FF_X22_Y8_N7
\U_VSG|tempVcount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	asdata => \U_VSG|tempVcount[1]~12_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	sclr => \U_VSG|ALT_INV_Equal1~1_combout\,
	sload => VCC,
	ena => \U_VSG|tempVcount[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempVcount\(1));

-- Location: LCCOMB_X22_Y7_N12
\U_VSG|tempVcount[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempVcount[2]~14_combout\ = (\U_VSG|tempVcount\(2) & (\U_VSG|tempVcount[1]~13\ $ (GND))) # (!\U_VSG|tempVcount\(2) & (!\U_VSG|tempVcount[1]~13\ & VCC))
-- \U_VSG|tempVcount[2]~15\ = CARRY((\U_VSG|tempVcount\(2) & !\U_VSG|tempVcount[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(2),
	datad => VCC,
	cin => \U_VSG|tempVcount[1]~13\,
	combout => \U_VSG|tempVcount[2]~14_combout\,
	cout => \U_VSG|tempVcount[2]~15\);

-- Location: FF_X22_Y7_N13
\U_VSG|tempVcount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|tempVcount[2]~14_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	sclr => \U_VSG|ALT_INV_Equal1~1_combout\,
	ena => \U_VSG|tempVcount[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempVcount\(2));

-- Location: LCCOMB_X22_Y7_N14
\U_VSG|tempVcount[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempVcount[3]~16_combout\ = (\U_VSG|tempVcount\(3) & (!\U_VSG|tempVcount[2]~15\)) # (!\U_VSG|tempVcount\(3) & ((\U_VSG|tempVcount[2]~15\) # (GND)))
-- \U_VSG|tempVcount[3]~17\ = CARRY((!\U_VSG|tempVcount[2]~15\) # (!\U_VSG|tempVcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(3),
	datad => VCC,
	cin => \U_VSG|tempVcount[2]~15\,
	combout => \U_VSG|tempVcount[3]~16_combout\,
	cout => \U_VSG|tempVcount[3]~17\);

-- Location: FF_X22_Y7_N15
\U_VSG|tempVcount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|tempVcount[3]~16_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	sclr => \U_VSG|ALT_INV_Equal1~1_combout\,
	ena => \U_VSG|tempVcount[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempVcount\(3));

-- Location: LCCOMB_X22_Y7_N16
\U_VSG|tempVcount[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempVcount[4]~18_combout\ = (\U_VSG|tempVcount\(4) & (\U_VSG|tempVcount[3]~17\ $ (GND))) # (!\U_VSG|tempVcount\(4) & (!\U_VSG|tempVcount[3]~17\ & VCC))
-- \U_VSG|tempVcount[4]~19\ = CARRY((\U_VSG|tempVcount\(4) & !\U_VSG|tempVcount[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(4),
	datad => VCC,
	cin => \U_VSG|tempVcount[3]~17\,
	combout => \U_VSG|tempVcount[4]~18_combout\,
	cout => \U_VSG|tempVcount[4]~19\);

-- Location: FF_X22_Y7_N17
\U_VSG|tempVcount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|tempVcount[4]~18_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	sclr => \U_VSG|ALT_INV_Equal1~1_combout\,
	ena => \U_VSG|tempVcount[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempVcount\(4));

-- Location: LCCOMB_X22_Y7_N18
\U_VSG|tempVcount[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempVcount[5]~20_combout\ = (\U_VSG|tempVcount\(5) & (!\U_VSG|tempVcount[4]~19\)) # (!\U_VSG|tempVcount\(5) & ((\U_VSG|tempVcount[4]~19\) # (GND)))
-- \U_VSG|tempVcount[5]~21\ = CARRY((!\U_VSG|tempVcount[4]~19\) # (!\U_VSG|tempVcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(5),
	datad => VCC,
	cin => \U_VSG|tempVcount[4]~19\,
	combout => \U_VSG|tempVcount[5]~20_combout\,
	cout => \U_VSG|tempVcount[5]~21\);

-- Location: FF_X22_Y7_N19
\U_VSG|tempVcount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|tempVcount[5]~20_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	sclr => \U_VSG|ALT_INV_Equal1~1_combout\,
	ena => \U_VSG|tempVcount[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempVcount\(5));

-- Location: LCCOMB_X22_Y7_N20
\U_VSG|tempVcount[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempVcount[6]~22_combout\ = (\U_VSG|tempVcount\(6) & (\U_VSG|tempVcount[5]~21\ $ (GND))) # (!\U_VSG|tempVcount\(6) & (!\U_VSG|tempVcount[5]~21\ & VCC))
-- \U_VSG|tempVcount[6]~23\ = CARRY((\U_VSG|tempVcount\(6) & !\U_VSG|tempVcount[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(6),
	datad => VCC,
	cin => \U_VSG|tempVcount[5]~21\,
	combout => \U_VSG|tempVcount[6]~22_combout\,
	cout => \U_VSG|tempVcount[6]~23\);

-- Location: FF_X22_Y7_N21
\U_VSG|tempVcount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|tempVcount[6]~22_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	sclr => \U_VSG|ALT_INV_Equal1~1_combout\,
	ena => \U_VSG|tempVcount[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempVcount\(6));

-- Location: LCCOMB_X22_Y7_N22
\U_VSG|tempVcount[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|tempVcount[7]~24_combout\ = (\U_VSG|tempVcount\(7) & (!\U_VSG|tempVcount[6]~23\)) # (!\U_VSG|tempVcount\(7) & ((\U_VSG|tempVcount[6]~23\) # (GND)))
-- \U_VSG|tempVcount[7]~25\ = CARRY((!\U_VSG|tempVcount[6]~23\) # (!\U_VSG|tempVcount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(7),
	datad => VCC,
	cin => \U_VSG|tempVcount[6]~23\,
	combout => \U_VSG|tempVcount[7]~24_combout\,
	cout => \U_VSG|tempVcount[7]~25\);

-- Location: FF_X22_Y7_N23
\U_VSG|tempVcount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|tempVcount[7]~24_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	sclr => \U_VSG|ALT_INV_Equal1~1_combout\,
	ena => \U_VSG|tempVcount[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempVcount\(7));

-- Location: FF_X22_Y7_N25
\U_VSG|tempVcount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~q\,
	d => \U_VSG|tempVcount[8]~26_combout\,
	clrn => \ALT_INV_switch[0]~input_o\,
	sclr => \U_VSG|ALT_INV_Equal1~1_combout\,
	ena => \U_VSG|tempVcount[4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VSG|tempVcount\(8));

-- Location: LCCOMB_X22_Y9_N30
\U_BRC1|row_count[6]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[6]~1_combout\ = (\U_VSG|tempVcount\(6) & !\U_VSG|tempVcount\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VSG|tempVcount\(6),
	datad => \U_VSG|tempVcount\(7),
	combout => \U_BRC1|row_count[6]~1_combout\);

-- Location: LCCOMB_X22_Y9_N16
\U_BRC1|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|LessThan3~0_combout\ = (\U_VSG|tempVcount\(3) & (\U_VSG|tempVcount\(0) & (\U_VSG|tempVcount\(1) & \U_VSG|tempVcount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(3),
	datab => \U_VSG|tempVcount\(0),
	datac => \U_VSG|tempVcount\(1),
	datad => \U_VSG|tempVcount\(2),
	combout => \U_BRC1|LessThan3~0_combout\);

-- Location: LCCOMB_X22_Y9_N18
\U_BRC1|row_count[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[6]~2_combout\ = (\U_BRC1|row_count[6]~1_combout\ & ((\U_VSG|tempVcount\(5)) # ((\U_BRC1|LessThan3~0_combout\ & \U_VSG|tempVcount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|row_count[6]~1_combout\,
	datab => \U_BRC1|LessThan3~0_combout\,
	datac => \U_VSG|tempVcount\(5),
	datad => \U_VSG|tempVcount\(4),
	combout => \U_BRC1|row_count[6]~2_combout\);

-- Location: LCCOMB_X22_Y9_N24
\U_BRC1|row_count[6]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[6]~0_combout\ = (\U_VSG|tempVcount\(7) & ((!\U_VSG|tempVcount\(6)) # (!\U_VSG|tempVcount\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(5),
	datac => \U_VSG|tempVcount\(6),
	datad => \U_VSG|tempVcount\(7),
	combout => \U_BRC1|row_count[6]~0_combout\);

-- Location: LCCOMB_X22_Y9_N8
\show_row~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_row~0_combout\ = (\U_VSG|tempVcount\(8) & ((\U_BRC1|row_count[6]~2_combout\) # (\U_BRC1|row_count[6]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(8),
	datac => \U_BRC1|row_count[6]~2_combout\,
	datad => \U_BRC1|row_count[6]~0_combout\,
	combout => \show_row~0_combout\);

-- Location: LCCOMB_X22_Y9_N2
\U_BRC1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|LessThan0~0_combout\ = (\U_VSG|tempVcount\(7)) # ((\U_VSG|tempVcount\(9)) # (\U_VSG|tempVcount\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(7),
	datac => \U_VSG|tempVcount\(9),
	datad => \U_VSG|tempVcount\(8),
	combout => \U_BRC1|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y9_N6
\show_row~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_row~4_combout\ = (\button[1]~input_o\ & ((\button[0]~input_o\ & (\show_row~0_combout\)) # (!\button[0]~input_o\ & ((!\U_BRC1|LessThan0~0_combout\))))) # (!\button[1]~input_o\ & ((\button[0]~input_o\ & ((!\U_BRC1|LessThan0~0_combout\))) # 
-- (!\button[0]~input_o\ & (\show_row~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \button[0]~input_o\,
	datac => \show_row~0_combout\,
	datad => \U_BRC1|LessThan0~0_combout\,
	combout => \show_row~4_combout\);

-- Location: LCCOMB_X22_Y13_N30
\show_row~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_row~5_combout\ = (\show_row~4_combout\ & (\button[2]~input_o\ $ (((\button[1]~input_o\ & \button[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[1]~input_o\,
	datac => \button[0]~input_o\,
	datad => \show_row~4_combout\,
	combout => \show_row~5_combout\);

-- Location: LCCOMB_X22_Y13_N16
\show_row~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_row~1_combout\ = \button[2]~input_o\ $ (((!\button[1]~input_o\) # (!\button[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datac => \button[0]~input_o\,
	datad => \button[1]~input_o\,
	combout => \show_row~1_combout\);

-- Location: IOIBUF_X0_Y25_N15
\switch[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\switch[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\switch[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: LCCOMB_X22_Y8_N28
\U_BRC|row_count[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|row_count[3]~6_combout\ = (!\switch[6]~input_o\ & (\switch[5]~input_o\ & \switch[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[6]~input_o\,
	datac => \switch[5]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_BRC|row_count[3]~6_combout\);

-- Location: LCCOMB_X27_Y17_N20
\U_VSG|process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|process_1~5_combout\ = (\U_VSG|tempHcount\(3)) # ((\U_VSG|tempHcount\(1) & (!\U_VSG|tempHcount\(6) & \U_VSG|tempHcount\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(1),
	datab => \U_VSG|tempHcount\(6),
	datac => \U_VSG|tempHcount\(0),
	datad => \U_VSG|tempHcount\(3),
	combout => \U_VSG|process_1~5_combout\);

-- Location: LCCOMB_X27_Y17_N12
\U_VSG|process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|process_1~6_combout\ = (\U_VSG|tempHcount\(4) & ((\U_VSG|tempHcount\(2)) # (\U_VSG|process_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(4),
	datac => \U_VSG|tempHcount\(2),
	datad => \U_VSG|process_1~5_combout\,
	combout => \U_VSG|process_1~6_combout\);

-- Location: LCCOMB_X27_Y17_N6
\U_VSG|process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|process_1~4_combout\ = (\U_VSG|tempHcount\(7) & (\U_VSG|tempHcount\(9) & !\U_VSG|tempHcount\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(7),
	datac => \U_VSG|tempHcount\(9),
	datad => \U_VSG|tempHcount\(8),
	combout => \U_VSG|process_1~4_combout\);

-- Location: LCCOMB_X27_Y17_N30
\U_VSG|process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|process_1~0_combout\ = LCELL(((\U_VSG|process_1~6_combout\ & (\U_VSG|tempHcount\(6) & \U_VSG|tempHcount\(5))) # (!\U_VSG|process_1~6_combout\ & (!\U_VSG|tempHcount\(6) & !\U_VSG|tempHcount\(5)))) # (!\U_VSG|process_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|process_1~6_combout\,
	datab => \U_VSG|tempHcount\(6),
	datac => \U_VSG|tempHcount\(5),
	datad => \U_VSG|process_1~4_combout\,
	combout => \U_VSG|process_1~0_combout\);

-- Location: CLKCTRL_G6
\U_VSG|process_1~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_VSG|process_1~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_VSG|process_1~0clkctrl_outclk\);

-- Location: LCCOMB_X24_Y8_N10
\U_MOVEH|temp_count[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|temp_count[0]~10_combout\ = \U_MOVEH|temp_count\(0) $ (VCC)
-- \U_MOVEH|temp_count[0]~11\ = CARRY(\U_MOVEH|temp_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(0),
	datad => VCC,
	combout => \U_MOVEH|temp_count[0]~10_combout\,
	cout => \U_MOVEH|temp_count[0]~11\);

-- Location: LCCOMB_X24_Y8_N4
\U_MOVEH|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|LessThan0~1_combout\ = (\U_MOVEH|temp_count\(0)) # ((\U_MOVEH|temp_count\(3)) # ((\U_MOVEH|temp_count\(2)) # (\U_MOVEH|temp_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(0),
	datab => \U_MOVEH|temp_count\(3),
	datac => \U_MOVEH|temp_count\(2),
	datad => \U_MOVEH|temp_count\(4),
	combout => \U_MOVEH|LessThan0~1_combout\);

-- Location: LCCOMB_X24_Y8_N6
\U_MOVEH|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|LessThan0~0_combout\ = (\U_MOVEH|temp_count\(6) & (\U_MOVEH|temp_count\(5) & (\U_MOVEH|temp_count\(8) & \U_MOVEH|temp_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(6),
	datab => \U_MOVEH|temp_count\(5),
	datac => \U_MOVEH|temp_count\(8),
	datad => \U_MOVEH|temp_count\(7),
	combout => \U_MOVEH|LessThan0~0_combout\);

-- Location: LCCOMB_X24_Y8_N30
\U_MOVEH|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|LessThan0~2_combout\ = (\U_MOVEH|temp_count\(9)) # ((\U_MOVEH|LessThan0~0_combout\ & ((\U_MOVEH|temp_count\(1)) # (\U_MOVEH|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(9),
	datab => \U_MOVEH|temp_count\(1),
	datac => \U_MOVEH|LessThan0~1_combout\,
	datad => \U_MOVEH|LessThan0~0_combout\,
	combout => \U_MOVEH|LessThan0~2_combout\);

-- Location: FF_X24_Y8_N11
\U_MOVEH|temp_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~0clkctrl_outclk\,
	d => \U_MOVEH|temp_count[0]~10_combout\,
	sclr => \U_MOVEH|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEH|temp_count\(0));

-- Location: LCCOMB_X24_Y8_N12
\U_MOVEH|temp_count[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|temp_count[1]~12_combout\ = (\U_MOVEH|temp_count\(1) & (!\U_MOVEH|temp_count[0]~11\)) # (!\U_MOVEH|temp_count\(1) & ((\U_MOVEH|temp_count[0]~11\) # (GND)))
-- \U_MOVEH|temp_count[1]~13\ = CARRY((!\U_MOVEH|temp_count[0]~11\) # (!\U_MOVEH|temp_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(1),
	datad => VCC,
	cin => \U_MOVEH|temp_count[0]~11\,
	combout => \U_MOVEH|temp_count[1]~12_combout\,
	cout => \U_MOVEH|temp_count[1]~13\);

-- Location: FF_X24_Y8_N13
\U_MOVEH|temp_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~0clkctrl_outclk\,
	d => \U_MOVEH|temp_count[1]~12_combout\,
	sclr => \U_MOVEH|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEH|temp_count\(1));

-- Location: LCCOMB_X24_Y8_N14
\U_MOVEH|temp_count[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|temp_count[2]~14_combout\ = (\U_MOVEH|temp_count\(2) & (\U_MOVEH|temp_count[1]~13\ $ (GND))) # (!\U_MOVEH|temp_count\(2) & (!\U_MOVEH|temp_count[1]~13\ & VCC))
-- \U_MOVEH|temp_count[2]~15\ = CARRY((\U_MOVEH|temp_count\(2) & !\U_MOVEH|temp_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(2),
	datad => VCC,
	cin => \U_MOVEH|temp_count[1]~13\,
	combout => \U_MOVEH|temp_count[2]~14_combout\,
	cout => \U_MOVEH|temp_count[2]~15\);

-- Location: FF_X24_Y8_N15
\U_MOVEH|temp_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~0clkctrl_outclk\,
	d => \U_MOVEH|temp_count[2]~14_combout\,
	sclr => \U_MOVEH|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEH|temp_count\(2));

-- Location: LCCOMB_X24_Y8_N16
\U_MOVEH|temp_count[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|temp_count[3]~16_combout\ = (\U_MOVEH|temp_count\(3) & (!\U_MOVEH|temp_count[2]~15\)) # (!\U_MOVEH|temp_count\(3) & ((\U_MOVEH|temp_count[2]~15\) # (GND)))
-- \U_MOVEH|temp_count[3]~17\ = CARRY((!\U_MOVEH|temp_count[2]~15\) # (!\U_MOVEH|temp_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(3),
	datad => VCC,
	cin => \U_MOVEH|temp_count[2]~15\,
	combout => \U_MOVEH|temp_count[3]~16_combout\,
	cout => \U_MOVEH|temp_count[3]~17\);

-- Location: FF_X24_Y8_N17
\U_MOVEH|temp_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~0clkctrl_outclk\,
	d => \U_MOVEH|temp_count[3]~16_combout\,
	sclr => \U_MOVEH|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEH|temp_count\(3));

-- Location: LCCOMB_X24_Y8_N18
\U_MOVEH|temp_count[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|temp_count[4]~18_combout\ = (\U_MOVEH|temp_count\(4) & (\U_MOVEH|temp_count[3]~17\ $ (GND))) # (!\U_MOVEH|temp_count\(4) & (!\U_MOVEH|temp_count[3]~17\ & VCC))
-- \U_MOVEH|temp_count[4]~19\ = CARRY((\U_MOVEH|temp_count\(4) & !\U_MOVEH|temp_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(4),
	datad => VCC,
	cin => \U_MOVEH|temp_count[3]~17\,
	combout => \U_MOVEH|temp_count[4]~18_combout\,
	cout => \U_MOVEH|temp_count[4]~19\);

-- Location: FF_X24_Y8_N19
\U_MOVEH|temp_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~0clkctrl_outclk\,
	d => \U_MOVEH|temp_count[4]~18_combout\,
	sclr => \U_MOVEH|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEH|temp_count\(4));

-- Location: LCCOMB_X24_Y8_N20
\U_MOVEH|temp_count[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|temp_count[5]~20_combout\ = (\U_MOVEH|temp_count\(5) & (!\U_MOVEH|temp_count[4]~19\)) # (!\U_MOVEH|temp_count\(5) & ((\U_MOVEH|temp_count[4]~19\) # (GND)))
-- \U_MOVEH|temp_count[5]~21\ = CARRY((!\U_MOVEH|temp_count[4]~19\) # (!\U_MOVEH|temp_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(5),
	datad => VCC,
	cin => \U_MOVEH|temp_count[4]~19\,
	combout => \U_MOVEH|temp_count[5]~20_combout\,
	cout => \U_MOVEH|temp_count[5]~21\);

-- Location: FF_X24_Y8_N21
\U_MOVEH|temp_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~0clkctrl_outclk\,
	d => \U_MOVEH|temp_count[5]~20_combout\,
	sclr => \U_MOVEH|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEH|temp_count\(5));

-- Location: LCCOMB_X24_Y8_N22
\U_MOVEH|temp_count[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|temp_count[6]~22_combout\ = (\U_MOVEH|temp_count\(6) & (\U_MOVEH|temp_count[5]~21\ $ (GND))) # (!\U_MOVEH|temp_count\(6) & (!\U_MOVEH|temp_count[5]~21\ & VCC))
-- \U_MOVEH|temp_count[6]~23\ = CARRY((\U_MOVEH|temp_count\(6) & !\U_MOVEH|temp_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(6),
	datad => VCC,
	cin => \U_MOVEH|temp_count[5]~21\,
	combout => \U_MOVEH|temp_count[6]~22_combout\,
	cout => \U_MOVEH|temp_count[6]~23\);

-- Location: FF_X24_Y8_N23
\U_MOVEH|temp_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~0clkctrl_outclk\,
	d => \U_MOVEH|temp_count[6]~22_combout\,
	sclr => \U_MOVEH|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEH|temp_count\(6));

-- Location: LCCOMB_X24_Y8_N24
\U_MOVEH|temp_count[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|temp_count[7]~24_combout\ = (\U_MOVEH|temp_count\(7) & (!\U_MOVEH|temp_count[6]~23\)) # (!\U_MOVEH|temp_count\(7) & ((\U_MOVEH|temp_count[6]~23\) # (GND)))
-- \U_MOVEH|temp_count[7]~25\ = CARRY((!\U_MOVEH|temp_count[6]~23\) # (!\U_MOVEH|temp_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(7),
	datad => VCC,
	cin => \U_MOVEH|temp_count[6]~23\,
	combout => \U_MOVEH|temp_count[7]~24_combout\,
	cout => \U_MOVEH|temp_count[7]~25\);

-- Location: FF_X24_Y8_N25
\U_MOVEH|temp_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~0clkctrl_outclk\,
	d => \U_MOVEH|temp_count[7]~24_combout\,
	sclr => \U_MOVEH|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEH|temp_count\(7));

-- Location: LCCOMB_X24_Y8_N26
\U_MOVEH|temp_count[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|temp_count[8]~26_combout\ = (\U_MOVEH|temp_count\(8) & (\U_MOVEH|temp_count[7]~25\ $ (GND))) # (!\U_MOVEH|temp_count\(8) & (!\U_MOVEH|temp_count[7]~25\ & VCC))
-- \U_MOVEH|temp_count[8]~27\ = CARRY((\U_MOVEH|temp_count\(8) & !\U_MOVEH|temp_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(8),
	datad => VCC,
	cin => \U_MOVEH|temp_count[7]~25\,
	combout => \U_MOVEH|temp_count[8]~26_combout\,
	cout => \U_MOVEH|temp_count[8]~27\);

-- Location: FF_X24_Y8_N27
\U_MOVEH|temp_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~0clkctrl_outclk\,
	d => \U_MOVEH|temp_count[8]~26_combout\,
	sclr => \U_MOVEH|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEH|temp_count\(8));

-- Location: LCCOMB_X24_Y8_N28
\U_MOVEH|temp_count[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEH|temp_count[9]~28_combout\ = \U_MOVEH|temp_count[8]~27\ $ (\U_MOVEH|temp_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_MOVEH|temp_count\(9),
	cin => \U_MOVEH|temp_count[8]~27\,
	combout => \U_MOVEH|temp_count[9]~28_combout\);

-- Location: FF_X24_Y8_N29
\U_MOVEH|temp_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~0clkctrl_outclk\,
	d => \U_MOVEH|temp_count[9]~28_combout\,
	sclr => \U_MOVEH|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEH|temp_count\(9));

-- Location: LCCOMB_X24_Y7_N0
\U_BRC|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add4~0_combout\ = \U_MOVEH|temp_count\(2) $ (VCC)
-- \U_BRC|Add4~1\ = CARRY(\U_MOVEH|temp_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(2),
	datad => VCC,
	combout => \U_BRC|Add4~0_combout\,
	cout => \U_BRC|Add4~1\);

-- Location: LCCOMB_X24_Y7_N2
\U_BRC|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add4~2_combout\ = (\U_MOVEH|temp_count\(3) & (\U_BRC|Add4~1\ & VCC)) # (!\U_MOVEH|temp_count\(3) & (!\U_BRC|Add4~1\))
-- \U_BRC|Add4~3\ = CARRY((!\U_MOVEH|temp_count\(3) & !\U_BRC|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(3),
	datad => VCC,
	cin => \U_BRC|Add4~1\,
	combout => \U_BRC|Add4~2_combout\,
	cout => \U_BRC|Add4~3\);

-- Location: LCCOMB_X24_Y7_N4
\U_BRC|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add4~4_combout\ = (\U_MOVEH|temp_count\(4) & ((GND) # (!\U_BRC|Add4~3\))) # (!\U_MOVEH|temp_count\(4) & (\U_BRC|Add4~3\ $ (GND)))
-- \U_BRC|Add4~5\ = CARRY((\U_MOVEH|temp_count\(4)) # (!\U_BRC|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(4),
	datad => VCC,
	cin => \U_BRC|Add4~3\,
	combout => \U_BRC|Add4~4_combout\,
	cout => \U_BRC|Add4~5\);

-- Location: LCCOMB_X24_Y7_N6
\U_BRC|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add4~6_combout\ = (\U_MOVEH|temp_count\(5) & (\U_BRC|Add4~5\ & VCC)) # (!\U_MOVEH|temp_count\(5) & (!\U_BRC|Add4~5\))
-- \U_BRC|Add4~7\ = CARRY((!\U_MOVEH|temp_count\(5) & !\U_BRC|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(5),
	datad => VCC,
	cin => \U_BRC|Add4~5\,
	combout => \U_BRC|Add4~6_combout\,
	cout => \U_BRC|Add4~7\);

-- Location: LCCOMB_X24_Y7_N8
\U_BRC|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add4~8_combout\ = (\U_MOVEH|temp_count\(6) & (\U_BRC|Add4~7\ $ (GND))) # (!\U_MOVEH|temp_count\(6) & (!\U_BRC|Add4~7\ & VCC))
-- \U_BRC|Add4~9\ = CARRY((\U_MOVEH|temp_count\(6) & !\U_BRC|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(6),
	datad => VCC,
	cin => \U_BRC|Add4~7\,
	combout => \U_BRC|Add4~8_combout\,
	cout => \U_BRC|Add4~9\);

-- Location: LCCOMB_X24_Y7_N10
\U_BRC|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add4~10_combout\ = (\U_MOVEH|temp_count\(7) & (\U_BRC|Add4~9\ & VCC)) # (!\U_MOVEH|temp_count\(7) & (!\U_BRC|Add4~9\))
-- \U_BRC|Add4~11\ = CARRY((!\U_MOVEH|temp_count\(7) & !\U_BRC|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(7),
	datad => VCC,
	cin => \U_BRC|Add4~9\,
	combout => \U_BRC|Add4~10_combout\,
	cout => \U_BRC|Add4~11\);

-- Location: LCCOMB_X24_Y7_N12
\U_BRC|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add4~12_combout\ = (\U_MOVEH|temp_count\(8) & (\U_BRC|Add4~11\ $ (GND))) # (!\U_MOVEH|temp_count\(8) & (!\U_BRC|Add4~11\ & VCC))
-- \U_BRC|Add4~13\ = CARRY((\U_MOVEH|temp_count\(8) & !\U_BRC|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(8),
	datad => VCC,
	cin => \U_BRC|Add4~11\,
	combout => \U_BRC|Add4~12_combout\,
	cout => \U_BRC|Add4~13\);

-- Location: LCCOMB_X24_Y7_N14
\U_BRC|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add4~14_combout\ = (\U_MOVEH|temp_count\(9) & (\U_BRC|Add4~13\ & VCC)) # (!\U_MOVEH|temp_count\(9) & (!\U_BRC|Add4~13\))
-- \U_BRC|Add4~15\ = CARRY((!\U_MOVEH|temp_count\(9) & !\U_BRC|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(9),
	datad => VCC,
	cin => \U_BRC|Add4~13\,
	combout => \U_BRC|Add4~14_combout\,
	cout => \U_BRC|Add4~15\);

-- Location: LCCOMB_X24_Y7_N16
\U_BRC|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add4~16_combout\ = !\U_BRC|Add4~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BRC|Add4~15\,
	combout => \U_BRC|Add4~16_combout\);

-- Location: LCCOMB_X23_Y7_N6
\U_BRC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan7~1_cout\ = CARRY((\U_BRC|Add4~0_combout\ & !\U_VSG|tempVcount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add4~0_combout\,
	datab => \U_VSG|tempVcount\(0),
	datad => VCC,
	cout => \U_BRC|LessThan7~1_cout\);

-- Location: LCCOMB_X23_Y7_N8
\U_BRC|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan7~3_cout\ = CARRY((\U_BRC|Add4~2_combout\ & (\U_VSG|tempVcount\(1) & !\U_BRC|LessThan7~1_cout\)) # (!\U_BRC|Add4~2_combout\ & ((\U_VSG|tempVcount\(1)) # (!\U_BRC|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add4~2_combout\,
	datab => \U_VSG|tempVcount\(1),
	datad => VCC,
	cin => \U_BRC|LessThan7~1_cout\,
	cout => \U_BRC|LessThan7~3_cout\);

-- Location: LCCOMB_X23_Y7_N10
\U_BRC|LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan7~5_cout\ = CARRY((\U_BRC|Add4~4_combout\ & ((!\U_BRC|LessThan7~3_cout\) # (!\U_VSG|tempVcount\(2)))) # (!\U_BRC|Add4~4_combout\ & (!\U_VSG|tempVcount\(2) & !\U_BRC|LessThan7~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add4~4_combout\,
	datab => \U_VSG|tempVcount\(2),
	datad => VCC,
	cin => \U_BRC|LessThan7~3_cout\,
	cout => \U_BRC|LessThan7~5_cout\);

-- Location: LCCOMB_X23_Y7_N12
\U_BRC|LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan7~7_cout\ = CARRY((\U_VSG|tempVcount\(3) & ((!\U_BRC|LessThan7~5_cout\) # (!\U_BRC|Add4~6_combout\))) # (!\U_VSG|tempVcount\(3) & (!\U_BRC|Add4~6_combout\ & !\U_BRC|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(3),
	datab => \U_BRC|Add4~6_combout\,
	datad => VCC,
	cin => \U_BRC|LessThan7~5_cout\,
	cout => \U_BRC|LessThan7~7_cout\);

-- Location: LCCOMB_X23_Y7_N14
\U_BRC|LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan7~9_cout\ = CARRY((\U_VSG|tempVcount\(4) & (\U_BRC|Add4~8_combout\ & !\U_BRC|LessThan7~7_cout\)) # (!\U_VSG|tempVcount\(4) & ((\U_BRC|Add4~8_combout\) # (!\U_BRC|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(4),
	datab => \U_BRC|Add4~8_combout\,
	datad => VCC,
	cin => \U_BRC|LessThan7~7_cout\,
	cout => \U_BRC|LessThan7~9_cout\);

-- Location: LCCOMB_X23_Y7_N16
\U_BRC|LessThan7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan7~11_cout\ = CARRY((\U_VSG|tempVcount\(5) & ((!\U_BRC|LessThan7~9_cout\) # (!\U_BRC|Add4~10_combout\))) # (!\U_VSG|tempVcount\(5) & (!\U_BRC|Add4~10_combout\ & !\U_BRC|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(5),
	datab => \U_BRC|Add4~10_combout\,
	datad => VCC,
	cin => \U_BRC|LessThan7~9_cout\,
	cout => \U_BRC|LessThan7~11_cout\);

-- Location: LCCOMB_X23_Y7_N18
\U_BRC|LessThan7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan7~13_cout\ = CARRY((\U_VSG|tempVcount\(6) & (\U_BRC|Add4~12_combout\ & !\U_BRC|LessThan7~11_cout\)) # (!\U_VSG|tempVcount\(6) & ((\U_BRC|Add4~12_combout\) # (!\U_BRC|LessThan7~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(6),
	datab => \U_BRC|Add4~12_combout\,
	datad => VCC,
	cin => \U_BRC|LessThan7~11_cout\,
	cout => \U_BRC|LessThan7~13_cout\);

-- Location: LCCOMB_X23_Y7_N20
\U_BRC|LessThan7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan7~15_cout\ = CARRY((\U_BRC|Add4~14_combout\ & (\U_VSG|tempVcount\(7) & !\U_BRC|LessThan7~13_cout\)) # (!\U_BRC|Add4~14_combout\ & ((\U_VSG|tempVcount\(7)) # (!\U_BRC|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add4~14_combout\,
	datab => \U_VSG|tempVcount\(7),
	datad => VCC,
	cin => \U_BRC|LessThan7~13_cout\,
	cout => \U_BRC|LessThan7~15_cout\);

-- Location: LCCOMB_X23_Y7_N22
\U_BRC|LessThan7~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan7~16_combout\ = (\U_VSG|tempVcount\(8) & (!\U_BRC|LessThan7~15_cout\ & \U_BRC|Add4~16_combout\)) # (!\U_VSG|tempVcount\(8) & ((\U_BRC|Add4~16_combout\) # (!\U_BRC|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(8),
	datad => \U_BRC|Add4~16_combout\,
	cin => \U_BRC|LessThan7~15_cout\,
	combout => \U_BRC|LessThan7~16_combout\);

-- Location: LCCOMB_X23_Y8_N6
\U_BRC|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add3~0_combout\ = \U_MOVEH|temp_count\(2) $ (VCC)
-- \U_BRC|Add3~1\ = CARRY(\U_MOVEH|temp_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(2),
	datad => VCC,
	combout => \U_BRC|Add3~0_combout\,
	cout => \U_BRC|Add3~1\);

-- Location: LCCOMB_X23_Y8_N8
\U_BRC|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add3~2_combout\ = (\U_MOVEH|temp_count\(3) & (\U_BRC|Add3~1\ & VCC)) # (!\U_MOVEH|temp_count\(3) & (!\U_BRC|Add3~1\))
-- \U_BRC|Add3~3\ = CARRY((!\U_MOVEH|temp_count\(3) & !\U_BRC|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(3),
	datad => VCC,
	cin => \U_BRC|Add3~1\,
	combout => \U_BRC|Add3~2_combout\,
	cout => \U_BRC|Add3~3\);

-- Location: LCCOMB_X23_Y8_N10
\U_BRC|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add3~4_combout\ = (\U_MOVEH|temp_count\(4) & ((GND) # (!\U_BRC|Add3~3\))) # (!\U_MOVEH|temp_count\(4) & (\U_BRC|Add3~3\ $ (GND)))
-- \U_BRC|Add3~5\ = CARRY((\U_MOVEH|temp_count\(4)) # (!\U_BRC|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(4),
	datad => VCC,
	cin => \U_BRC|Add3~3\,
	combout => \U_BRC|Add3~4_combout\,
	cout => \U_BRC|Add3~5\);

-- Location: LCCOMB_X23_Y8_N12
\U_BRC|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add3~6_combout\ = (\U_MOVEH|temp_count\(5) & (\U_BRC|Add3~5\ & VCC)) # (!\U_MOVEH|temp_count\(5) & (!\U_BRC|Add3~5\))
-- \U_BRC|Add3~7\ = CARRY((!\U_MOVEH|temp_count\(5) & !\U_BRC|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(5),
	datad => VCC,
	cin => \U_BRC|Add3~5\,
	combout => \U_BRC|Add3~6_combout\,
	cout => \U_BRC|Add3~7\);

-- Location: LCCOMB_X23_Y8_N14
\U_BRC|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add3~8_combout\ = (\U_MOVEH|temp_count\(6) & (\U_BRC|Add3~7\ $ (GND))) # (!\U_MOVEH|temp_count\(6) & (!\U_BRC|Add3~7\ & VCC))
-- \U_BRC|Add3~9\ = CARRY((\U_MOVEH|temp_count\(6) & !\U_BRC|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(6),
	datad => VCC,
	cin => \U_BRC|Add3~7\,
	combout => \U_BRC|Add3~8_combout\,
	cout => \U_BRC|Add3~9\);

-- Location: LCCOMB_X23_Y8_N16
\U_BRC|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add3~10_combout\ = (\U_MOVEH|temp_count\(7) & (\U_BRC|Add3~9\ & VCC)) # (!\U_MOVEH|temp_count\(7) & (!\U_BRC|Add3~9\))
-- \U_BRC|Add3~11\ = CARRY((!\U_MOVEH|temp_count\(7) & !\U_BRC|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(7),
	datad => VCC,
	cin => \U_BRC|Add3~9\,
	combout => \U_BRC|Add3~10_combout\,
	cout => \U_BRC|Add3~11\);

-- Location: LCCOMB_X23_Y8_N18
\U_BRC|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add3~12_combout\ = (\U_MOVEH|temp_count\(8) & (\U_BRC|Add3~11\ $ (GND))) # (!\U_MOVEH|temp_count\(8) & (!\U_BRC|Add3~11\ & VCC))
-- \U_BRC|Add3~13\ = CARRY((\U_MOVEH|temp_count\(8) & !\U_BRC|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(8),
	datad => VCC,
	cin => \U_BRC|Add3~11\,
	combout => \U_BRC|Add3~12_combout\,
	cout => \U_BRC|Add3~13\);

-- Location: LCCOMB_X23_Y8_N20
\U_BRC|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add3~14_combout\ = (\U_MOVEH|temp_count\(9) & (!\U_BRC|Add3~13\)) # (!\U_MOVEH|temp_count\(9) & ((\U_BRC|Add3~13\) # (GND)))
-- \U_BRC|Add3~15\ = CARRY((!\U_BRC|Add3~13\) # (!\U_MOVEH|temp_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(9),
	datad => VCC,
	cin => \U_BRC|Add3~13\,
	combout => \U_BRC|Add3~14_combout\,
	cout => \U_BRC|Add3~15\);

-- Location: LCCOMB_X23_Y8_N22
\U_BRC|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add3~16_combout\ = !\U_BRC|Add3~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BRC|Add3~15\,
	combout => \U_BRC|Add3~16_combout\);

-- Location: LCCOMB_X23_Y8_N30
\U_BRC|LessThan6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan6~2_combout\ = (\U_BRC|Add3~2_combout\ & (!\U_BRC|Add3~0_combout\ & (\U_VSG|tempVcount\(1) & \U_VSG|tempVcount\(0)))) # (!\U_BRC|Add3~2_combout\ & ((\U_VSG|tempVcount\(1)) # ((!\U_BRC|Add3~0_combout\ & \U_VSG|tempVcount\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add3~0_combout\,
	datab => \U_BRC|Add3~2_combout\,
	datac => \U_VSG|tempVcount\(1),
	datad => \U_VSG|tempVcount\(0),
	combout => \U_BRC|LessThan6~2_combout\);

-- Location: LCCOMB_X22_Y7_N6
\U_BRC|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan6~3_combout\ = (\U_VSG|tempVcount\(2) & ((\U_BRC|LessThan6~2_combout\) # (!\U_BRC|Add3~4_combout\))) # (!\U_VSG|tempVcount\(2) & (\U_BRC|LessThan6~2_combout\ & !\U_BRC|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(2),
	datac => \U_BRC|LessThan6~2_combout\,
	datad => \U_BRC|Add3~4_combout\,
	combout => \U_BRC|LessThan6~3_combout\);

-- Location: LCCOMB_X22_Y7_N0
\U_BRC|LessThan6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan6~4_combout\ = (\U_VSG|tempVcount\(3) & ((\U_BRC|LessThan6~3_combout\) # (!\U_BRC|Add3~6_combout\))) # (!\U_VSG|tempVcount\(3) & (!\U_BRC|Add3~6_combout\ & \U_BRC|LessThan6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(3),
	datac => \U_BRC|Add3~6_combout\,
	datad => \U_BRC|LessThan6~3_combout\,
	combout => \U_BRC|LessThan6~4_combout\);

-- Location: LCCOMB_X22_Y7_N2
\U_BRC|LessThan6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan6~8_combout\ = (\U_VSG|tempVcount\(4) & ((\U_BRC|LessThan6~4_combout\) # (!\U_BRC|Add3~8_combout\))) # (!\U_VSG|tempVcount\(4) & (!\U_BRC|Add3~8_combout\ & \U_BRC|LessThan6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(4),
	datac => \U_BRC|Add3~8_combout\,
	datad => \U_BRC|LessThan6~4_combout\,
	combout => \U_BRC|LessThan6~8_combout\);

-- Location: LCCOMB_X22_Y7_N28
\U_BRC|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan6~5_combout\ = (\U_VSG|tempVcount\(5) & ((\U_BRC|LessThan6~8_combout\) # (!\U_BRC|Add3~10_combout\))) # (!\U_VSG|tempVcount\(5) & (!\U_BRC|Add3~10_combout\ & \U_BRC|LessThan6~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(5),
	datac => \U_BRC|Add3~10_combout\,
	datad => \U_BRC|LessThan6~8_combout\,
	combout => \U_BRC|LessThan6~5_combout\);

-- Location: LCCOMB_X22_Y7_N4
\U_BRC|LessThan6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan6~6_combout\ = (\U_BRC|Add3~12_combout\ & (\U_VSG|tempVcount\(6) & \U_BRC|LessThan6~5_combout\)) # (!\U_BRC|Add3~12_combout\ & ((\U_VSG|tempVcount\(6)) # (\U_BRC|LessThan6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add3~12_combout\,
	datab => \U_VSG|tempVcount\(6),
	datad => \U_BRC|LessThan6~5_combout\,
	combout => \U_BRC|LessThan6~6_combout\);

-- Location: LCCOMB_X22_Y7_N30
\U_BRC|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan6~7_combout\ = (\U_VSG|tempVcount\(7) & ((\U_BRC|LessThan6~6_combout\) # (!\U_BRC|Add3~14_combout\))) # (!\U_VSG|tempVcount\(7) & (!\U_BRC|Add3~14_combout\ & \U_BRC|LessThan6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(7),
	datab => \U_BRC|Add3~14_combout\,
	datac => \U_BRC|LessThan6~6_combout\,
	combout => \U_BRC|LessThan6~7_combout\);

-- Location: LCCOMB_X23_Y7_N28
\U_BRC|row_count[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|row_count[3]~3_combout\ = (\U_VSG|tempVcount\(9) & (!\U_VSG|tempVcount\(8) & (\U_BRC|Add3~16_combout\ & !\U_BRC|LessThan6~7_combout\))) # (!\U_VSG|tempVcount\(9) & (\U_VSG|tempVcount\(8) & (!\U_BRC|Add3~16_combout\ & \U_BRC|LessThan6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(9),
	datab => \U_VSG|tempVcount\(8),
	datac => \U_BRC|Add3~16_combout\,
	datad => \U_BRC|LessThan6~7_combout\,
	combout => \U_BRC|row_count[3]~3_combout\);

-- Location: LCCOMB_X23_Y7_N2
\U_BRC|row_count[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|row_count[3]~4_combout\ = (\U_BRC|row_count[3]~6_combout\ & ((\U_VSG|tempVcount\(9) & ((\U_BRC|row_count[3]~3_combout\))) # (!\U_VSG|tempVcount\(9) & (!\U_BRC|LessThan7~16_combout\ & !\U_BRC|row_count[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(9),
	datab => \U_BRC|row_count[3]~6_combout\,
	datac => \U_BRC|LessThan7~16_combout\,
	datad => \U_BRC|row_count[3]~3_combout\,
	combout => \U_BRC|row_count[3]~4_combout\);

-- Location: LCCOMB_X24_Y8_N0
\U_BRC|Add2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add2~1_combout\ = \U_MOVEH|temp_count\(9) $ (((!\U_MOVEH|temp_count\(8) & ((!\U_MOVEH|temp_count\(7)) # (!\U_MOVEH|temp_count\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(6),
	datab => \U_MOVEH|temp_count\(7),
	datac => \U_MOVEH|temp_count\(8),
	datad => \U_MOVEH|temp_count\(9),
	combout => \U_BRC|Add2~1_combout\);

-- Location: LCCOMB_X24_Y10_N16
\U_BRC|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add2~2_combout\ = \U_MOVEH|temp_count\(8) $ (((!\U_MOVEH|temp_count\(7)) # (!\U_MOVEH|temp_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEH|temp_count\(6),
	datac => \U_MOVEH|temp_count\(8),
	datad => \U_MOVEH|temp_count\(7),
	combout => \U_BRC|Add2~2_combout\);

-- Location: LCCOMB_X24_Y10_N28
\U_BRC|LessThan5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan5~6_combout\ = (!\U_VSG|tempVcount\(6) & (!\U_BRC|Add2~2_combout\ & (\U_BRC|Add2~1_combout\ $ (!\U_VSG|tempVcount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add2~1_combout\,
	datab => \U_VSG|tempVcount\(7),
	datac => \U_VSG|tempVcount\(6),
	datad => \U_BRC|Add2~2_combout\,
	combout => \U_BRC|LessThan5~6_combout\);

-- Location: LCCOMB_X23_Y10_N4
\U_BRC|LessThan5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan5~8_combout\ = (\U_VSG|tempVcount\(7) & (\U_BRC|Add2~1_combout\ & (\U_VSG|tempVcount\(6) $ (\U_BRC|Add2~2_combout\)))) # (!\U_VSG|tempVcount\(7) & (!\U_BRC|Add2~1_combout\ & (\U_VSG|tempVcount\(6) $ (\U_BRC|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(7),
	datab => \U_BRC|Add2~1_combout\,
	datac => \U_VSG|tempVcount\(6),
	datad => \U_BRC|Add2~2_combout\,
	combout => \U_BRC|LessThan5~8_combout\);

-- Location: LCCOMB_X23_Y10_N6
\U_BRC|LessThan5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan5~14_combout\ = (\U_BRC|LessThan5~8_combout\ & (\U_VSG|tempVcount\(5) $ (\U_MOVEH|temp_count\(6) $ (\U_MOVEH|temp_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(5),
	datab => \U_MOVEH|temp_count\(6),
	datac => \U_BRC|LessThan5~8_combout\,
	datad => \U_MOVEH|temp_count\(7),
	combout => \U_BRC|LessThan5~14_combout\);

-- Location: LCCOMB_X23_Y8_N2
\U_BRC|LessThan5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan5~10_combout\ = (\U_VSG|tempVcount\(3) & (!\U_MOVEH|temp_count\(5) & (\U_MOVEH|temp_count\(6) $ (!\U_VSG|tempVcount\(4))))) # (!\U_VSG|tempVcount\(3) & (\U_MOVEH|temp_count\(5) & (\U_MOVEH|temp_count\(6) $ (!\U_VSG|tempVcount\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(3),
	datab => \U_MOVEH|temp_count\(6),
	datac => \U_MOVEH|temp_count\(5),
	datad => \U_VSG|tempVcount\(4),
	combout => \U_BRC|LessThan5~10_combout\);

-- Location: LCCOMB_X23_Y8_N26
\U_BRC|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan5~11_combout\ = (\U_VSG|tempVcount\(1) & (!\U_MOVEH|temp_count\(2) & (!\U_VSG|tempVcount\(0) & !\U_MOVEH|temp_count\(3)))) # (!\U_VSG|tempVcount\(1) & (((!\U_MOVEH|temp_count\(2) & !\U_VSG|tempVcount\(0))) # (!\U_MOVEH|temp_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(2),
	datab => \U_VSG|tempVcount\(0),
	datac => \U_VSG|tempVcount\(1),
	datad => \U_MOVEH|temp_count\(3),
	combout => \U_BRC|LessThan5~11_combout\);

-- Location: LCCOMB_X23_Y8_N24
\U_BRC|LessThan5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan5~12_combout\ = (\U_BRC|LessThan5~10_combout\ & ((\U_MOVEH|temp_count\(4) & (!\U_VSG|tempVcount\(2) & \U_BRC|LessThan5~11_combout\)) # (!\U_MOVEH|temp_count\(4) & ((\U_BRC|LessThan5~11_combout\) # (!\U_VSG|tempVcount\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|LessThan5~10_combout\,
	datab => \U_MOVEH|temp_count\(4),
	datac => \U_VSG|tempVcount\(2),
	datad => \U_BRC|LessThan5~11_combout\,
	combout => \U_BRC|LessThan5~12_combout\);

-- Location: LCCOMB_X23_Y10_N30
\U_BRC|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan5~9_combout\ = (\U_VSG|tempVcount\(4) & (\U_MOVEH|temp_count\(6) & (!\U_MOVEH|temp_count\(5) & !\U_VSG|tempVcount\(3)))) # (!\U_VSG|tempVcount\(4) & ((\U_MOVEH|temp_count\(6)) # ((!\U_MOVEH|temp_count\(5) & !\U_VSG|tempVcount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(4),
	datab => \U_MOVEH|temp_count\(6),
	datac => \U_MOVEH|temp_count\(5),
	datad => \U_VSG|tempVcount\(3),
	combout => \U_BRC|LessThan5~9_combout\);

-- Location: LCCOMB_X23_Y8_N28
\U_BRC|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan5~15_combout\ = (\U_MOVEH|temp_count\(6) & (\U_MOVEH|temp_count\(7) & (\U_MOVEH|temp_count\(8) $ (\U_VSG|tempVcount\(6))))) # (!\U_MOVEH|temp_count\(6) & (!\U_MOVEH|temp_count\(7) & (\U_MOVEH|temp_count\(8) $ (!\U_VSG|tempVcount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(6),
	datab => \U_MOVEH|temp_count\(8),
	datac => \U_MOVEH|temp_count\(7),
	datad => \U_VSG|tempVcount\(6),
	combout => \U_BRC|LessThan5~15_combout\);

-- Location: LCCOMB_X23_Y10_N2
\U_BRC|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan5~7_combout\ = (\U_VSG|tempVcount\(7) & (!\U_VSG|tempVcount\(5) & (\U_BRC|LessThan5~15_combout\ & \U_BRC|Add2~1_combout\))) # (!\U_VSG|tempVcount\(7) & ((\U_BRC|Add2~1_combout\) # ((!\U_VSG|tempVcount\(5) & \U_BRC|LessThan5~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(5),
	datab => \U_BRC|LessThan5~15_combout\,
	datac => \U_VSG|tempVcount\(7),
	datad => \U_BRC|Add2~1_combout\,
	combout => \U_BRC|LessThan5~7_combout\);

-- Location: LCCOMB_X23_Y10_N26
\U_BRC|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan5~13_combout\ = (\U_BRC|LessThan5~7_combout\) # ((\U_BRC|LessThan5~14_combout\ & ((\U_BRC|LessThan5~12_combout\) # (\U_BRC|LessThan5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|LessThan5~14_combout\,
	datab => \U_BRC|LessThan5~12_combout\,
	datac => \U_BRC|LessThan5~9_combout\,
	datad => \U_BRC|LessThan5~7_combout\,
	combout => \U_BRC|LessThan5~13_combout\);

-- Location: LCCOMB_X22_Y8_N20
\U_BRC|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Equal4~0_combout\ = (\switch[6]~input_o\ & (!\switch[5]~input_o\ & \switch[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[6]~input_o\,
	datac => \switch[5]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_BRC|Equal4~0_combout\);

-- Location: LCCOMB_X24_Y8_N8
\U_BRC|show_image~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|show_image~0_combout\ = ((!\U_MOVEH|temp_count\(8) & ((!\U_MOVEH|temp_count\(7)) # (!\U_MOVEH|temp_count\(6))))) # (!\U_MOVEH|temp_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(6),
	datab => \U_MOVEH|temp_count\(7),
	datac => \U_MOVEH|temp_count\(8),
	datad => \U_MOVEH|temp_count\(9),
	combout => \U_BRC|show_image~0_combout\);

-- Location: LCCOMB_X24_Y8_N2
\U_BRC|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add2~0_combout\ = (!\U_MOVEH|temp_count\(8) & (!\U_MOVEH|temp_count\(9) & ((!\U_MOVEH|temp_count\(7)) # (!\U_MOVEH|temp_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(6),
	datab => \U_MOVEH|temp_count\(7),
	datac => \U_MOVEH|temp_count\(8),
	datad => \U_MOVEH|temp_count\(9),
	combout => \U_BRC|Add2~0_combout\);

-- Location: LCCOMB_X24_Y10_N10
\U_BRC|Add2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add2~3_combout\ = \U_MOVEH|temp_count\(6) $ (\U_MOVEH|temp_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MOVEH|temp_count\(6),
	datad => \U_MOVEH|temp_count\(7),
	combout => \U_BRC|Add2~3_combout\);

-- Location: LCCOMB_X23_Y10_N8
\U_BRC|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan4~1_cout\ = CARRY((\U_MOVEH|temp_count\(2) & \U_VSG|tempVcount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(2),
	datab => \U_VSG|tempVcount\(0),
	datad => VCC,
	cout => \U_BRC|LessThan4~1_cout\);

-- Location: LCCOMB_X23_Y10_N10
\U_BRC|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan4~3_cout\ = CARRY((\U_VSG|tempVcount\(1) & (!\U_MOVEH|temp_count\(3) & !\U_BRC|LessThan4~1_cout\)) # (!\U_VSG|tempVcount\(1) & ((!\U_BRC|LessThan4~1_cout\) # (!\U_MOVEH|temp_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(1),
	datab => \U_MOVEH|temp_count\(3),
	datad => VCC,
	cin => \U_BRC|LessThan4~1_cout\,
	cout => \U_BRC|LessThan4~3_cout\);

-- Location: LCCOMB_X23_Y10_N12
\U_BRC|LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan4~5_cout\ = CARRY((\U_MOVEH|temp_count\(4) & ((\U_VSG|tempVcount\(2)) # (!\U_BRC|LessThan4~3_cout\))) # (!\U_MOVEH|temp_count\(4) & (\U_VSG|tempVcount\(2) & !\U_BRC|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEH|temp_count\(4),
	datab => \U_VSG|tempVcount\(2),
	datad => VCC,
	cin => \U_BRC|LessThan4~3_cout\,
	cout => \U_BRC|LessThan4~5_cout\);

-- Location: LCCOMB_X23_Y10_N14
\U_BRC|LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan4~7_cout\ = CARRY((\U_VSG|tempVcount\(3) & (!\U_MOVEH|temp_count\(5) & !\U_BRC|LessThan4~5_cout\)) # (!\U_VSG|tempVcount\(3) & ((!\U_BRC|LessThan4~5_cout\) # (!\U_MOVEH|temp_count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(3),
	datab => \U_MOVEH|temp_count\(5),
	datad => VCC,
	cin => \U_BRC|LessThan4~5_cout\,
	cout => \U_BRC|LessThan4~7_cout\);

-- Location: LCCOMB_X23_Y10_N16
\U_BRC|LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan4~9_cout\ = CARRY((\U_VSG|tempVcount\(4) & ((!\U_BRC|LessThan4~7_cout\) # (!\U_MOVEH|temp_count\(6)))) # (!\U_VSG|tempVcount\(4) & (!\U_MOVEH|temp_count\(6) & !\U_BRC|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(4),
	datab => \U_MOVEH|temp_count\(6),
	datad => VCC,
	cin => \U_BRC|LessThan4~7_cout\,
	cout => \U_BRC|LessThan4~9_cout\);

-- Location: LCCOMB_X23_Y10_N18
\U_BRC|LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan4~11_cout\ = CARRY((\U_VSG|tempVcount\(5) & (!\U_BRC|Add2~3_combout\ & !\U_BRC|LessThan4~9_cout\)) # (!\U_VSG|tempVcount\(5) & ((!\U_BRC|LessThan4~9_cout\) # (!\U_BRC|Add2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(5),
	datab => \U_BRC|Add2~3_combout\,
	datad => VCC,
	cin => \U_BRC|LessThan4~9_cout\,
	cout => \U_BRC|LessThan4~11_cout\);

-- Location: LCCOMB_X23_Y10_N20
\U_BRC|LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan4~13_cout\ = CARRY((\U_VSG|tempVcount\(6) & ((\U_BRC|Add2~2_combout\) # (!\U_BRC|LessThan4~11_cout\))) # (!\U_VSG|tempVcount\(6) & (\U_BRC|Add2~2_combout\ & !\U_BRC|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(6),
	datab => \U_BRC|Add2~2_combout\,
	datad => VCC,
	cin => \U_BRC|LessThan4~11_cout\,
	cout => \U_BRC|LessThan4~13_cout\);

-- Location: LCCOMB_X23_Y10_N22
\U_BRC|LessThan4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan4~15_cout\ = CARRY((\U_VSG|tempVcount\(7) & (!\U_BRC|Add2~1_combout\ & !\U_BRC|LessThan4~13_cout\)) # (!\U_VSG|tempVcount\(7) & ((!\U_BRC|LessThan4~13_cout\) # (!\U_BRC|Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(7),
	datab => \U_BRC|Add2~1_combout\,
	datad => VCC,
	cin => \U_BRC|LessThan4~13_cout\,
	cout => \U_BRC|LessThan4~15_cout\);

-- Location: LCCOMB_X23_Y10_N24
\U_BRC|LessThan4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|LessThan4~16_combout\ = (\U_VSG|tempVcount\(8) & ((!\U_BRC|Add2~0_combout\) # (!\U_BRC|LessThan4~15_cout\))) # (!\U_VSG|tempVcount\(8) & (!\U_BRC|LessThan4~15_cout\ & !\U_BRC|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(8),
	datad => \U_BRC|Add2~0_combout\,
	cin => \U_BRC|LessThan4~15_cout\,
	combout => \U_BRC|LessThan4~16_combout\);

-- Location: LCCOMB_X23_Y10_N0
\U_BRC|show_image~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|show_image~1_combout\ = (!\U_VSG|tempVcount\(9) & (\U_BRC|Equal4~0_combout\ & (\U_BRC|show_image~0_combout\ & !\U_BRC|LessThan4~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(9),
	datab => \U_BRC|Equal4~0_combout\,
	datac => \U_BRC|show_image~0_combout\,
	datad => \U_BRC|LessThan4~16_combout\,
	combout => \U_BRC|show_image~1_combout\);

-- Location: LCCOMB_X23_Y10_N28
\U_BRC|show_image~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|show_image~2_combout\ = (\U_BRC|show_image~1_combout\ & ((\U_VSG|tempVcount\(8)) # ((!\U_BRC|LessThan5~6_combout\ & !\U_BRC|LessThan5~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(8),
	datab => \U_BRC|LessThan5~6_combout\,
	datac => \U_BRC|LessThan5~13_combout\,
	datad => \U_BRC|show_image~1_combout\,
	combout => \U_BRC|show_image~2_combout\);

-- Location: IOIBUF_X0_Y25_N1
\switch[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: LCCOMB_X22_Y8_N30
\U_BRC|row_count[3]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|row_count[3]~2_combout\ = (\switch[6]~input_o\ $ (!\switch[5]~input_o\)) # (!\switch[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[6]~input_o\,
	datac => \switch[5]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_BRC|row_count[3]~2_combout\);

-- Location: LCCOMB_X22_Y9_N4
\U_BRC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|process_0~0_combout\ = (\U_VSG|tempVcount\(5) & ((\U_VSG|tempVcount\(4)) # ((\U_BRC1|LessThan3~0_combout\ & \U_VSG|tempVcount\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(4),
	datab => \U_BRC1|LessThan3~0_combout\,
	datac => \U_VSG|tempVcount\(5),
	datad => \U_VSG|tempVcount\(7),
	combout => \U_BRC|process_0~0_combout\);

-- Location: LCCOMB_X22_Y9_N26
\U_BRC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|process_0~1_combout\ = (\U_VSG|tempVcount\(8) & ((\U_BRC|process_0~0_combout\) # ((\U_VSG|tempVcount\(6)) # (\U_VSG|tempVcount\(7))))) # (!\U_VSG|tempVcount\(8) & (((!\U_BRC|process_0~0_combout\ & !\U_VSG|tempVcount\(6))) # 
-- (!\U_VSG|tempVcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(8),
	datab => \U_BRC|process_0~0_combout\,
	datac => \U_VSG|tempVcount\(6),
	datad => \U_VSG|tempVcount\(7),
	combout => \U_BRC|process_0~1_combout\);

-- Location: LCCOMB_X21_Y9_N24
\show_row~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_row~2_combout\ = (!\U_VSG|tempVcount\(9) & (!\U_BRC|process_0~1_combout\ & ((\U_BRC|row_count[3]~2_combout\) # (\switch[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(9),
	datab => \U_BRC|row_count[3]~2_combout\,
	datac => \U_BRC|process_0~1_combout\,
	datad => \switch[9]~input_o\,
	combout => \show_row~2_combout\);

-- Location: LCCOMB_X22_Y13_N22
\show_row~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \show_row~3_combout\ = (\show_row~2_combout\) # ((!\switch[9]~input_o\ & ((\U_BRC|row_count[3]~4_combout\) # (\U_BRC|show_image~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|row_count[3]~4_combout\,
	datab => \U_BRC|show_image~2_combout\,
	datac => \switch[9]~input_o\,
	datad => \show_row~2_combout\,
	combout => \show_row~3_combout\);

-- Location: LCCOMB_X23_Y17_N26
\process_1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~5_combout\ = (!\button[0]~input_o\ & (\button[2]~input_o\ & ((\button[1]~input_o\) # (!\switch[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \button[2]~input_o\,
	datac => \button[1]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \process_1~5_combout\);

-- Location: LCCOMB_X27_Y21_N2
\process_1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~6_combout\ = (!\U_VSG|tempHcount\(7) & (!\U_VSG|tempHcount\(8) & (!\U_VSG|tempHcount\(9) & \process_1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(7),
	datab => \U_VSG|tempHcount\(8),
	datac => \U_VSG|tempHcount\(9),
	datad => \process_1~5_combout\,
	combout => \process_1~6_combout\);

-- Location: LCCOMB_X23_Y18_N30
\process_1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~8_combout\ = (\U_VSG|tempHcount\(7)) # ((!\U_VSG|tempHcount\(8) & \button[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(7),
	datac => \U_VSG|tempHcount\(8),
	datad => \button[0]~input_o\,
	combout => \process_1~8_combout\);

-- Location: LCCOMB_X22_Y13_N14
\process_1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~7_combout\ = (\button[2]~input_o\ & ((!\button[1]~input_o\))) # (!\button[2]~input_o\ & (\button[0]~input_o\ & \button[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datac => \button[0]~input_o\,
	datad => \button[1]~input_o\,
	combout => \process_1~7_combout\);

-- Location: LCCOMB_X28_Y17_N8
\U_BCC1|LessThan3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|LessThan3~0_combout\ = (((!\U_VSG|tempHcount\(6)) # (!\U_VSG|tempHcount\(2))) # (!\U_VSG|tempHcount\(7))) # (!\U_VSG|tempHcount\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(5),
	datab => \U_VSG|tempHcount\(7),
	datac => \U_VSG|tempHcount\(2),
	datad => \U_VSG|tempHcount\(6),
	combout => \U_BCC1|LessThan3~0_combout\);

-- Location: LCCOMB_X27_Y17_N22
\U_BCC1|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|LessThan3~1_combout\ = (\U_BCC1|LessThan3~0_combout\) # (!\U_VSG|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_BCC1|LessThan3~0_combout\,
	datad => \U_VSG|Equal0~0_combout\,
	combout => \U_BCC1|LessThan3~1_combout\);

-- Location: LCCOMB_X26_Y17_N16
\process_1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~9_combout\ = (\U_VSG|tempHcount\(8) & (!\process_1~8_combout\ & (!\process_1~7_combout\))) # (!\U_VSG|tempHcount\(8) & ((\process_1~7_combout\ & (!\process_1~8_combout\)) # (!\process_1~7_combout\ & ((!\U_BCC1|LessThan3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(8),
	datab => \process_1~8_combout\,
	datac => \process_1~7_combout\,
	datad => \U_BCC1|LessThan3~1_combout\,
	combout => \process_1~9_combout\);

-- Location: LCCOMB_X22_Y13_N28
\U_BCC1|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|Equal0~0_combout\ = (!\button[0]~input_o\ & \button[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button[0]~input_o\,
	datad => \button[2]~input_o\,
	combout => \U_BCC1|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y17_N8
\process_1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~10_combout\ = (!\U_VSG|tempHcount\(9) & (\switch[9]~input_o\ & ((!\U_BCC1|Equal0~0_combout\) # (!\button[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(9),
	datab => \switch[9]~input_o\,
	datac => \button[1]~input_o\,
	datad => \U_BCC1|Equal0~0_combout\,
	combout => \process_1~10_combout\);

-- Location: LCCOMB_X22_Y13_N4
\process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~2_combout\ = (\button[0]~input_o\ & (\button[2]~input_o\ $ (\button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datac => \button[0]~input_o\,
	datad => \button[1]~input_o\,
	combout => \process_1~2_combout\);

-- Location: LCCOMB_X26_Y17_N12
\process_1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~3_combout\ = (\U_VSG|tempHcount\(8) & (((!\U_VSG|tempHcount\(9) & !\U_BCC1|LessThan3~1_combout\)))) # (!\U_VSG|tempHcount\(8) & (!\U_VSG|tempHcount\(7) & (\U_VSG|tempHcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(8),
	datab => \U_VSG|tempHcount\(7),
	datac => \U_VSG|tempHcount\(9),
	datad => \U_BCC1|LessThan3~1_combout\,
	combout => \process_1~3_combout\);

-- Location: LCCOMB_X26_Y17_N22
\U_BCC|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|process_0~0_combout\ = (\U_VSG|tempHcount\(9) & ((\U_VSG|tempHcount\(7)) # (\U_VSG|tempHcount\(8)))) # (!\U_VSG|tempHcount\(9) & ((!\U_VSG|tempHcount\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(7),
	datac => \U_VSG|tempHcount\(9),
	datad => \U_VSG|tempHcount\(8),
	combout => \U_BCC|process_0~0_combout\);

-- Location: LCCOMB_X27_Y17_N2
\U_BCC|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|process_0~1_combout\ = (\U_BCC|process_0~0_combout\) # ((!\U_VSG|tempHcount\(9) & ((\U_BCC1|LessThan3~0_combout\) # (!\U_VSG|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|Equal0~0_combout\,
	datab => \U_VSG|tempHcount\(9),
	datac => \U_BCC1|LessThan3~0_combout\,
	datad => \U_BCC|process_0~0_combout\,
	combout => \U_BCC|process_0~1_combout\);

-- Location: LCCOMB_X23_Y17_N20
\process_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~4_combout\ = (\process_1~2_combout\ & ((\switch[9]~input_o\ & (\process_1~3_combout\)) # (!\switch[9]~input_o\ & ((!\U_BCC|process_0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~2_combout\,
	datab => \switch[9]~input_o\,
	datac => \process_1~3_combout\,
	datad => \U_BCC|process_0~1_combout\,
	combout => \process_1~4_combout\);

-- Location: LCCOMB_X23_Y17_N6
\process_1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~11_combout\ = (\process_1~6_combout\) # ((\process_1~4_combout\) # ((\process_1~9_combout\ & \process_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~6_combout\,
	datab => \process_1~9_combout\,
	datac => \process_1~10_combout\,
	datad => \process_1~4_combout\,
	combout => \process_1~11_combout\);

-- Location: LCCOMB_X24_Y17_N28
\U_BCC|Equal4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Equal4~0_combout\ = (\switch[6]~input_o\ & (!\switch[5]~input_o\ & !\switch[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datac => \switch[5]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_BCC|Equal4~0_combout\);

-- Location: LCCOMB_X22_Y8_N8
\U_VSG|process_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|process_1~2_combout\ = (\U_VSG|tempVcount\(9)) # (((\U_VSG|tempVcount\(4)) # (!\U_VSG|tempVcount\(3))) # (!\U_VSG|tempVcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(9),
	datab => \U_VSG|tempVcount\(2),
	datac => \U_VSG|tempVcount\(4),
	datad => \U_VSG|tempVcount\(3),
	combout => \U_VSG|process_1~2_combout\);

-- Location: LCCOMB_X22_Y8_N24
\U_BRC1|LessThan2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|LessThan2~0_combout\ = (\U_VSG|tempVcount\(8) & (\U_VSG|tempVcount\(5) & (\U_VSG|tempVcount\(6) & \U_VSG|tempVcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(8),
	datab => \U_VSG|tempVcount\(5),
	datac => \U_VSG|tempVcount\(6),
	datad => \U_VSG|tempVcount\(7),
	combout => \U_BRC1|LessThan2~0_combout\);

-- Location: LCCOMB_X22_Y8_N26
\U_VSG|process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_VSG|process_1~1_combout\ = LCELL((\U_VSG|process_1~2_combout\) # ((\U_VSG|tempVcount\(1) $ (!\U_VSG|tempVcount\(0))) # (!\U_BRC1|LessThan2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(1),
	datab => \U_VSG|tempVcount\(0),
	datac => \U_VSG|process_1~2_combout\,
	datad => \U_BRC1|LessThan2~0_combout\,
	combout => \U_VSG|process_1~1_combout\);

-- Location: CLKCTRL_G17
\U_VSG|process_1~1clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_VSG|process_1~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_VSG|process_1~1clkctrl_outclk\);

-- Location: LCCOMB_X28_Y19_N10
\U_MOVEV|temp_count[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|temp_count[0]~10_combout\ = \U_MOVEV|temp_count\(0) $ (VCC)
-- \U_MOVEV|temp_count[0]~11\ = CARRY(\U_MOVEV|temp_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(0),
	datad => VCC,
	combout => \U_MOVEV|temp_count[0]~10_combout\,
	cout => \U_MOVEV|temp_count[0]~11\);

-- Location: LCCOMB_X28_Y19_N0
\U_MOVEV|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|LessThan0~0_combout\ = (\U_MOVEV|temp_count\(4) & ((\U_MOVEV|temp_count\(1)) # ((\U_MOVEV|temp_count\(2)) # (\U_MOVEV|temp_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(1),
	datab => \U_MOVEV|temp_count\(4),
	datac => \U_MOVEV|temp_count\(2),
	datad => \U_MOVEV|temp_count\(0),
	combout => \U_MOVEV|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y19_N2
\U_MOVEV|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|LessThan0~1_combout\ = (\U_MOVEV|temp_count\(6) & ((\U_MOVEV|temp_count\(5)) # ((\U_MOVEV|temp_count\(3) & \U_MOVEV|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(5),
	datab => \U_MOVEV|temp_count\(3),
	datac => \U_MOVEV|temp_count\(6),
	datad => \U_MOVEV|LessThan0~0_combout\,
	combout => \U_MOVEV|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y19_N8
\U_MOVEV|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|LessThan0~2_combout\ = (\U_MOVEV|temp_count\(9) & ((\U_MOVEV|temp_count\(7)) # ((\U_MOVEV|temp_count\(8)) # (\U_MOVEV|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(9),
	datab => \U_MOVEV|temp_count\(7),
	datac => \U_MOVEV|temp_count\(8),
	datad => \U_MOVEV|LessThan0~1_combout\,
	combout => \U_MOVEV|LessThan0~2_combout\);

-- Location: FF_X28_Y19_N11
\U_MOVEV|temp_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~1clkctrl_outclk\,
	d => \U_MOVEV|temp_count[0]~10_combout\,
	sclr => \U_MOVEV|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEV|temp_count\(0));

-- Location: LCCOMB_X28_Y19_N12
\U_MOVEV|temp_count[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|temp_count[1]~12_combout\ = (\U_MOVEV|temp_count\(1) & (!\U_MOVEV|temp_count[0]~11\)) # (!\U_MOVEV|temp_count\(1) & ((\U_MOVEV|temp_count[0]~11\) # (GND)))
-- \U_MOVEV|temp_count[1]~13\ = CARRY((!\U_MOVEV|temp_count[0]~11\) # (!\U_MOVEV|temp_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(1),
	datad => VCC,
	cin => \U_MOVEV|temp_count[0]~11\,
	combout => \U_MOVEV|temp_count[1]~12_combout\,
	cout => \U_MOVEV|temp_count[1]~13\);

-- Location: FF_X28_Y19_N13
\U_MOVEV|temp_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~1clkctrl_outclk\,
	d => \U_MOVEV|temp_count[1]~12_combout\,
	sclr => \U_MOVEV|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEV|temp_count\(1));

-- Location: LCCOMB_X28_Y19_N14
\U_MOVEV|temp_count[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|temp_count[2]~14_combout\ = (\U_MOVEV|temp_count\(2) & (\U_MOVEV|temp_count[1]~13\ $ (GND))) # (!\U_MOVEV|temp_count\(2) & (!\U_MOVEV|temp_count[1]~13\ & VCC))
-- \U_MOVEV|temp_count[2]~15\ = CARRY((\U_MOVEV|temp_count\(2) & !\U_MOVEV|temp_count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(2),
	datad => VCC,
	cin => \U_MOVEV|temp_count[1]~13\,
	combout => \U_MOVEV|temp_count[2]~14_combout\,
	cout => \U_MOVEV|temp_count[2]~15\);

-- Location: FF_X28_Y19_N15
\U_MOVEV|temp_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~1clkctrl_outclk\,
	d => \U_MOVEV|temp_count[2]~14_combout\,
	sclr => \U_MOVEV|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEV|temp_count\(2));

-- Location: LCCOMB_X28_Y19_N16
\U_MOVEV|temp_count[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|temp_count[3]~16_combout\ = (\U_MOVEV|temp_count\(3) & (!\U_MOVEV|temp_count[2]~15\)) # (!\U_MOVEV|temp_count\(3) & ((\U_MOVEV|temp_count[2]~15\) # (GND)))
-- \U_MOVEV|temp_count[3]~17\ = CARRY((!\U_MOVEV|temp_count[2]~15\) # (!\U_MOVEV|temp_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(3),
	datad => VCC,
	cin => \U_MOVEV|temp_count[2]~15\,
	combout => \U_MOVEV|temp_count[3]~16_combout\,
	cout => \U_MOVEV|temp_count[3]~17\);

-- Location: FF_X28_Y19_N17
\U_MOVEV|temp_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~1clkctrl_outclk\,
	d => \U_MOVEV|temp_count[3]~16_combout\,
	sclr => \U_MOVEV|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEV|temp_count\(3));

-- Location: LCCOMB_X28_Y19_N18
\U_MOVEV|temp_count[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|temp_count[4]~18_combout\ = (\U_MOVEV|temp_count\(4) & (\U_MOVEV|temp_count[3]~17\ $ (GND))) # (!\U_MOVEV|temp_count\(4) & (!\U_MOVEV|temp_count[3]~17\ & VCC))
-- \U_MOVEV|temp_count[4]~19\ = CARRY((\U_MOVEV|temp_count\(4) & !\U_MOVEV|temp_count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(4),
	datad => VCC,
	cin => \U_MOVEV|temp_count[3]~17\,
	combout => \U_MOVEV|temp_count[4]~18_combout\,
	cout => \U_MOVEV|temp_count[4]~19\);

-- Location: FF_X28_Y19_N19
\U_MOVEV|temp_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~1clkctrl_outclk\,
	d => \U_MOVEV|temp_count[4]~18_combout\,
	sclr => \U_MOVEV|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEV|temp_count\(4));

-- Location: LCCOMB_X28_Y19_N20
\U_MOVEV|temp_count[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|temp_count[5]~20_combout\ = (\U_MOVEV|temp_count\(5) & (!\U_MOVEV|temp_count[4]~19\)) # (!\U_MOVEV|temp_count\(5) & ((\U_MOVEV|temp_count[4]~19\) # (GND)))
-- \U_MOVEV|temp_count[5]~21\ = CARRY((!\U_MOVEV|temp_count[4]~19\) # (!\U_MOVEV|temp_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(5),
	datad => VCC,
	cin => \U_MOVEV|temp_count[4]~19\,
	combout => \U_MOVEV|temp_count[5]~20_combout\,
	cout => \U_MOVEV|temp_count[5]~21\);

-- Location: FF_X28_Y19_N21
\U_MOVEV|temp_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~1clkctrl_outclk\,
	d => \U_MOVEV|temp_count[5]~20_combout\,
	sclr => \U_MOVEV|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEV|temp_count\(5));

-- Location: LCCOMB_X28_Y19_N22
\U_MOVEV|temp_count[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|temp_count[6]~22_combout\ = (\U_MOVEV|temp_count\(6) & (\U_MOVEV|temp_count[5]~21\ $ (GND))) # (!\U_MOVEV|temp_count\(6) & (!\U_MOVEV|temp_count[5]~21\ & VCC))
-- \U_MOVEV|temp_count[6]~23\ = CARRY((\U_MOVEV|temp_count\(6) & !\U_MOVEV|temp_count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(6),
	datad => VCC,
	cin => \U_MOVEV|temp_count[5]~21\,
	combout => \U_MOVEV|temp_count[6]~22_combout\,
	cout => \U_MOVEV|temp_count[6]~23\);

-- Location: FF_X28_Y19_N23
\U_MOVEV|temp_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~1clkctrl_outclk\,
	d => \U_MOVEV|temp_count[6]~22_combout\,
	sclr => \U_MOVEV|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEV|temp_count\(6));

-- Location: LCCOMB_X28_Y19_N24
\U_MOVEV|temp_count[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|temp_count[7]~24_combout\ = (\U_MOVEV|temp_count\(7) & (!\U_MOVEV|temp_count[6]~23\)) # (!\U_MOVEV|temp_count\(7) & ((\U_MOVEV|temp_count[6]~23\) # (GND)))
-- \U_MOVEV|temp_count[7]~25\ = CARRY((!\U_MOVEV|temp_count[6]~23\) # (!\U_MOVEV|temp_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(7),
	datad => VCC,
	cin => \U_MOVEV|temp_count[6]~23\,
	combout => \U_MOVEV|temp_count[7]~24_combout\,
	cout => \U_MOVEV|temp_count[7]~25\);

-- Location: FF_X28_Y19_N25
\U_MOVEV|temp_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~1clkctrl_outclk\,
	d => \U_MOVEV|temp_count[7]~24_combout\,
	sclr => \U_MOVEV|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEV|temp_count\(7));

-- Location: LCCOMB_X28_Y19_N26
\U_MOVEV|temp_count[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|temp_count[8]~26_combout\ = (\U_MOVEV|temp_count\(8) & (\U_MOVEV|temp_count[7]~25\ $ (GND))) # (!\U_MOVEV|temp_count\(8) & (!\U_MOVEV|temp_count[7]~25\ & VCC))
-- \U_MOVEV|temp_count[8]~27\ = CARRY((\U_MOVEV|temp_count\(8) & !\U_MOVEV|temp_count[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(8),
	datad => VCC,
	cin => \U_MOVEV|temp_count[7]~25\,
	combout => \U_MOVEV|temp_count[8]~26_combout\,
	cout => \U_MOVEV|temp_count[8]~27\);

-- Location: FF_X28_Y19_N27
\U_MOVEV|temp_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~1clkctrl_outclk\,
	d => \U_MOVEV|temp_count[8]~26_combout\,
	sclr => \U_MOVEV|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEV|temp_count\(8));

-- Location: LCCOMB_X28_Y19_N28
\U_MOVEV|temp_count[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_MOVEV|temp_count[9]~28_combout\ = \U_MOVEV|temp_count[8]~27\ $ (\U_MOVEV|temp_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_MOVEV|temp_count\(9),
	cin => \U_MOVEV|temp_count[8]~27\,
	combout => \U_MOVEV|temp_count[9]~28_combout\);

-- Location: FF_X28_Y19_N29
\U_MOVEV|temp_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_VSG|process_1~1clkctrl_outclk\,
	d => \U_MOVEV|temp_count[9]~28_combout\,
	sclr => \U_MOVEV|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_MOVEV|temp_count\(9));

-- Location: LCCOMB_X27_Y21_N26
\U_BCC|show_image~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|show_image~1_combout\ = (\U_BCC|Equal4~0_combout\ & (\U_MOVEV|temp_count\(9) & ((!\U_VSG|tempHcount\(9)) # (!\U_VSG|tempHcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|Equal4~0_combout\,
	datab => \U_VSG|tempHcount\(8),
	datac => \U_VSG|tempHcount\(9),
	datad => \U_MOVEV|temp_count\(9),
	combout => \U_BCC|show_image~1_combout\);

-- Location: LCCOMB_X28_Y17_N2
\U_BCC|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add1~0_combout\ = (!\U_MOVEV|temp_count\(8)) # (!\U_MOVEV|temp_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MOVEV|temp_count\(9),
	datad => \U_MOVEV|temp_count\(8),
	combout => \U_BCC|Add1~0_combout\);

-- Location: LCCOMB_X28_Y17_N4
\U_BCC|Add1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add1~1_combout\ = \U_MOVEV|temp_count\(9) $ (\U_MOVEV|temp_count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_MOVEV|temp_count\(9),
	datad => \U_MOVEV|temp_count\(8),
	combout => \U_BCC|Add1~1_combout\);

-- Location: LCCOMB_X28_Y17_N12
\U_BCC|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan4~1_cout\ = CARRY((\U_VSG|tempHcount\(0) & \U_MOVEV|temp_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(0),
	datab => \U_MOVEV|temp_count\(1),
	datad => VCC,
	cout => \U_BCC|LessThan4~1_cout\);

-- Location: LCCOMB_X28_Y17_N14
\U_BCC|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan4~3_cout\ = CARRY((\U_MOVEV|temp_count\(2) & (!\U_VSG|tempHcount\(1) & !\U_BCC|LessThan4~1_cout\)) # (!\U_MOVEV|temp_count\(2) & ((!\U_BCC|LessThan4~1_cout\) # (!\U_VSG|tempHcount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(2),
	datab => \U_VSG|tempHcount\(1),
	datad => VCC,
	cin => \U_BCC|LessThan4~1_cout\,
	cout => \U_BCC|LessThan4~3_cout\);

-- Location: LCCOMB_X28_Y17_N16
\U_BCC|LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan4~5_cout\ = CARRY((\U_VSG|tempHcount\(2) & ((\U_MOVEV|temp_count\(3)) # (!\U_BCC|LessThan4~3_cout\))) # (!\U_VSG|tempHcount\(2) & (\U_MOVEV|temp_count\(3) & !\U_BCC|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(2),
	datab => \U_MOVEV|temp_count\(3),
	datad => VCC,
	cin => \U_BCC|LessThan4~3_cout\,
	cout => \U_BCC|LessThan4~5_cout\);

-- Location: LCCOMB_X28_Y17_N18
\U_BCC|LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan4~7_cout\ = CARRY((\U_MOVEV|temp_count\(4) & (!\U_VSG|tempHcount\(3) & !\U_BCC|LessThan4~5_cout\)) # (!\U_MOVEV|temp_count\(4) & ((!\U_BCC|LessThan4~5_cout\) # (!\U_VSG|tempHcount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(4),
	datab => \U_VSG|tempHcount\(3),
	datad => VCC,
	cin => \U_BCC|LessThan4~5_cout\,
	cout => \U_BCC|LessThan4~7_cout\);

-- Location: LCCOMB_X28_Y17_N20
\U_BCC|LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan4~9_cout\ = CARRY((\U_VSG|tempHcount\(4) & ((\U_MOVEV|temp_count\(5)) # (!\U_BCC|LessThan4~7_cout\))) # (!\U_VSG|tempHcount\(4) & (\U_MOVEV|temp_count\(5) & !\U_BCC|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(4),
	datab => \U_MOVEV|temp_count\(5),
	datad => VCC,
	cin => \U_BCC|LessThan4~7_cout\,
	cout => \U_BCC|LessThan4~9_cout\);

-- Location: LCCOMB_X28_Y17_N22
\U_BCC|LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan4~11_cout\ = CARRY((\U_VSG|tempHcount\(5) & (!\U_MOVEV|temp_count\(6) & !\U_BCC|LessThan4~9_cout\)) # (!\U_VSG|tempHcount\(5) & ((!\U_BCC|LessThan4~9_cout\) # (!\U_MOVEV|temp_count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(5),
	datab => \U_MOVEV|temp_count\(6),
	datad => VCC,
	cin => \U_BCC|LessThan4~9_cout\,
	cout => \U_BCC|LessThan4~11_cout\);

-- Location: LCCOMB_X28_Y17_N24
\U_BCC|LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan4~13_cout\ = CARRY((\U_MOVEV|temp_count\(7) & ((\U_VSG|tempHcount\(6)) # (!\U_BCC|LessThan4~11_cout\))) # (!\U_MOVEV|temp_count\(7) & (\U_VSG|tempHcount\(6) & !\U_BCC|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(7),
	datab => \U_VSG|tempHcount\(6),
	datad => VCC,
	cin => \U_BCC|LessThan4~11_cout\,
	cout => \U_BCC|LessThan4~13_cout\);

-- Location: LCCOMB_X28_Y17_N26
\U_BCC|LessThan4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan4~15_cout\ = CARRY((\U_VSG|tempHcount\(7) & (\U_MOVEV|temp_count\(8) & !\U_BCC|LessThan4~13_cout\)) # (!\U_VSG|tempHcount\(7) & ((\U_MOVEV|temp_count\(8)) # (!\U_BCC|LessThan4~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(7),
	datab => \U_MOVEV|temp_count\(8),
	datad => VCC,
	cin => \U_BCC|LessThan4~13_cout\,
	cout => \U_BCC|LessThan4~15_cout\);

-- Location: LCCOMB_X28_Y17_N28
\U_BCC|LessThan4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan4~17_cout\ = CARRY((\U_VSG|tempHcount\(8) & ((\U_BCC|Add1~1_combout\) # (!\U_BCC|LessThan4~15_cout\))) # (!\U_VSG|tempHcount\(8) & (\U_BCC|Add1~1_combout\ & !\U_BCC|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(8),
	datab => \U_BCC|Add1~1_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan4~15_cout\,
	cout => \U_BCC|LessThan4~17_cout\);

-- Location: LCCOMB_X28_Y17_N30
\U_BCC|LessThan4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan4~18_combout\ = (\U_VSG|tempHcount\(9) & ((\U_BCC|LessThan4~17_cout\) # (\U_BCC|Add1~0_combout\))) # (!\U_VSG|tempHcount\(9) & (\U_BCC|LessThan4~17_cout\ & \U_BCC|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(9),
	datad => \U_BCC|Add1~0_combout\,
	cin => \U_BCC|LessThan4~17_cout\,
	combout => \U_BCC|LessThan4~18_combout\);

-- Location: LCCOMB_X27_Y17_N4
\U_BCC|show_image~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|show_image~0_combout\ = (\U_BCC|Equal4~0_combout\ & ((\U_VSG|tempHcount\(9) & (\U_MOVEV|temp_count\(9) & \U_VSG|tempHcount\(8))) # (!\U_VSG|tempHcount\(9) & (!\U_MOVEV|temp_count\(9) & !\U_VSG|tempHcount\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|Equal4~0_combout\,
	datab => \U_VSG|tempHcount\(9),
	datac => \U_MOVEV|temp_count\(9),
	datad => \U_VSG|tempHcount\(8),
	combout => \U_BCC|show_image~0_combout\);

-- Location: LCCOMB_X27_Y17_N28
\U_BCC|LessThan5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan5~0_combout\ = (\U_VSG|tempHcount\(1) & (!\U_MOVEV|temp_count\(1) & (!\U_MOVEV|temp_count\(2) & !\U_VSG|tempHcount\(0)))) # (!\U_VSG|tempHcount\(1) & (((!\U_MOVEV|temp_count\(1) & !\U_VSG|tempHcount\(0))) # (!\U_MOVEV|temp_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(1),
	datab => \U_MOVEV|temp_count\(1),
	datac => \U_MOVEV|temp_count\(2),
	datad => \U_VSG|tempHcount\(0),
	combout => \U_BCC|LessThan5~0_combout\);

-- Location: LCCOMB_X27_Y17_N24
\U_BCC|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan5~1_combout\ = (\U_MOVEV|temp_count\(3) & ((\U_VSG|tempHcount\(2)) # (!\U_BCC|LessThan5~0_combout\))) # (!\U_MOVEV|temp_count\(3) & (\U_VSG|tempHcount\(2) & !\U_BCC|LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(3),
	datac => \U_VSG|tempHcount\(2),
	datad => \U_BCC|LessThan5~0_combout\,
	combout => \U_BCC|LessThan5~1_combout\);

-- Location: LCCOMB_X27_Y17_N0
\U_BCC|LessThan5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan5~2_combout\ = (\U_VSG|tempHcount\(3) & (!\U_MOVEV|temp_count\(4) & !\U_BCC|LessThan5~1_combout\)) # (!\U_VSG|tempHcount\(3) & ((!\U_BCC|LessThan5~1_combout\) # (!\U_MOVEV|temp_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(3),
	datac => \U_MOVEV|temp_count\(4),
	datad => \U_BCC|LessThan5~1_combout\,
	combout => \U_BCC|LessThan5~2_combout\);

-- Location: LCCOMB_X27_Y17_N10
\U_BCC|show_image~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|show_image~5_combout\ = (\U_MOVEV|temp_count\(5) & ((\U_VSG|tempHcount\(4)) # (!\U_BCC|LessThan5~2_combout\))) # (!\U_MOVEV|temp_count\(5) & (\U_VSG|tempHcount\(4) & !\U_BCC|LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(5),
	datac => \U_VSG|tempHcount\(4),
	datad => \U_BCC|LessThan5~2_combout\,
	combout => \U_BCC|show_image~5_combout\);

-- Location: LCCOMB_X27_Y17_N18
\U_BCC|show_image~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|show_image~6_combout\ = (\U_MOVEV|temp_count\(6) & ((\U_VSG|tempHcount\(5)) # (\U_BCC|show_image~5_combout\))) # (!\U_MOVEV|temp_count\(6) & (\U_VSG|tempHcount\(5) & \U_BCC|show_image~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(6),
	datac => \U_VSG|tempHcount\(5),
	datad => \U_BCC|show_image~5_combout\,
	combout => \U_BCC|show_image~6_combout\);

-- Location: LCCOMB_X27_Y17_N16
\U_BCC|show_image~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|show_image~3_combout\ = (\U_MOVEV|temp_count\(7) & (!\U_VSG|tempHcount\(6) & !\U_BCC|show_image~6_combout\)) # (!\U_MOVEV|temp_count\(7) & ((!\U_BCC|show_image~6_combout\) # (!\U_VSG|tempHcount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(7),
	datac => \U_VSG|tempHcount\(6),
	datad => \U_BCC|show_image~6_combout\,
	combout => \U_BCC|show_image~3_combout\);

-- Location: LCCOMB_X27_Y17_N26
\U_BCC|show_image~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|show_image~4_combout\ = (\U_BCC|show_image~0_combout\ & ((\U_MOVEV|temp_count\(8) & (!\U_VSG|tempHcount\(7) & \U_BCC|show_image~3_combout\)) # (!\U_MOVEV|temp_count\(8) & ((\U_BCC|show_image~3_combout\) # (!\U_VSG|tempHcount\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(8),
	datab => \U_VSG|tempHcount\(7),
	datac => \U_BCC|show_image~0_combout\,
	datad => \U_BCC|show_image~3_combout\,
	combout => \U_BCC|show_image~4_combout\);

-- Location: LCCOMB_X26_Y17_N8
\U_BCC|show_image~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|show_image~2_combout\ = (\U_BCC|show_image~1_combout\) # ((\U_BCC|show_image~4_combout\) # ((\U_BCC|Equal4~0_combout\ & \U_BCC|LessThan4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|show_image~1_combout\,
	datab => \U_BCC|Equal4~0_combout\,
	datac => \U_BCC|LessThan4~18_combout\,
	datad => \U_BCC|show_image~4_combout\,
	combout => \U_BCC|show_image~2_combout\);

-- Location: LCCOMB_X23_Y18_N28
\process_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!\U_VSG|tempHcount\(8) & !\U_VSG|tempHcount\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VSG|tempHcount\(8),
	datad => \U_VSG|tempHcount\(7),
	combout => \process_1~0_combout\);

-- Location: LCCOMB_X22_Y12_N0
\process_1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = (!\U_BRC1|LessThan2~0_combout\ & (!\U_VSG|tempVcount\(9) & ((\process_1~0_combout\) # (!\U_VSG|tempHcount\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(9),
	datab => \U_BRC1|LessThan2~0_combout\,
	datac => \U_VSG|tempVcount\(9),
	datad => \process_1~0_combout\,
	combout => \process_1~1_combout\);

-- Location: LCCOMB_X27_Y17_N8
\U_BCC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|process_0~2_combout\ = (\U_VSG|tempHcount\(9)) # ((\U_VSG|tempHcount\(8) & (\U_VSG|tempHcount\(7))) # (!\U_VSG|tempHcount\(8) & ((\U_BCC1|LessThan3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(8),
	datab => \U_VSG|tempHcount\(7),
	datac => \U_VSG|tempHcount\(9),
	datad => \U_BCC1|LessThan3~1_combout\,
	combout => \U_BCC|process_0~2_combout\);

-- Location: LCCOMB_X22_Y17_N4
\U_BCC|Equal5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Equal5~0_combout\ = (!\switch[7]~input_o\ & (!\switch[6]~input_o\ & \switch[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[7]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \switch[5]~input_o\,
	combout => \U_BCC|Equal5~0_combout\);

-- Location: LCCOMB_X22_Y13_N6
\process_1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~12_combout\ = (!\switch[9]~input_o\ & (\button[2]~input_o\ $ (((!\button[1]~input_o\) # (!\button[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \button[0]~input_o\,
	datac => \switch[9]~input_o\,
	datad => \button[1]~input_o\,
	combout => \process_1~12_combout\);

-- Location: LCCOMB_X27_Y19_N6
\U_BCC|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add3~0_combout\ = \U_MOVEV|temp_count\(1) $ (VCC)
-- \U_BCC|Add3~1\ = CARRY(\U_MOVEV|temp_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(1),
	datad => VCC,
	combout => \U_BCC|Add3~0_combout\,
	cout => \U_BCC|Add3~1\);

-- Location: LCCOMB_X27_Y19_N8
\U_BCC|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add3~2_combout\ = (\U_MOVEV|temp_count\(2) & (\U_BCC|Add3~1\ & VCC)) # (!\U_MOVEV|temp_count\(2) & (!\U_BCC|Add3~1\))
-- \U_BCC|Add3~3\ = CARRY((!\U_MOVEV|temp_count\(2) & !\U_BCC|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(2),
	datad => VCC,
	cin => \U_BCC|Add3~1\,
	combout => \U_BCC|Add3~2_combout\,
	cout => \U_BCC|Add3~3\);

-- Location: LCCOMB_X27_Y19_N10
\U_BCC|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add3~4_combout\ = (\U_MOVEV|temp_count\(3) & ((GND) # (!\U_BCC|Add3~3\))) # (!\U_MOVEV|temp_count\(3) & (\U_BCC|Add3~3\ $ (GND)))
-- \U_BCC|Add3~5\ = CARRY((\U_MOVEV|temp_count\(3)) # (!\U_BCC|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(3),
	datad => VCC,
	cin => \U_BCC|Add3~3\,
	combout => \U_BCC|Add3~4_combout\,
	cout => \U_BCC|Add3~5\);

-- Location: LCCOMB_X27_Y19_N12
\U_BCC|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add3~6_combout\ = (\U_MOVEV|temp_count\(4) & (\U_BCC|Add3~5\ & VCC)) # (!\U_MOVEV|temp_count\(4) & (!\U_BCC|Add3~5\))
-- \U_BCC|Add3~7\ = CARRY((!\U_MOVEV|temp_count\(4) & !\U_BCC|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(4),
	datad => VCC,
	cin => \U_BCC|Add3~5\,
	combout => \U_BCC|Add3~6_combout\,
	cout => \U_BCC|Add3~7\);

-- Location: LCCOMB_X27_Y19_N14
\U_BCC|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add3~8_combout\ = (\U_MOVEV|temp_count\(5) & ((GND) # (!\U_BCC|Add3~7\))) # (!\U_MOVEV|temp_count\(5) & (\U_BCC|Add3~7\ $ (GND)))
-- \U_BCC|Add3~9\ = CARRY((\U_MOVEV|temp_count\(5)) # (!\U_BCC|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(5),
	datad => VCC,
	cin => \U_BCC|Add3~7\,
	combout => \U_BCC|Add3~8_combout\,
	cout => \U_BCC|Add3~9\);

-- Location: LCCOMB_X27_Y19_N16
\U_BCC|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add3~10_combout\ = (\U_MOVEV|temp_count\(6) & (\U_BCC|Add3~9\ & VCC)) # (!\U_MOVEV|temp_count\(6) & (!\U_BCC|Add3~9\))
-- \U_BCC|Add3~11\ = CARRY((!\U_MOVEV|temp_count\(6) & !\U_BCC|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(6),
	datad => VCC,
	cin => \U_BCC|Add3~9\,
	combout => \U_BCC|Add3~10_combout\,
	cout => \U_BCC|Add3~11\);

-- Location: LCCOMB_X27_Y19_N18
\U_BCC|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add3~12_combout\ = (\U_MOVEV|temp_count\(7) & ((GND) # (!\U_BCC|Add3~11\))) # (!\U_MOVEV|temp_count\(7) & (\U_BCC|Add3~11\ $ (GND)))
-- \U_BCC|Add3~13\ = CARRY((\U_MOVEV|temp_count\(7)) # (!\U_BCC|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(7),
	datad => VCC,
	cin => \U_BCC|Add3~11\,
	combout => \U_BCC|Add3~12_combout\,
	cout => \U_BCC|Add3~13\);

-- Location: LCCOMB_X27_Y19_N20
\U_BCC|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add3~14_combout\ = (\U_MOVEV|temp_count\(8) & (!\U_BCC|Add3~13\)) # (!\U_MOVEV|temp_count\(8) & ((\U_BCC|Add3~13\) # (GND)))
-- \U_BCC|Add3~15\ = CARRY((!\U_BCC|Add3~13\) # (!\U_MOVEV|temp_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(8),
	datad => VCC,
	cin => \U_BCC|Add3~13\,
	combout => \U_BCC|Add3~14_combout\,
	cout => \U_BCC|Add3~15\);

-- Location: LCCOMB_X27_Y19_N22
\U_BCC|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add3~16_combout\ = (\U_MOVEV|temp_count\(9) & ((GND) # (!\U_BCC|Add3~15\))) # (!\U_MOVEV|temp_count\(9) & (\U_BCC|Add3~15\ $ (GND)))
-- \U_BCC|Add3~17\ = CARRY((\U_MOVEV|temp_count\(9)) # (!\U_BCC|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(9),
	datad => VCC,
	cin => \U_BCC|Add3~15\,
	combout => \U_BCC|Add3~16_combout\,
	cout => \U_BCC|Add3~17\);

-- Location: LCCOMB_X27_Y19_N24
\U_BCC|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add3~18_combout\ = \U_BCC|Add3~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCC|Add3~17\,
	combout => \U_BCC|Add3~18_combout\);

-- Location: LCCOMB_X26_Y19_N0
\U_BCC|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan6~1_cout\ = CARRY((!\U_BCC|Add3~0_combout\ & \U_VSG|tempHcount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|Add3~0_combout\,
	datab => \U_VSG|tempHcount\(0),
	datad => VCC,
	cout => \U_BCC|LessThan6~1_cout\);

-- Location: LCCOMB_X26_Y19_N2
\U_BCC|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan6~3_cout\ = CARRY((\U_VSG|tempHcount\(1) & (\U_BCC|Add3~2_combout\ & !\U_BCC|LessThan6~1_cout\)) # (!\U_VSG|tempHcount\(1) & ((\U_BCC|Add3~2_combout\) # (!\U_BCC|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(1),
	datab => \U_BCC|Add3~2_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan6~1_cout\,
	cout => \U_BCC|LessThan6~3_cout\);

-- Location: LCCOMB_X26_Y19_N4
\U_BCC|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan6~5_cout\ = CARRY((\U_VSG|tempHcount\(2) & ((!\U_BCC|LessThan6~3_cout\) # (!\U_BCC|Add3~4_combout\))) # (!\U_VSG|tempHcount\(2) & (!\U_BCC|Add3~4_combout\ & !\U_BCC|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(2),
	datab => \U_BCC|Add3~4_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan6~3_cout\,
	cout => \U_BCC|LessThan6~5_cout\);

-- Location: LCCOMB_X26_Y19_N6
\U_BCC|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan6~7_cout\ = CARRY((\U_VSG|tempHcount\(3) & (\U_BCC|Add3~6_combout\ & !\U_BCC|LessThan6~5_cout\)) # (!\U_VSG|tempHcount\(3) & ((\U_BCC|Add3~6_combout\) # (!\U_BCC|LessThan6~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(3),
	datab => \U_BCC|Add3~6_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan6~5_cout\,
	cout => \U_BCC|LessThan6~7_cout\);

-- Location: LCCOMB_X26_Y19_N8
\U_BCC|LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan6~9_cout\ = CARRY((\U_VSG|tempHcount\(4) & ((!\U_BCC|LessThan6~7_cout\) # (!\U_BCC|Add3~8_combout\))) # (!\U_VSG|tempHcount\(4) & (!\U_BCC|Add3~8_combout\ & !\U_BCC|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(4),
	datab => \U_BCC|Add3~8_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan6~7_cout\,
	cout => \U_BCC|LessThan6~9_cout\);

-- Location: LCCOMB_X26_Y19_N10
\U_BCC|LessThan6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan6~11_cout\ = CARRY((\U_VSG|tempHcount\(5) & (\U_BCC|Add3~10_combout\ & !\U_BCC|LessThan6~9_cout\)) # (!\U_VSG|tempHcount\(5) & ((\U_BCC|Add3~10_combout\) # (!\U_BCC|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(5),
	datab => \U_BCC|Add3~10_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan6~9_cout\,
	cout => \U_BCC|LessThan6~11_cout\);

-- Location: LCCOMB_X26_Y19_N12
\U_BCC|LessThan6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan6~13_cout\ = CARRY((\U_VSG|tempHcount\(6) & ((!\U_BCC|LessThan6~11_cout\) # (!\U_BCC|Add3~12_combout\))) # (!\U_VSG|tempHcount\(6) & (!\U_BCC|Add3~12_combout\ & !\U_BCC|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(6),
	datab => \U_BCC|Add3~12_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan6~11_cout\,
	cout => \U_BCC|LessThan6~13_cout\);

-- Location: LCCOMB_X26_Y19_N14
\U_BCC|LessThan6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan6~15_cout\ = CARRY((\U_BCC|Add3~14_combout\ & ((!\U_BCC|LessThan6~13_cout\) # (!\U_VSG|tempHcount\(7)))) # (!\U_BCC|Add3~14_combout\ & (!\U_VSG|tempHcount\(7) & !\U_BCC|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|Add3~14_combout\,
	datab => \U_VSG|tempHcount\(7),
	datad => VCC,
	cin => \U_BCC|LessThan6~13_cout\,
	cout => \U_BCC|LessThan6~15_cout\);

-- Location: LCCOMB_X26_Y19_N16
\U_BCC|LessThan6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan6~17_cout\ = CARRY((\U_VSG|tempHcount\(8) & ((!\U_BCC|LessThan6~15_cout\) # (!\U_BCC|Add3~16_combout\))) # (!\U_VSG|tempHcount\(8) & (!\U_BCC|Add3~16_combout\ & !\U_BCC|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(8),
	datab => \U_BCC|Add3~16_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan6~15_cout\,
	cout => \U_BCC|LessThan6~17_cout\);

-- Location: LCCOMB_X26_Y19_N18
\U_BCC|LessThan6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan6~18_combout\ = (\U_VSG|tempHcount\(9) & ((\U_BCC|LessThan6~17_cout\) # (!\U_BCC|Add3~18_combout\))) # (!\U_VSG|tempHcount\(9) & (\U_BCC|LessThan6~17_cout\ & !\U_BCC|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(9),
	datad => \U_BCC|Add3~18_combout\,
	cin => \U_BCC|LessThan6~17_cout\,
	combout => \U_BCC|LessThan6~18_combout\);

-- Location: LCCOMB_X28_Y21_N4
\U_BCC|Add4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add4~0_combout\ = \U_MOVEV|temp_count\(1) $ (VCC)
-- \U_BCC|Add4~1\ = CARRY(\U_MOVEV|temp_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(1),
	datad => VCC,
	combout => \U_BCC|Add4~0_combout\,
	cout => \U_BCC|Add4~1\);

-- Location: LCCOMB_X28_Y21_N6
\U_BCC|Add4~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add4~2_combout\ = (\U_MOVEV|temp_count\(2) & (\U_BCC|Add4~1\ & VCC)) # (!\U_MOVEV|temp_count\(2) & (!\U_BCC|Add4~1\))
-- \U_BCC|Add4~3\ = CARRY((!\U_MOVEV|temp_count\(2) & !\U_BCC|Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(2),
	datad => VCC,
	cin => \U_BCC|Add4~1\,
	combout => \U_BCC|Add4~2_combout\,
	cout => \U_BCC|Add4~3\);

-- Location: LCCOMB_X28_Y21_N8
\U_BCC|Add4~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add4~4_combout\ = (\U_MOVEV|temp_count\(3) & ((GND) # (!\U_BCC|Add4~3\))) # (!\U_MOVEV|temp_count\(3) & (\U_BCC|Add4~3\ $ (GND)))
-- \U_BCC|Add4~5\ = CARRY((\U_MOVEV|temp_count\(3)) # (!\U_BCC|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(3),
	datad => VCC,
	cin => \U_BCC|Add4~3\,
	combout => \U_BCC|Add4~4_combout\,
	cout => \U_BCC|Add4~5\);

-- Location: LCCOMB_X28_Y21_N10
\U_BCC|Add4~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add4~6_combout\ = (\U_MOVEV|temp_count\(4) & (\U_BCC|Add4~5\ & VCC)) # (!\U_MOVEV|temp_count\(4) & (!\U_BCC|Add4~5\))
-- \U_BCC|Add4~7\ = CARRY((!\U_MOVEV|temp_count\(4) & !\U_BCC|Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(4),
	datad => VCC,
	cin => \U_BCC|Add4~5\,
	combout => \U_BCC|Add4~6_combout\,
	cout => \U_BCC|Add4~7\);

-- Location: LCCOMB_X28_Y21_N12
\U_BCC|Add4~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add4~8_combout\ = (\U_MOVEV|temp_count\(5) & ((GND) # (!\U_BCC|Add4~7\))) # (!\U_MOVEV|temp_count\(5) & (\U_BCC|Add4~7\ $ (GND)))
-- \U_BCC|Add4~9\ = CARRY((\U_MOVEV|temp_count\(5)) # (!\U_BCC|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(5),
	datad => VCC,
	cin => \U_BCC|Add4~7\,
	combout => \U_BCC|Add4~8_combout\,
	cout => \U_BCC|Add4~9\);

-- Location: LCCOMB_X28_Y21_N14
\U_BCC|Add4~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add4~10_combout\ = (\U_MOVEV|temp_count\(6) & (\U_BCC|Add4~9\ & VCC)) # (!\U_MOVEV|temp_count\(6) & (!\U_BCC|Add4~9\))
-- \U_BCC|Add4~11\ = CARRY((!\U_MOVEV|temp_count\(6) & !\U_BCC|Add4~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(6),
	datad => VCC,
	cin => \U_BCC|Add4~9\,
	combout => \U_BCC|Add4~10_combout\,
	cout => \U_BCC|Add4~11\);

-- Location: LCCOMB_X28_Y21_N16
\U_BCC|Add4~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add4~12_combout\ = (\U_MOVEV|temp_count\(7) & ((GND) # (!\U_BCC|Add4~11\))) # (!\U_MOVEV|temp_count\(7) & (\U_BCC|Add4~11\ $ (GND)))
-- \U_BCC|Add4~13\ = CARRY((\U_MOVEV|temp_count\(7)) # (!\U_BCC|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_MOVEV|temp_count\(7),
	datad => VCC,
	cin => \U_BCC|Add4~11\,
	combout => \U_BCC|Add4~12_combout\,
	cout => \U_BCC|Add4~13\);

-- Location: LCCOMB_X28_Y21_N18
\U_BCC|Add4~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add4~14_combout\ = (\U_MOVEV|temp_count\(8) & (\U_BCC|Add4~13\ & VCC)) # (!\U_MOVEV|temp_count\(8) & (!\U_BCC|Add4~13\))
-- \U_BCC|Add4~15\ = CARRY((!\U_MOVEV|temp_count\(8) & !\U_BCC|Add4~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(8),
	datad => VCC,
	cin => \U_BCC|Add4~13\,
	combout => \U_BCC|Add4~14_combout\,
	cout => \U_BCC|Add4~15\);

-- Location: LCCOMB_X28_Y21_N20
\U_BCC|Add4~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add4~16_combout\ = (\U_MOVEV|temp_count\(9) & (\U_BCC|Add4~15\ $ (GND))) # (!\U_MOVEV|temp_count\(9) & (!\U_BCC|Add4~15\ & VCC))
-- \U_BCC|Add4~17\ = CARRY((\U_MOVEV|temp_count\(9) & !\U_BCC|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_MOVEV|temp_count\(9),
	datad => VCC,
	cin => \U_BCC|Add4~15\,
	combout => \U_BCC|Add4~16_combout\,
	cout => \U_BCC|Add4~17\);

-- Location: LCCOMB_X28_Y21_N22
\U_BCC|Add4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add4~18_combout\ = \U_BCC|Add4~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_BCC|Add4~17\,
	combout => \U_BCC|Add4~18_combout\);

-- Location: LCCOMB_X27_Y21_N6
\U_BCC|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan7~1_cout\ = CARRY((!\U_VSG|tempHcount\(0) & \U_BCC|Add4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(0),
	datab => \U_BCC|Add4~0_combout\,
	datad => VCC,
	cout => \U_BCC|LessThan7~1_cout\);

-- Location: LCCOMB_X27_Y21_N8
\U_BCC|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan7~3_cout\ = CARRY((\U_BCC|Add4~2_combout\ & (\U_VSG|tempHcount\(1) & !\U_BCC|LessThan7~1_cout\)) # (!\U_BCC|Add4~2_combout\ & ((\U_VSG|tempHcount\(1)) # (!\U_BCC|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|Add4~2_combout\,
	datab => \U_VSG|tempHcount\(1),
	datad => VCC,
	cin => \U_BCC|LessThan7~1_cout\,
	cout => \U_BCC|LessThan7~3_cout\);

-- Location: LCCOMB_X27_Y21_N10
\U_BCC|LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan7~5_cout\ = CARRY((\U_VSG|tempHcount\(2) & (\U_BCC|Add4~4_combout\ & !\U_BCC|LessThan7~3_cout\)) # (!\U_VSG|tempHcount\(2) & ((\U_BCC|Add4~4_combout\) # (!\U_BCC|LessThan7~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(2),
	datab => \U_BCC|Add4~4_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan7~3_cout\,
	cout => \U_BCC|LessThan7~5_cout\);

-- Location: LCCOMB_X27_Y21_N12
\U_BCC|LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan7~7_cout\ = CARRY((\U_VSG|tempHcount\(3) & ((!\U_BCC|LessThan7~5_cout\) # (!\U_BCC|Add4~6_combout\))) # (!\U_VSG|tempHcount\(3) & (!\U_BCC|Add4~6_combout\ & !\U_BCC|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(3),
	datab => \U_BCC|Add4~6_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan7~5_cout\,
	cout => \U_BCC|LessThan7~7_cout\);

-- Location: LCCOMB_X27_Y21_N14
\U_BCC|LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan7~9_cout\ = CARRY((\U_VSG|tempHcount\(4) & (\U_BCC|Add4~8_combout\ & !\U_BCC|LessThan7~7_cout\)) # (!\U_VSG|tempHcount\(4) & ((\U_BCC|Add4~8_combout\) # (!\U_BCC|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(4),
	datab => \U_BCC|Add4~8_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan7~7_cout\,
	cout => \U_BCC|LessThan7~9_cout\);

-- Location: LCCOMB_X27_Y21_N16
\U_BCC|LessThan7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan7~11_cout\ = CARRY((\U_VSG|tempHcount\(5) & ((!\U_BCC|LessThan7~9_cout\) # (!\U_BCC|Add4~10_combout\))) # (!\U_VSG|tempHcount\(5) & (!\U_BCC|Add4~10_combout\ & !\U_BCC|LessThan7~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(5),
	datab => \U_BCC|Add4~10_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan7~9_cout\,
	cout => \U_BCC|LessThan7~11_cout\);

-- Location: LCCOMB_X27_Y21_N18
\U_BCC|LessThan7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan7~13_cout\ = CARRY((\U_VSG|tempHcount\(6) & (\U_BCC|Add4~12_combout\ & !\U_BCC|LessThan7~11_cout\)) # (!\U_VSG|tempHcount\(6) & ((\U_BCC|Add4~12_combout\) # (!\U_BCC|LessThan7~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(6),
	datab => \U_BCC|Add4~12_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan7~11_cout\,
	cout => \U_BCC|LessThan7~13_cout\);

-- Location: LCCOMB_X27_Y21_N20
\U_BCC|LessThan7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan7~15_cout\ = CARRY((\U_VSG|tempHcount\(7) & ((!\U_BCC|LessThan7~13_cout\) # (!\U_BCC|Add4~14_combout\))) # (!\U_VSG|tempHcount\(7) & (!\U_BCC|Add4~14_combout\ & !\U_BCC|LessThan7~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(7),
	datab => \U_BCC|Add4~14_combout\,
	datad => VCC,
	cin => \U_BCC|LessThan7~13_cout\,
	cout => \U_BCC|LessThan7~15_cout\);

-- Location: LCCOMB_X27_Y21_N22
\U_BCC|LessThan7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan7~17_cout\ = CARRY((\U_BCC|Add4~16_combout\ & ((!\U_BCC|LessThan7~15_cout\) # (!\U_VSG|tempHcount\(8)))) # (!\U_BCC|Add4~16_combout\ & (!\U_VSG|tempHcount\(8) & !\U_BCC|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|Add4~16_combout\,
	datab => \U_VSG|tempHcount\(8),
	datad => VCC,
	cin => \U_BCC|LessThan7~15_cout\,
	cout => \U_BCC|LessThan7~17_cout\);

-- Location: LCCOMB_X27_Y21_N24
\U_BCC|LessThan7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|LessThan7~18_combout\ = (\U_VSG|tempHcount\(9) & (\U_BCC|LessThan7~17_cout\ & \U_BCC|Add4~18_combout\)) # (!\U_VSG|tempHcount\(9) & ((\U_BCC|LessThan7~17_cout\) # (\U_BCC|Add4~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(9),
	datad => \U_BCC|Add4~18_combout\,
	cin => \U_BCC|LessThan7~17_cout\,
	combout => \U_BCC|LessThan7~18_combout\);

-- Location: LCCOMB_X26_Y17_N18
\process_1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~13_combout\ = (\U_BCC|Equal4~0_combout\) # ((\U_BCC|Equal5~0_combout\ & (!\U_BCC|LessThan6~18_combout\ & !\U_BCC|LessThan7~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|Equal5~0_combout\,
	datab => \U_BCC|Equal4~0_combout\,
	datac => \U_BCC|LessThan6~18_combout\,
	datad => \U_BCC|LessThan7~18_combout\,
	combout => \process_1~13_combout\);

-- Location: LCCOMB_X22_Y17_N6
\process_1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~14_combout\ = (\process_1~12_combout\ & ((\process_1~13_combout\) # ((!\U_BCC|process_0~2_combout\ & !\U_BCC|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|process_0~2_combout\,
	datab => \U_BCC|Equal5~0_combout\,
	datac => \process_1~12_combout\,
	datad => \process_1~13_combout\,
	combout => \process_1~14_combout\);

-- Location: LCCOMB_X22_Y17_N12
\process_1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~15_combout\ = (\process_1~1_combout\ & ((\process_1~11_combout\) # ((!\U_BCC|show_image~2_combout\ & \process_1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_1~11_combout\,
	datab => \U_BCC|show_image~2_combout\,
	datac => \process_1~1_combout\,
	datad => \process_1~14_combout\,
	combout => \process_1~15_combout\);

-- Location: LCCOMB_X22_Y13_N24
\process_1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \process_1~16_combout\ = (\process_1~15_combout\ & ((\show_row~5_combout\) # ((\show_row~1_combout\ & \show_row~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \show_row~5_combout\,
	datab => \show_row~1_combout\,
	datac => \show_row~3_combout\,
	datad => \process_1~15_combout\,
	combout => \process_1~16_combout\);

-- Location: LCCOMB_X26_Y19_N20
\U_BCC|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add5~0_combout\ = (\U_VSG|tempHcount\(1) & (\U_VSG|tempHcount\(0) $ (VCC))) # (!\U_VSG|tempHcount\(1) & (\U_VSG|tempHcount\(0) & VCC))
-- \U_BCC|Add5~1\ = CARRY((\U_VSG|tempHcount\(1) & \U_VSG|tempHcount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(1),
	datab => \U_VSG|tempHcount\(0),
	datad => VCC,
	combout => \U_BCC|Add5~0_combout\,
	cout => \U_BCC|Add5~1\);

-- Location: LCCOMB_X26_Y17_N14
\U_BCC1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|LessThan0~0_combout\ = (\U_VSG|tempHcount\(7)) # ((\U_VSG|tempHcount\(9)) # (\U_VSG|tempHcount\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(7),
	datac => \U_VSG|tempHcount\(9),
	datad => \U_VSG|tempHcount\(8),
	combout => \U_BCC1|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y17_N4
\U_BCC|column_count[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|column_count[0]~0_combout\ = (\U_BCC1|Equal0~0_combout\ & ((\U_BCC1|LessThan0~0_combout\) # ((\U_BCC|process_0~1_combout\ & \process_1~2_combout\)))) # (!\U_BCC1|Equal0~0_combout\ & (\U_BCC|process_0~1_combout\ & ((\process_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC1|Equal0~0_combout\,
	datab => \U_BCC|process_0~1_combout\,
	datac => \U_BCC1|LessThan0~0_combout\,
	datad => \process_1~2_combout\,
	combout => \U_BCC|column_count[0]~0_combout\);

-- Location: LCCOMB_X22_Y17_N10
\U_BCC|column_count[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|column_count[5]~2_combout\ = (\switch[7]~input_o\) # (\switch[6]~input_o\ $ (!\switch[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[7]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \switch[5]~input_o\,
	combout => \U_BCC|column_count[5]~2_combout\);

-- Location: LCCOMB_X26_Y17_N10
\U_BCC|column_count[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|column_count[5]~1_combout\ = (\U_BCC|Equal5~0_combout\ & (!\U_BCC|Equal4~0_combout\ & ((\U_BCC|LessThan6~18_combout\) # (\U_BCC|LessThan7~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|Equal5~0_combout\,
	datab => \U_BCC|Equal4~0_combout\,
	datac => \U_BCC|LessThan6~18_combout\,
	datad => \U_BCC|LessThan7~18_combout\,
	combout => \U_BCC|column_count[5]~1_combout\);

-- Location: LCCOMB_X26_Y17_N0
\U_BCC|column_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|column_count[5]~3_combout\ = (\U_BCC|column_count[5]~1_combout\) # ((\U_BCC|column_count[5]~2_combout\ & (\U_BCC|process_0~2_combout\)) # (!\U_BCC|column_count[5]~2_combout\ & ((\U_BCC|show_image~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|column_count[5]~2_combout\,
	datab => \U_BCC|process_0~2_combout\,
	datac => \U_BCC|show_image~2_combout\,
	datad => \U_BCC|column_count[5]~1_combout\,
	combout => \U_BCC|column_count[5]~3_combout\);

-- Location: LCCOMB_X26_Y17_N6
\U_BCC|column_count[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|column_count[0]~4_combout\ = (\U_BCC|column_count[0]~0_combout\) # ((!\U_BCC1|Equal0~0_combout\ & (!\process_1~2_combout\ & \U_BCC|column_count[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC1|Equal0~0_combout\,
	datab => \U_BCC|column_count[0]~0_combout\,
	datac => \process_1~2_combout\,
	datad => \U_BCC|column_count[5]~3_combout\,
	combout => \U_BCC|column_count[0]~4_combout\);

-- Location: LCCOMB_X26_Y17_N24
\U_BCC|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add5~2_combout\ = (!\U_BCC|column_count[0]~4_combout\ & ((\U_BCC1|Equal0~0_combout\ & (\U_VSG|tempHcount\(1))) # (!\U_BCC1|Equal0~0_combout\ & ((\U_BCC|Add5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(1),
	datab => \U_BCC1|Equal0~0_combout\,
	datac => \U_BCC|Add5~0_combout\,
	datad => \U_BCC|column_count[0]~4_combout\,
	combout => \U_BCC|Add5~2_combout\);

-- Location: LCCOMB_X26_Y19_N22
\U_BCC|Add5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add5~3_combout\ = (\U_VSG|tempHcount\(2) & (!\U_BCC|Add5~1\)) # (!\U_VSG|tempHcount\(2) & ((\U_BCC|Add5~1\) # (GND)))
-- \U_BCC|Add5~4\ = CARRY((!\U_BCC|Add5~1\) # (!\U_VSG|tempHcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(2),
	datad => VCC,
	cin => \U_BCC|Add5~1\,
	combout => \U_BCC|Add5~3_combout\,
	cout => \U_BCC|Add5~4\);

-- Location: LCCOMB_X26_Y17_N26
\U_BCC|Add5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add5~5_combout\ = (!\U_BCC|column_count[0]~4_combout\ & ((\U_BCC1|Equal0~0_combout\ & ((\U_VSG|tempHcount\(2)))) # (!\U_BCC1|Equal0~0_combout\ & (\U_BCC|Add5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC1|Equal0~0_combout\,
	datab => \U_BCC|Add5~3_combout\,
	datac => \U_VSG|tempHcount\(2),
	datad => \U_BCC|column_count[0]~4_combout\,
	combout => \U_BCC|Add5~5_combout\);

-- Location: LCCOMB_X26_Y19_N24
\U_BCC|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add5~6_combout\ = (\U_VSG|tempHcount\(3) & (\U_BCC|Add5~4\ $ (GND))) # (!\U_VSG|tempHcount\(3) & (!\U_BCC|Add5~4\ & VCC))
-- \U_BCC|Add5~7\ = CARRY((\U_VSG|tempHcount\(3) & !\U_BCC|Add5~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(3),
	datad => VCC,
	cin => \U_BCC|Add5~4\,
	combout => \U_BCC|Add5~6_combout\,
	cout => \U_BCC|Add5~7\);

-- Location: LCCOMB_X26_Y17_N20
\U_BCC|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add5~8_combout\ = (!\U_BCC|column_count[0]~4_combout\ & ((\U_BCC1|Equal0~0_combout\ & (\U_VSG|tempHcount\(3))) # (!\U_BCC1|Equal0~0_combout\ & ((\U_BCC|Add5~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(3),
	datab => \U_BCC1|Equal0~0_combout\,
	datac => \U_BCC|Add5~6_combout\,
	datad => \U_BCC|column_count[0]~4_combout\,
	combout => \U_BCC|Add5~8_combout\);

-- Location: LCCOMB_X26_Y19_N26
\U_BCC|Add5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add5~9_combout\ = (\U_VSG|tempHcount\(4) & (!\U_BCC|Add5~7\)) # (!\U_VSG|tempHcount\(4) & ((\U_BCC|Add5~7\) # (GND)))
-- \U_BCC|Add5~10\ = CARRY((!\U_BCC|Add5~7\) # (!\U_VSG|tempHcount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(4),
	datad => VCC,
	cin => \U_BCC|Add5~7\,
	combout => \U_BCC|Add5~9_combout\,
	cout => \U_BCC|Add5~10\);

-- Location: LCCOMB_X26_Y17_N30
\U_BCC|Add5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add5~11_combout\ = (!\U_BCC|column_count[0]~4_combout\ & ((\U_BCC1|Equal0~0_combout\ & ((\U_VSG|tempHcount\(4)))) # (!\U_BCC1|Equal0~0_combout\ & (\U_BCC|Add5~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|Add5~9_combout\,
	datab => \U_BCC1|Equal0~0_combout\,
	datac => \U_VSG|tempHcount\(4),
	datad => \U_BCC|column_count[0]~4_combout\,
	combout => \U_BCC|Add5~11_combout\);

-- Location: LCCOMB_X26_Y19_N28
\U_BCC|Add5~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add5~12_combout\ = (\U_VSG|tempHcount\(5) & (\U_BCC|Add5~10\ $ (GND))) # (!\U_VSG|tempHcount\(5) & (!\U_BCC|Add5~10\ & VCC))
-- \U_BCC|Add5~13\ = CARRY((\U_VSG|tempHcount\(5) & !\U_BCC|Add5~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(5),
	datad => VCC,
	cin => \U_BCC|Add5~10\,
	combout => \U_BCC|Add5~12_combout\,
	cout => \U_BCC|Add5~13\);

-- Location: LCCOMB_X26_Y17_N28
\U_BCC|Add5~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add5~14_combout\ = (!\U_BCC|column_count[0]~4_combout\ & ((\U_BCC1|Equal0~0_combout\ & ((\U_VSG|tempHcount\(5)))) # (!\U_BCC1|Equal0~0_combout\ & (\U_BCC|Add5~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC1|Equal0~0_combout\,
	datab => \U_BCC|Add5~12_combout\,
	datac => \U_VSG|tempHcount\(5),
	datad => \U_BCC|column_count[0]~4_combout\,
	combout => \U_BCC|Add5~14_combout\);

-- Location: LCCOMB_X26_Y19_N30
\U_BCC|Add5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add5~15_combout\ = \U_BCC|Add5~13\ $ (\U_VSG|tempHcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VSG|tempHcount\(6),
	cin => \U_BCC|Add5~13\,
	combout => \U_BCC|Add5~15_combout\);

-- Location: LCCOMB_X26_Y17_N2
\U_BCC|Add5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC|Add5~17_combout\ = (!\U_BCC|column_count[0]~4_combout\ & ((\U_BCC1|Equal0~0_combout\ & (\U_VSG|tempHcount\(6))) # (!\U_BCC1|Equal0~0_combout\ & ((\U_BCC|Add5~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(6),
	datab => \U_BCC1|Equal0~0_combout\,
	datac => \U_BCC|Add5~15_combout\,
	datad => \U_BCC|column_count[0]~4_combout\,
	combout => \U_BCC|Add5~17_combout\);

-- Location: LCCOMB_X21_Y7_N2
\U_BRC|Add5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add5~0_combout\ = (\U_VSG|tempVcount\(1) & (\U_VSG|tempVcount\(0) $ (VCC))) # (!\U_VSG|tempVcount\(1) & (\U_VSG|tempVcount\(0) & VCC))
-- \U_BRC|Add5~1\ = CARRY((\U_VSG|tempVcount\(1) & \U_VSG|tempVcount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(1),
	datab => \U_VSG|tempVcount\(0),
	datad => VCC,
	combout => \U_BRC|Add5~0_combout\,
	cout => \U_BRC|Add5~1\);

-- Location: LCCOMB_X22_Y13_N10
\U_BRC1|row_count[3]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[3]~3_combout\ = \button[2]~input_o\ $ (((\button[0]~input_o\ & \button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datac => \button[0]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_BRC1|row_count[3]~3_combout\);

-- Location: LCCOMB_X22_Y9_N12
\U_BRC|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~2_combout\ = (!\U_VSG|tempVcount\(9) & (\button[0]~input_o\ $ (!\button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button[0]~input_o\,
	datac => \U_VSG|tempVcount\(9),
	datad => \button[1]~input_o\,
	combout => \U_BRC|Add0~2_combout\);

-- Location: LCCOMB_X22_Y9_N14
\U_BRC|Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~3_combout\ = (\U_BRC|Add0~2_combout\ & (\U_VSG|tempVcount\(8) & ((\U_BRC1|row_count[6]~2_combout\) # (\U_BRC1|row_count[6]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add0~2_combout\,
	datab => \U_VSG|tempVcount\(8),
	datac => \U_BRC1|row_count[6]~2_combout\,
	datad => \U_BRC1|row_count[6]~0_combout\,
	combout => \U_BRC|Add0~3_combout\);

-- Location: LCCOMB_X22_Y9_N28
\U_BRC|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~4_combout\ = (!\U_BRC1|LessThan0~0_combout\ & (\button[1]~input_o\ $ (\button[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datac => \button[0]~input_o\,
	datad => \U_BRC1|LessThan0~0_combout\,
	combout => \U_BRC|Add0~4_combout\);

-- Location: LCCOMB_X23_Y9_N18
\U_BRC|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~0_combout\ = (\U_VSG|tempVcount\(1) & (\U_VSG|tempVcount\(0) $ (VCC))) # (!\U_VSG|tempVcount\(1) & (\U_VSG|tempVcount\(0) & VCC))
-- \U_BRC|Add0~1\ = CARRY((\U_VSG|tempVcount\(1) & \U_VSG|tempVcount\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(1),
	datab => \U_VSG|tempVcount\(0),
	datad => VCC,
	combout => \U_BRC|Add0~0_combout\,
	cout => \U_BRC|Add0~1\);

-- Location: LCCOMB_X23_Y9_N0
\U_BRC|Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~5_combout\ = (\U_BRC|Add0~3_combout\ & ((\U_BRC|Add0~0_combout\) # ((\U_VSG|tempVcount\(1) & \U_BRC|Add0~4_combout\)))) # (!\U_BRC|Add0~3_combout\ & (\U_VSG|tempVcount\(1) & (\U_BRC|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add0~3_combout\,
	datab => \U_VSG|tempVcount\(1),
	datac => \U_BRC|Add0~4_combout\,
	datad => \U_BRC|Add0~0_combout\,
	combout => \U_BRC|Add0~5_combout\);

-- Location: LCCOMB_X23_Y7_N0
\U_BRC|row_count[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|row_count[3]~5_combout\ = (\U_BRC|row_count[3]~4_combout\) # ((\U_BRC|row_count[3]~2_combout\ & (!\U_BRC|process_0~1_combout\ & !\U_VSG|tempVcount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|row_count[3]~2_combout\,
	datab => \U_BRC|process_0~1_combout\,
	datac => \U_VSG|tempVcount\(9),
	datad => \U_BRC|row_count[3]~4_combout\,
	combout => \U_BRC|row_count[3]~5_combout\);

-- Location: LCCOMB_X23_Y7_N24
\U_BRC|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~6_combout\ = (!\U_BRC1|row_count[3]~3_combout\ & ((\U_BRC|row_count[3]~5_combout\) # ((!\U_BRC|row_count[3]~2_combout\ & \U_BRC|show_image~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|row_count[3]~3_combout\,
	datab => \U_BRC|row_count[3]~2_combout\,
	datac => \U_BRC|show_image~2_combout\,
	datad => \U_BRC|row_count[3]~5_combout\,
	combout => \U_BRC|Add0~6_combout\);

-- Location: LCCOMB_X23_Y7_N30
\U_BRC|Add0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~7_combout\ = (\U_BRC|Add5~0_combout\ & ((\U_BRC|Add0~6_combout\) # ((\U_BRC1|row_count[3]~3_combout\ & \U_BRC|Add0~5_combout\)))) # (!\U_BRC|Add5~0_combout\ & (\U_BRC1|row_count[3]~3_combout\ & (\U_BRC|Add0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add5~0_combout\,
	datab => \U_BRC1|row_count[3]~3_combout\,
	datac => \U_BRC|Add0~5_combout\,
	datad => \U_BRC|Add0~6_combout\,
	combout => \U_BRC|Add0~7_combout\);

-- Location: LCCOMB_X23_Y9_N20
\U_BRC|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~8_combout\ = (\U_VSG|tempVcount\(2) & (!\U_BRC|Add0~1\)) # (!\U_VSG|tempVcount\(2) & ((\U_BRC|Add0~1\) # (GND)))
-- \U_BRC|Add0~9\ = CARRY((!\U_BRC|Add0~1\) # (!\U_VSG|tempVcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(2),
	datad => VCC,
	cin => \U_BRC|Add0~1\,
	combout => \U_BRC|Add0~8_combout\,
	cout => \U_BRC|Add0~9\);

-- Location: LCCOMB_X24_Y9_N20
\U_BRC|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~10_combout\ = (\U_BRC|Add0~8_combout\ & ((\U_BRC|Add0~3_combout\) # ((\U_VSG|tempVcount\(2) & \U_BRC|Add0~4_combout\)))) # (!\U_BRC|Add0~8_combout\ & (\U_VSG|tempVcount\(2) & (\U_BRC|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add0~8_combout\,
	datab => \U_VSG|tempVcount\(2),
	datac => \U_BRC|Add0~4_combout\,
	datad => \U_BRC|Add0~3_combout\,
	combout => \U_BRC|Add0~10_combout\);

-- Location: LCCOMB_X21_Y7_N4
\U_BRC|Add5~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add5~2_combout\ = (\U_VSG|tempVcount\(2) & (!\U_BRC|Add5~1\)) # (!\U_VSG|tempVcount\(2) & ((\U_BRC|Add5~1\) # (GND)))
-- \U_BRC|Add5~3\ = CARRY((!\U_BRC|Add5~1\) # (!\U_VSG|tempVcount\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(2),
	datad => VCC,
	cin => \U_BRC|Add5~1\,
	combout => \U_BRC|Add5~2_combout\,
	cout => \U_BRC|Add5~3\);

-- Location: LCCOMB_X24_Y7_N20
\U_BRC|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~11_combout\ = (\U_BRC|Add0~10_combout\ & ((\U_BRC1|row_count[3]~3_combout\) # ((\U_BRC|Add5~2_combout\ & \U_BRC|Add0~6_combout\)))) # (!\U_BRC|Add0~10_combout\ & (\U_BRC|Add5~2_combout\ & ((\U_BRC|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add0~10_combout\,
	datab => \U_BRC|Add5~2_combout\,
	datac => \U_BRC1|row_count[3]~3_combout\,
	datad => \U_BRC|Add0~6_combout\,
	combout => \U_BRC|Add0~11_combout\);

-- Location: LCCOMB_X23_Y9_N22
\U_BRC|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~12_combout\ = (\U_VSG|tempVcount\(3) & (\U_BRC|Add0~9\ $ (GND))) # (!\U_VSG|tempVcount\(3) & (!\U_BRC|Add0~9\ & VCC))
-- \U_BRC|Add0~13\ = CARRY((\U_VSG|tempVcount\(3) & !\U_BRC|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(3),
	datad => VCC,
	cin => \U_BRC|Add0~9\,
	combout => \U_BRC|Add0~12_combout\,
	cout => \U_BRC|Add0~13\);

-- Location: LCCOMB_X22_Y9_N22
\U_BRC|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~14_combout\ = (\U_BRC|Add0~12_combout\ & ((\U_BRC|Add0~3_combout\) # ((\U_BRC|Add0~4_combout\ & \U_VSG|tempVcount\(3))))) # (!\U_BRC|Add0~12_combout\ & (\U_BRC|Add0~4_combout\ & ((\U_VSG|tempVcount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add0~12_combout\,
	datab => \U_BRC|Add0~4_combout\,
	datac => \U_BRC|Add0~3_combout\,
	datad => \U_VSG|tempVcount\(3),
	combout => \U_BRC|Add0~14_combout\);

-- Location: LCCOMB_X21_Y7_N6
\U_BRC|Add5~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add5~4_combout\ = (\U_VSG|tempVcount\(3) & (\U_BRC|Add5~3\ $ (GND))) # (!\U_VSG|tempVcount\(3) & (!\U_BRC|Add5~3\ & VCC))
-- \U_BRC|Add5~5\ = CARRY((\U_VSG|tempVcount\(3) & !\U_BRC|Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(3),
	datad => VCC,
	cin => \U_BRC|Add5~3\,
	combout => \U_BRC|Add5~4_combout\,
	cout => \U_BRC|Add5~5\);

-- Location: LCCOMB_X23_Y7_N4
\U_BRC|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~15_combout\ = (\U_BRC|Add0~14_combout\ & ((\U_BRC1|row_count[3]~3_combout\) # ((\U_BRC|Add5~4_combout\ & \U_BRC|Add0~6_combout\)))) # (!\U_BRC|Add0~14_combout\ & (((\U_BRC|Add5~4_combout\ & \U_BRC|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add0~14_combout\,
	datab => \U_BRC1|row_count[3]~3_combout\,
	datac => \U_BRC|Add5~4_combout\,
	datad => \U_BRC|Add0~6_combout\,
	combout => \U_BRC|Add0~15_combout\);

-- Location: LCCOMB_X21_Y7_N8
\U_BRC|Add5~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add5~6_combout\ = (\U_VSG|tempVcount\(4) & (\U_BRC|Add5~5\ & VCC)) # (!\U_VSG|tempVcount\(4) & (!\U_BRC|Add5~5\))
-- \U_BRC|Add5~7\ = CARRY((!\U_VSG|tempVcount\(4) & !\U_BRC|Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(4),
	datad => VCC,
	cin => \U_BRC|Add5~5\,
	combout => \U_BRC|Add5~6_combout\,
	cout => \U_BRC|Add5~7\);

-- Location: LCCOMB_X23_Y9_N24
\U_BRC|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~16_combout\ = (\U_VSG|tempVcount\(4) & (!\U_BRC|Add0~13\)) # (!\U_VSG|tempVcount\(4) & ((\U_BRC|Add0~13\) # (GND)))
-- \U_BRC|Add0~17\ = CARRY((!\U_BRC|Add0~13\) # (!\U_VSG|tempVcount\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(4),
	datad => VCC,
	cin => \U_BRC|Add0~13\,
	combout => \U_BRC|Add0~16_combout\,
	cout => \U_BRC|Add0~17\);

-- Location: LCCOMB_X24_Y9_N18
\U_BRC|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~18_combout\ = (\U_BRC|Add0~4_combout\ & ((\U_VSG|tempVcount\(4)) # ((\U_BRC|Add0~16_combout\ & \U_BRC|Add0~3_combout\)))) # (!\U_BRC|Add0~4_combout\ & (\U_BRC|Add0~16_combout\ & ((\U_BRC|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add0~4_combout\,
	datab => \U_BRC|Add0~16_combout\,
	datac => \U_VSG|tempVcount\(4),
	datad => \U_BRC|Add0~3_combout\,
	combout => \U_BRC|Add0~18_combout\);

-- Location: LCCOMB_X24_Y7_N30
\U_BRC|Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~19_combout\ = (\U_BRC1|row_count[3]~3_combout\ & ((\U_BRC|Add0~18_combout\) # ((\U_BRC|Add5~6_combout\ & \U_BRC|Add0~6_combout\)))) # (!\U_BRC1|row_count[3]~3_combout\ & (\U_BRC|Add5~6_combout\ & ((\U_BRC|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|row_count[3]~3_combout\,
	datab => \U_BRC|Add5~6_combout\,
	datac => \U_BRC|Add0~18_combout\,
	datad => \U_BRC|Add0~6_combout\,
	combout => \U_BRC|Add0~19_combout\);

-- Location: LCCOMB_X23_Y9_N26
\U_BRC|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~20_combout\ = (\U_VSG|tempVcount\(5) & ((GND) # (!\U_BRC|Add0~17\))) # (!\U_VSG|tempVcount\(5) & (\U_BRC|Add0~17\ $ (GND)))
-- \U_BRC|Add0~21\ = CARRY((\U_VSG|tempVcount\(5)) # (!\U_BRC|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(5),
	datad => VCC,
	cin => \U_BRC|Add0~17\,
	combout => \U_BRC|Add0~20_combout\,
	cout => \U_BRC|Add0~21\);

-- Location: LCCOMB_X24_Y7_N24
\U_BRC|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~22_combout\ = (\U_VSG|tempVcount\(5) & ((\U_BRC|Add0~4_combout\) # ((\U_BRC|Add0~20_combout\ & \U_BRC|Add0~3_combout\)))) # (!\U_VSG|tempVcount\(5) & (\U_BRC|Add0~20_combout\ & ((\U_BRC|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(5),
	datab => \U_BRC|Add0~20_combout\,
	datac => \U_BRC|Add0~4_combout\,
	datad => \U_BRC|Add0~3_combout\,
	combout => \U_BRC|Add0~22_combout\);

-- Location: LCCOMB_X21_Y7_N10
\U_BRC|Add5~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add5~8_combout\ = (\U_VSG|tempVcount\(5) & (\U_BRC|Add5~7\ $ (GND))) # (!\U_VSG|tempVcount\(5) & (!\U_BRC|Add5~7\ & VCC))
-- \U_BRC|Add5~9\ = CARRY((\U_VSG|tempVcount\(5) & !\U_BRC|Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(5),
	datad => VCC,
	cin => \U_BRC|Add5~7\,
	combout => \U_BRC|Add5~8_combout\,
	cout => \U_BRC|Add5~9\);

-- Location: LCCOMB_X23_Y7_N26
\U_BRC|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~23_combout\ = (\U_BRC1|row_count[3]~3_combout\ & ((\U_BRC|Add0~22_combout\) # ((\U_BRC|Add5~8_combout\ & \U_BRC|Add0~6_combout\)))) # (!\U_BRC1|row_count[3]~3_combout\ & (((\U_BRC|Add5~8_combout\ & \U_BRC|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|row_count[3]~3_combout\,
	datab => \U_BRC|Add0~22_combout\,
	datac => \U_BRC|Add5~8_combout\,
	datad => \U_BRC|Add0~6_combout\,
	combout => \U_BRC|Add0~23_combout\);

-- Location: LCCOMB_X21_Y7_N12
\U_BRC|Add5~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add5~10_combout\ = \U_BRC|Add5~9\ $ (!\U_VSG|tempVcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VSG|tempVcount\(6),
	cin => \U_BRC|Add5~9\,
	combout => \U_BRC|Add5~10_combout\);

-- Location: LCCOMB_X23_Y9_N28
\U_BRC|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~24_combout\ = \U_BRC|Add0~21\ $ (\U_VSG|tempVcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VSG|tempVcount\(6),
	cin => \U_BRC|Add0~21\,
	combout => \U_BRC|Add0~24_combout\);

-- Location: LCCOMB_X24_Y7_N18
\U_BRC|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~26_combout\ = (\U_BRC|Add0~4_combout\ & ((\U_VSG|tempVcount\(6)) # ((\U_BRC|Add0~24_combout\ & \U_BRC|Add0~3_combout\)))) # (!\U_BRC|Add0~4_combout\ & (((\U_BRC|Add0~24_combout\ & \U_BRC|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add0~4_combout\,
	datab => \U_VSG|tempVcount\(6),
	datac => \U_BRC|Add0~24_combout\,
	datad => \U_BRC|Add0~3_combout\,
	combout => \U_BRC|Add0~26_combout\);

-- Location: LCCOMB_X24_Y7_N28
\U_BRC|Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|Add0~27_combout\ = (\U_BRC|Add5~10_combout\ & ((\U_BRC|Add0~6_combout\) # ((\U_BRC|Add0~26_combout\ & \U_BRC1|row_count[3]~3_combout\)))) # (!\U_BRC|Add5~10_combout\ & (\U_BRC|Add0~26_combout\ & (\U_BRC1|row_count[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|Add5~10_combout\,
	datab => \U_BRC|Add0~26_combout\,
	datac => \U_BRC1|row_count[3]~3_combout\,
	datad => \U_BRC|Add0~6_combout\,
	combout => \U_BRC|Add0~27_combout\);

-- Location: M9K_X25_Y6_N0
\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAABEAFAEEBEAAAAFAAAAAAAAAAAA2A82AAAFBFFFFBEBAAABA888AAAAAAAA88AAAAEFAFFFFBAAEAAAEA222AAAAAAAAAA22ABAFFFFFFEABEABF2AA2AAAAAAAA0A1EAFFAFFFFEBEAFAAEAA02AAAAAAAA00BE86FAFFF53CCEA3AF280AA28AAAAA2951F32B7F777EF7A1AC0AAAA00A080AA26E6EA1FD7C5AFD2BE2A28A2AA2A22A8BAF2EF0FDFF6B9D7EF48A822A8AA02A0F263FE4FDFD571D7FF0CA802FAD682A8603717357DCAE757F77021D6A5E266822BE77C7575D0B7FFFD37D23E7DF962AAEECC75D55DFFABEA2B3A27BE6BD742A86FAF75FFB0BA1C3EC1AEBEBFFFFF57AB47FFFEBBD7BEB26FDA0BFFFFEADED6AAEEAFFCBAA26E89FAD57FFFFBBAE376",
	mem_init2 => X"AB2FAF7EBB5F7AFFFFDFFFFAFEABDFE8AABFBBFFFFFFFFFFFFFFFAAAAFFFFAEAA2FFAF7CEEFFFFFFFF75FFFFFFFFFFAAA1613F5B0FF5187FEC1E4BEBFFF5C002A87BD7DA96FEFE5BAD6E1717EFFF46A0AACBEDFEB1FAFFDEBAAE6FAD554FA028AAA7FB7BAD3AFBBE01AEABFAFA55AA82AAA9EB5FBA115691BBAFBBFEBBAAAAA2AABB6BDFAFBFAAEFBBAEEFFFAAAAA80AAABF5BD0AEAABEEFAAAABA98020002AAAAAFDFFAFAEEFBFAEFFBE521002AAAAAAAABDEBFBEFEFEAEFEF8085AAAAAAAAAAAAB7EBEEAEBBEBBFEA280AAAAAAAAAAAAAF7FFEAEBAEEFBF9502AAAAAAAAAAAAAAB7FFEBAAAABAEC0C6AAAAAAAAAAAAAAADFFFEABAAEEE2082FAAAAAAAAAAAA",
	mem_init1 => X"AAA97EBEAAEBB85554BFAAAAAAAAAAAAAABDFFEAAEEAFBF42BBBAAAAAAAAAAAAAAB97FFA44ABD55BAFAFEAAAAAAAAAAAAAB97FAA8405BFEFAEEBFAEAAAAAAAAAAAF97FFAFAB45FFBAFBBAFEABAAAAAAAAAEB7FFAEA90AAAAFEEAFEEEFAAAAAAAABFF7F5E0056ABFAAFAAAABFEEAAAAAABFBF7FCBFBAAEBFEFBAABAFFABAAAAAAAFBFDFE3C0FAFAFFBBAAAAFFFEAAAAAAFFBFC5EFF86AAFFAEBAAAFFFBEAAAAAAEABFE1FEEB0EBAEAEBABFEEFFAAAAAAAEABAFA4EE496FAFEBEFABABAAAAAAAAAEFBBFBF0BB65FFFBEABFBAFAAAAAAAAAAFFABFFF0FD97FEFABAEBEAAAAAAAAAAFAFBBAFBA2B65FFAAFBFAAAAAAAAAAAABEFAFBBFA86B7FFAAAAFFEAAAAAAAAAA",
	mem_init0 => X"ABFBFBAAFEAFFFEEBAAEAAAAAAAAAAAA3AF98A1A130D9A0A2E5F7AAAAA0A882A2DE7546425C9CD4D763E808AA8028022A3A7988A0A39DFEDFE1F2A8AA808000280F62F2A0E8CFFFDFB4F2A8AA8080008AAD43A2A2B4917E57E460A8AAA0A2202A084680A0845F7ED7B522A8AAA080202A00F88882A8D97ED6D0A2A8A80080202AAA0A8200822D23CA2A08A8A80080202A8AA8A8A220A8A2AA202A88A2A080202AAA8082A0282082AA0228280880A0202AAAA2AAA2002202AAA08A28208020280AAAA2202AA82A20A882AA280000A0280A80AA02A008800A0820AA2A8AAA0AA28AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brom3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom2:U_VGAROM3|altsyncram:altsyncram_component|altsyncram_err3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	portaaddr => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: IOIBUF_X0_Y26_N1
\switch[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: LCCOMB_X21_Y9_N20
\U_BRC|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC|process_0~2_combout\ = (\U_VSG|tempVcount\(9)) # (\U_BRC|process_0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(9),
	datac => \U_BRC|process_0~1_combout\,
	combout => \U_BRC|process_0~2_combout\);

-- Location: LCCOMB_X23_Y9_N2
\U_BRC1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add0~0_combout\ = \U_VSG|tempVcount\(0) $ (VCC)
-- \U_BRC1|Add0~1\ = CARRY(\U_VSG|tempVcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(0),
	datad => VCC,
	combout => \U_BRC1|Add0~0_combout\,
	cout => \U_BRC1|Add0~1\);

-- Location: LCCOMB_X23_Y9_N4
\U_BRC1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add0~2_combout\ = (\U_VSG|tempVcount\(1) & (!\U_BRC1|Add0~1\)) # (!\U_VSG|tempVcount\(1) & ((\U_BRC1|Add0~1\) # (GND)))
-- \U_BRC1|Add0~3\ = CARRY((!\U_BRC1|Add0~1\) # (!\U_VSG|tempVcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(1),
	datad => VCC,
	cin => \U_BRC1|Add0~1\,
	combout => \U_BRC1|Add0~2_combout\,
	cout => \U_BRC1|Add0~3\);

-- Location: LCCOMB_X23_Y9_N6
\U_BRC1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add0~4_combout\ = (\U_VSG|tempVcount\(2) & (\U_BRC1|Add0~3\ $ (GND))) # (!\U_VSG|tempVcount\(2) & (!\U_BRC1|Add0~3\ & VCC))
-- \U_BRC1|Add0~5\ = CARRY((\U_VSG|tempVcount\(2) & !\U_BRC1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(2),
	datad => VCC,
	cin => \U_BRC1|Add0~3\,
	combout => \U_BRC1|Add0~4_combout\,
	cout => \U_BRC1|Add0~5\);

-- Location: LCCOMB_X23_Y9_N8
\U_BRC1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add0~6_combout\ = (\U_VSG|tempVcount\(3) & (!\U_BRC1|Add0~5\)) # (!\U_VSG|tempVcount\(3) & ((\U_BRC1|Add0~5\) # (GND)))
-- \U_BRC1|Add0~7\ = CARRY((!\U_BRC1|Add0~5\) # (!\U_VSG|tempVcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(3),
	datad => VCC,
	cin => \U_BRC1|Add0~5\,
	combout => \U_BRC1|Add0~6_combout\,
	cout => \U_BRC1|Add0~7\);

-- Location: LCCOMB_X23_Y9_N10
\U_BRC1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add0~8_combout\ = (\U_VSG|tempVcount\(4) & (\U_BRC1|Add0~7\ $ (GND))) # (!\U_VSG|tempVcount\(4) & (!\U_BRC1|Add0~7\ & VCC))
-- \U_BRC1|Add0~9\ = CARRY((\U_VSG|tempVcount\(4) & !\U_BRC1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(4),
	datad => VCC,
	cin => \U_BRC1|Add0~7\,
	combout => \U_BRC1|Add0~8_combout\,
	cout => \U_BRC1|Add0~9\);

-- Location: LCCOMB_X23_Y9_N12
\U_BRC1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add0~10_combout\ = (\U_VSG|tempVcount\(5) & (\U_BRC1|Add0~9\ & VCC)) # (!\U_VSG|tempVcount\(5) & (!\U_BRC1|Add0~9\))
-- \U_BRC1|Add0~11\ = CARRY((!\U_VSG|tempVcount\(5) & !\U_BRC1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(5),
	datad => VCC,
	cin => \U_BRC1|Add0~9\,
	combout => \U_BRC1|Add0~10_combout\,
	cout => \U_BRC1|Add0~11\);

-- Location: LCCOMB_X23_Y9_N14
\U_BRC1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add0~12_combout\ = \U_BRC1|Add0~11\ $ (!\U_VSG|tempVcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VSG|tempVcount\(6),
	cin => \U_BRC1|Add0~11\,
	combout => \U_BRC1|Add0~12_combout\);

-- Location: LCCOMB_X21_Y9_N2
\U_BRC1|row_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[6]~4_combout\ = (\U_BRC1|Add0~12_combout\ & ((\U_BRC|Add0~3_combout\) # ((\U_VSG|tempVcount\(6) & \U_BRC|Add0~4_combout\)))) # (!\U_BRC1|Add0~12_combout\ & (\U_VSG|tempVcount\(6) & ((\U_BRC|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|Add0~12_combout\,
	datab => \U_VSG|tempVcount\(6),
	datac => \U_BRC|Add0~3_combout\,
	datad => \U_BRC|Add0~4_combout\,
	combout => \U_BRC1|row_count[6]~4_combout\);

-- Location: LCCOMB_X21_Y7_N18
\U_BRC1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add1~0_combout\ = \U_VSG|tempVcount\(0) $ (VCC)
-- \U_BRC1|Add1~1\ = CARRY(\U_VSG|tempVcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(0),
	datad => VCC,
	combout => \U_BRC1|Add1~0_combout\,
	cout => \U_BRC1|Add1~1\);

-- Location: LCCOMB_X21_Y7_N20
\U_BRC1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add1~2_combout\ = (\U_VSG|tempVcount\(1) & (!\U_BRC1|Add1~1\)) # (!\U_VSG|tempVcount\(1) & ((\U_BRC1|Add1~1\) # (GND)))
-- \U_BRC1|Add1~3\ = CARRY((!\U_BRC1|Add1~1\) # (!\U_VSG|tempVcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(1),
	datad => VCC,
	cin => \U_BRC1|Add1~1\,
	combout => \U_BRC1|Add1~2_combout\,
	cout => \U_BRC1|Add1~3\);

-- Location: LCCOMB_X21_Y7_N22
\U_BRC1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add1~4_combout\ = (\U_VSG|tempVcount\(2) & (\U_BRC1|Add1~3\ $ (GND))) # (!\U_VSG|tempVcount\(2) & (!\U_BRC1|Add1~3\ & VCC))
-- \U_BRC1|Add1~5\ = CARRY((\U_VSG|tempVcount\(2) & !\U_BRC1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(2),
	datad => VCC,
	cin => \U_BRC1|Add1~3\,
	combout => \U_BRC1|Add1~4_combout\,
	cout => \U_BRC1|Add1~5\);

-- Location: LCCOMB_X21_Y7_N24
\U_BRC1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add1~6_combout\ = (\U_VSG|tempVcount\(3) & (!\U_BRC1|Add1~5\)) # (!\U_VSG|tempVcount\(3) & ((\U_BRC1|Add1~5\) # (GND)))
-- \U_BRC1|Add1~7\ = CARRY((!\U_BRC1|Add1~5\) # (!\U_VSG|tempVcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(3),
	datad => VCC,
	cin => \U_BRC1|Add1~5\,
	combout => \U_BRC1|Add1~6_combout\,
	cout => \U_BRC1|Add1~7\);

-- Location: LCCOMB_X21_Y7_N26
\U_BRC1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add1~8_combout\ = (\U_VSG|tempVcount\(4) & ((GND) # (!\U_BRC1|Add1~7\))) # (!\U_VSG|tempVcount\(4) & (\U_BRC1|Add1~7\ $ (GND)))
-- \U_BRC1|Add1~9\ = CARRY((\U_VSG|tempVcount\(4)) # (!\U_BRC1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(4),
	datad => VCC,
	cin => \U_BRC1|Add1~7\,
	combout => \U_BRC1|Add1~8_combout\,
	cout => \U_BRC1|Add1~9\);

-- Location: LCCOMB_X21_Y7_N28
\U_BRC1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add1~10_combout\ = (\U_VSG|tempVcount\(5) & (!\U_BRC1|Add1~9\)) # (!\U_VSG|tempVcount\(5) & ((\U_BRC1|Add1~9\) # (GND)))
-- \U_BRC1|Add1~11\ = CARRY((!\U_BRC1|Add1~9\) # (!\U_VSG|tempVcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempVcount\(5),
	datad => VCC,
	cin => \U_BRC1|Add1~9\,
	combout => \U_BRC1|Add1~10_combout\,
	cout => \U_BRC1|Add1~11\);

-- Location: LCCOMB_X21_Y7_N30
\U_BRC1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|Add1~12_combout\ = \U_BRC1|Add1~11\ $ (\U_VSG|tempVcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VSG|tempVcount\(6),
	cin => \U_BRC1|Add1~11\,
	combout => \U_BRC1|Add1~12_combout\);

-- Location: LCCOMB_X21_Y9_N28
\U_BRC1|row_count[6]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[6]~5_combout\ = (\U_BRC1|row_count[3]~3_combout\ & (((\U_BRC1|row_count[6]~4_combout\)))) # (!\U_BRC1|row_count[3]~3_combout\ & (!\U_BRC|process_0~2_combout\ & ((\U_BRC1|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|row_count[3]~3_combout\,
	datab => \U_BRC|process_0~2_combout\,
	datac => \U_BRC1|row_count[6]~4_combout\,
	datad => \U_BRC1|Add1~12_combout\,
	combout => \U_BRC1|row_count[6]~5_combout\);

-- Location: FF_X21_Y9_N29
\U_VGAROM2|altsyncram_component|auto_generated|address_reg_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_PCLK|toggle~clkctrl_outclk\,
	d => \U_BRC1|row_count[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_VGAROM2|altsyncram_component|auto_generated|address_reg_a\(0));

-- Location: LCCOMB_X21_Y9_N18
\vga_green~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~0_combout\ = (\switch[9]~input_o\ & ((\U_VGAROM2|altsyncram_component|auto_generated|address_reg_a\(0)))) # (!\switch[9]~input_o\ & (!\switch[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[8]~input_o\,
	datab => \switch[9]~input_o\,
	datad => \U_VGAROM2|altsyncram_component|auto_generated|address_reg_a\(0),
	combout => \vga_green~0_combout\);

-- Location: LCCOMB_X23_Y17_N30
\U_BCC1|column_count[0]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[0]~16_combout\ = (!\U_VSG|tempHcount\(9) & (!\U_VSG|tempHcount\(8) & (\U_VSG|tempHcount\(0) & !\U_VSG|tempHcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(9),
	datab => \U_VSG|tempHcount\(8),
	datac => \U_VSG|tempHcount\(0),
	datad => \U_VSG|tempHcount\(7),
	combout => \U_BCC1|column_count[0]~16_combout\);

-- Location: LCCOMB_X22_Y17_N14
\U_BCC1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|Add1~0_combout\ = \U_VSG|tempHcount\(0) $ (VCC)
-- \U_BCC1|Add1~1\ = CARRY(\U_VSG|tempHcount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(0),
	datad => VCC,
	combout => \U_BCC1|Add1~0_combout\,
	cout => \U_BCC1|Add1~1\);

-- Location: LCCOMB_X23_Y17_N28
\U_BCC1|column_count[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[0]~7_combout\ = (\button[0]~input_o\ & (((\U_BCC1|Add1~0_combout\ & !\U_BCC|process_0~1_combout\)))) # (!\button[0]~input_o\ & (\U_BCC1|column_count[0]~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \U_BCC1|column_count[0]~16_combout\,
	datac => \U_BCC1|Add1~0_combout\,
	datad => \U_BCC|process_0~1_combout\,
	combout => \U_BCC1|column_count[0]~7_combout\);

-- Location: LCCOMB_X22_Y13_N12
\U_BCC1|column_count[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[0]~6_combout\ = \button[2]~input_o\ $ (((\button[0]~input_o\ & \button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datac => \button[0]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_BCC1|column_count[0]~6_combout\);

-- Location: LCCOMB_X22_Y17_N28
\U_BCC1|column_count[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[0]~8_combout\ = (\U_BCC1|column_count[0]~6_combout\ & (((\U_BCC1|column_count[0]~7_combout\)))) # (!\U_BCC1|column_count[0]~6_combout\ & (!\U_BCC|process_0~2_combout\ & ((\U_BCC1|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|process_0~2_combout\,
	datab => \U_BCC1|column_count[0]~7_combout\,
	datac => \U_BCC1|column_count[0]~6_combout\,
	datad => \U_BCC1|Add1~0_combout\,
	combout => \U_BCC1|column_count[0]~8_combout\);

-- Location: LCCOMB_X22_Y17_N16
\U_BCC1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|Add1~2_combout\ = (\U_VSG|tempHcount\(1) & (!\U_BCC1|Add1~1\)) # (!\U_VSG|tempHcount\(1) & ((\U_BCC1|Add1~1\) # (GND)))
-- \U_BCC1|Add1~3\ = CARRY((!\U_BCC1|Add1~1\) # (!\U_VSG|tempHcount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(1),
	datad => VCC,
	cin => \U_BCC1|Add1~1\,
	combout => \U_BCC1|Add1~2_combout\,
	cout => \U_BCC1|Add1~3\);

-- Location: LCCOMB_X23_Y17_N22
\U_BCC1|column_count[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[1]~9_combout\ = (!\U_BCC1|Equal0~0_combout\ & ((\process_1~2_combout\ & (\U_BCC|process_0~1_combout\)) # (!\process_1~2_combout\ & ((\U_BCC|process_0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC|process_0~1_combout\,
	datab => \process_1~2_combout\,
	datac => \U_BCC|process_0~2_combout\,
	datad => \U_BCC1|Equal0~0_combout\,
	combout => \U_BCC1|column_count[1]~9_combout\);

-- Location: LCCOMB_X23_Y17_N12
\U_BCC1|column_count[1]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[1]~17_combout\ = (\U_BCC1|column_count[1]~9_combout\) # ((!\button[0]~input_o\ & (\button[2]~input_o\ & \U_BCC1|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \button[2]~input_o\,
	datac => \U_BCC1|column_count[1]~9_combout\,
	datad => \U_BCC1|LessThan0~0_combout\,
	combout => \U_BCC1|column_count[1]~17_combout\);

-- Location: LCCOMB_X23_Y17_N24
\U_BCC1|column_count[1]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[1]~10_combout\ = (!\U_BCC1|column_count[1]~17_combout\ & ((\U_BCC1|Equal0~0_combout\ & ((\U_VSG|tempHcount\(1)))) # (!\U_BCC1|Equal0~0_combout\ & (\U_BCC1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC1|Add1~2_combout\,
	datab => \U_BCC1|Equal0~0_combout\,
	datac => \U_VSG|tempHcount\(1),
	datad => \U_BCC1|column_count[1]~17_combout\,
	combout => \U_BCC1|column_count[1]~10_combout\);

-- Location: LCCOMB_X22_Y17_N18
\U_BCC1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|Add1~4_combout\ = (\U_VSG|tempHcount\(2) & (\U_BCC1|Add1~3\ $ (GND))) # (!\U_VSG|tempHcount\(2) & (!\U_BCC1|Add1~3\ & VCC))
-- \U_BCC1|Add1~5\ = CARRY((\U_VSG|tempHcount\(2) & !\U_BCC1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(2),
	datad => VCC,
	cin => \U_BCC1|Add1~3\,
	combout => \U_BCC1|Add1~4_combout\,
	cout => \U_BCC1|Add1~5\);

-- Location: LCCOMB_X23_Y17_N14
\U_BCC1|column_count[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[2]~11_combout\ = (!\U_BCC1|column_count[1]~17_combout\ & ((\U_BCC1|Equal0~0_combout\ & ((\U_VSG|tempHcount\(2)))) # (!\U_BCC1|Equal0~0_combout\ & (\U_BCC1|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC1|Add1~4_combout\,
	datab => \U_BCC1|Equal0~0_combout\,
	datac => \U_VSG|tempHcount\(2),
	datad => \U_BCC1|column_count[1]~17_combout\,
	combout => \U_BCC1|column_count[2]~11_combout\);

-- Location: LCCOMB_X22_Y17_N20
\U_BCC1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|Add1~6_combout\ = (\U_VSG|tempHcount\(3) & (!\U_BCC1|Add1~5\)) # (!\U_VSG|tempHcount\(3) & ((\U_BCC1|Add1~5\) # (GND)))
-- \U_BCC1|Add1~7\ = CARRY((!\U_BCC1|Add1~5\) # (!\U_VSG|tempHcount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_VSG|tempHcount\(3),
	datad => VCC,
	cin => \U_BCC1|Add1~5\,
	combout => \U_BCC1|Add1~6_combout\,
	cout => \U_BCC1|Add1~7\);

-- Location: LCCOMB_X23_Y17_N2
\U_BCC1|column_count[3]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[3]~18_combout\ = (!\U_VSG|tempHcount\(9) & (!\U_VSG|tempHcount\(8) & (\U_VSG|tempHcount\(3) & !\U_VSG|tempHcount\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(9),
	datab => \U_VSG|tempHcount\(8),
	datac => \U_VSG|tempHcount\(3),
	datad => \U_VSG|tempHcount\(7),
	combout => \U_BCC1|column_count[3]~18_combout\);

-- Location: LCCOMB_X22_Y17_N2
\U_BCC1|column_count[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[3]~12_combout\ = (!\U_BCC1|column_count[1]~9_combout\ & ((\U_BCC1|Equal0~0_combout\ & ((\U_BCC1|column_count[3]~18_combout\))) # (!\U_BCC1|Equal0~0_combout\ & (\U_BCC1|Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC1|Add1~6_combout\,
	datab => \U_BCC1|column_count[1]~9_combout\,
	datac => \U_BCC1|Equal0~0_combout\,
	datad => \U_BCC1|column_count[3]~18_combout\,
	combout => \U_BCC1|column_count[3]~12_combout\);

-- Location: LCCOMB_X22_Y17_N22
\U_BCC1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|Add1~8_combout\ = (\U_VSG|tempHcount\(4) & (\U_BCC1|Add1~7\ $ (GND))) # (!\U_VSG|tempHcount\(4) & (!\U_BCC1|Add1~7\ & VCC))
-- \U_BCC1|Add1~9\ = CARRY((\U_VSG|tempHcount\(4) & !\U_BCC1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(4),
	datad => VCC,
	cin => \U_BCC1|Add1~7\,
	combout => \U_BCC1|Add1~8_combout\,
	cout => \U_BCC1|Add1~9\);

-- Location: LCCOMB_X23_Y17_N0
\U_BCC1|column_count[4]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[4]~13_combout\ = (!\U_BCC1|column_count[1]~17_combout\ & ((\U_BCC1|Equal0~0_combout\ & (\U_VSG|tempHcount\(4))) # (!\U_BCC1|Equal0~0_combout\ & ((\U_BCC1|Add1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(4),
	datab => \U_BCC1|Equal0~0_combout\,
	datac => \U_BCC1|Add1~8_combout\,
	datad => \U_BCC1|column_count[1]~17_combout\,
	combout => \U_BCC1|column_count[4]~13_combout\);

-- Location: LCCOMB_X22_Y17_N24
\U_BCC1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|Add1~10_combout\ = (\U_VSG|tempHcount\(5) & (!\U_BCC1|Add1~9\)) # (!\U_VSG|tempHcount\(5) & ((\U_BCC1|Add1~9\) # (GND)))
-- \U_BCC1|Add1~11\ = CARRY((!\U_BCC1|Add1~9\) # (!\U_VSG|tempHcount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempHcount\(5),
	datad => VCC,
	cin => \U_BCC1|Add1~9\,
	combout => \U_BCC1|Add1~10_combout\,
	cout => \U_BCC1|Add1~11\);

-- Location: LCCOMB_X23_Y17_N18
\U_BCC1|column_count[5]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[5]~14_combout\ = (!\U_BCC1|column_count[1]~17_combout\ & ((\U_BCC1|Equal0~0_combout\ & ((\U_VSG|tempHcount\(5)))) # (!\U_BCC1|Equal0~0_combout\ & (\U_BCC1|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC1|Add1~10_combout\,
	datab => \U_BCC1|Equal0~0_combout\,
	datac => \U_VSG|tempHcount\(5),
	datad => \U_BCC1|column_count[1]~17_combout\,
	combout => \U_BCC1|column_count[5]~14_combout\);

-- Location: LCCOMB_X22_Y17_N26
\U_BCC1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|Add1~12_combout\ = \U_BCC1|Add1~11\ $ (!\U_VSG|tempHcount\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_VSG|tempHcount\(6),
	cin => \U_BCC1|Add1~11\,
	combout => \U_BCC1|Add1~12_combout\);

-- Location: LCCOMB_X23_Y17_N16
\U_BCC1|column_count[6]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BCC1|column_count[6]~15_combout\ = (!\U_BCC1|column_count[1]~17_combout\ & ((\U_BCC1|Equal0~0_combout\ & ((\U_VSG|tempHcount\(6)))) # (!\U_BCC1|Equal0~0_combout\ & (\U_BCC1|Add1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BCC1|column_count[1]~17_combout\,
	datab => \U_BCC1|Equal0~0_combout\,
	datac => \U_BCC1|Add1~12_combout\,
	datad => \U_VSG|tempHcount\(6),
	combout => \U_BCC1|column_count[6]~15_combout\);

-- Location: LCCOMB_X22_Y8_N22
\U_BRC1|row_count[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[0]~6_combout\ = (\U_VSG|tempVcount\(0) & \button[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_VSG|tempVcount\(0),
	datad => \button[2]~input_o\,
	combout => \U_BRC1|row_count[0]~6_combout\);

-- Location: LCCOMB_X22_Y9_N0
\U_BRC1|row_count[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[0]~7_combout\ = (\U_BRC1|Add0~0_combout\ & ((\button[0]~input_o\ & (!\button[2]~input_o\ & \button[1]~input_o\)) # (!\button[0]~input_o\ & (\button[2]~input_o\ & !\button[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|Add0~0_combout\,
	datab => \button[0]~input_o\,
	datac => \button[2]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_BRC1|row_count[0]~7_combout\);

-- Location: LCCOMB_X22_Y8_N0
\U_BRC1|row_count[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[0]~8_combout\ = (\U_BRC1|Add1~0_combout\ & (\button[2]~input_o\ $ (((!\button[0]~input_o\) # (!\button[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \button[2]~input_o\,
	datac => \button[0]~input_o\,
	datad => \U_BRC1|Add1~0_combout\,
	combout => \U_BRC1|row_count[0]~8_combout\);

-- Location: LCCOMB_X22_Y9_N10
\U_BRC1|row_count[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[0]~9_combout\ = (\U_BRC|process_0~1_combout\ & (\U_BRC1|row_count[0]~7_combout\ & (\show_row~0_combout\))) # (!\U_BRC|process_0~1_combout\ & ((\U_BRC1|row_count[0]~8_combout\) # ((\U_BRC1|row_count[0]~7_combout\ & 
-- \show_row~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC|process_0~1_combout\,
	datab => \U_BRC1|row_count[0]~7_combout\,
	datac => \show_row~0_combout\,
	datad => \U_BRC1|row_count[0]~8_combout\,
	combout => \U_BRC1|row_count[0]~9_combout\);

-- Location: LCCOMB_X21_Y9_N22
\U_BRC1|row_count[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[0]~10_combout\ = (\U_VSG|tempVcount\(9) & (\U_BRC1|row_count[0]~6_combout\ & ((\U_BRC|Add0~4_combout\)))) # (!\U_VSG|tempVcount\(9) & ((\U_BRC1|row_count[0]~9_combout\) # ((\U_BRC1|row_count[0]~6_combout\ & \U_BRC|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(9),
	datab => \U_BRC1|row_count[0]~6_combout\,
	datac => \U_BRC1|row_count[0]~9_combout\,
	datad => \U_BRC|Add0~4_combout\,
	combout => \U_BRC1|row_count[0]~10_combout\);

-- Location: LCCOMB_X21_Y9_N26
\U_BRC1|row_count[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[1]~12_combout\ = (\U_BRC1|Add0~2_combout\ & ((\U_BRC|Add0~3_combout\) # ((\U_VSG|tempVcount\(1) & \U_BRC|Add0~4_combout\)))) # (!\U_BRC1|Add0~2_combout\ & (\U_VSG|tempVcount\(1) & ((\U_BRC|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|Add0~2_combout\,
	datab => \U_VSG|tempVcount\(1),
	datac => \U_BRC|Add0~3_combout\,
	datad => \U_BRC|Add0~4_combout\,
	combout => \U_BRC1|row_count[1]~12_combout\);

-- Location: LCCOMB_X21_Y9_N16
\U_BRC1|row_count[5]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[5]~11_combout\ = (!\U_BRC1|row_count[3]~3_combout\ & (!\U_BRC|process_0~1_combout\ & !\U_VSG|tempVcount\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|row_count[3]~3_combout\,
	datac => \U_BRC|process_0~1_combout\,
	datad => \U_VSG|tempVcount\(9),
	combout => \U_BRC1|row_count[5]~11_combout\);

-- Location: LCCOMB_X21_Y7_N16
\U_BRC1|row_count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[1]~13_combout\ = (\U_BRC1|row_count[1]~12_combout\ & ((\U_BRC1|row_count[3]~3_combout\) # ((\U_BRC1|row_count[5]~11_combout\ & \U_BRC1|Add1~2_combout\)))) # (!\U_BRC1|row_count[1]~12_combout\ & (((\U_BRC1|row_count[5]~11_combout\ & 
-- \U_BRC1|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|row_count[1]~12_combout\,
	datab => \U_BRC1|row_count[3]~3_combout\,
	datac => \U_BRC1|row_count[5]~11_combout\,
	datad => \U_BRC1|Add1~2_combout\,
	combout => \U_BRC1|row_count[1]~13_combout\);

-- Location: LCCOMB_X23_Y9_N16
\U_BRC1|row_count[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[2]~14_combout\ = (\U_VSG|tempVcount\(2) & ((\U_BRC|Add0~4_combout\) # ((\U_BRC1|Add0~4_combout\ & \U_BRC|Add0~3_combout\)))) # (!\U_VSG|tempVcount\(2) & (\U_BRC1|Add0~4_combout\ & ((\U_BRC|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(2),
	datab => \U_BRC1|Add0~4_combout\,
	datac => \U_BRC|Add0~4_combout\,
	datad => \U_BRC|Add0~3_combout\,
	combout => \U_BRC1|row_count[2]~14_combout\);

-- Location: LCCOMB_X21_Y9_N12
\U_BRC1|row_count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[2]~15_combout\ = (\U_BRC1|row_count[3]~3_combout\ & ((\U_BRC1|row_count[2]~14_combout\) # ((\U_BRC1|Add1~4_combout\ & \U_BRC1|row_count[5]~11_combout\)))) # (!\U_BRC1|row_count[3]~3_combout\ & (\U_BRC1|Add1~4_combout\ & 
-- ((\U_BRC1|row_count[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|row_count[3]~3_combout\,
	datab => \U_BRC1|Add1~4_combout\,
	datac => \U_BRC1|row_count[2]~14_combout\,
	datad => \U_BRC1|row_count[5]~11_combout\,
	combout => \U_BRC1|row_count[2]~15_combout\);

-- Location: LCCOMB_X22_Y9_N20
\U_BRC1|row_count[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[3]~16_combout\ = (\U_VSG|tempVcount\(3) & ((\U_BRC|Add0~4_combout\) # ((\U_BRC1|Add0~6_combout\ & \U_BRC|Add0~3_combout\)))) # (!\U_VSG|tempVcount\(3) & (\U_BRC1|Add0~6_combout\ & (\U_BRC|Add0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(3),
	datab => \U_BRC1|Add0~6_combout\,
	datac => \U_BRC|Add0~3_combout\,
	datad => \U_BRC|Add0~4_combout\,
	combout => \U_BRC1|row_count[3]~16_combout\);

-- Location: LCCOMB_X21_Y9_N14
\U_BRC1|row_count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[3]~17_combout\ = (\U_BRC1|row_count[3]~3_combout\ & ((\U_BRC1|row_count[3]~16_combout\) # ((\U_BRC1|Add1~6_combout\ & \U_BRC1|row_count[5]~11_combout\)))) # (!\U_BRC1|row_count[3]~3_combout\ & (\U_BRC1|Add1~6_combout\ & 
-- ((\U_BRC1|row_count[5]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|row_count[3]~3_combout\,
	datab => \U_BRC1|Add1~6_combout\,
	datac => \U_BRC1|row_count[3]~16_combout\,
	datad => \U_BRC1|row_count[5]~11_combout\,
	combout => \U_BRC1|row_count[3]~17_combout\);

-- Location: LCCOMB_X24_Y7_N26
\U_BRC1|row_count[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[4]~18_combout\ = (\U_VSG|tempVcount\(4) & ((\U_BRC|Add0~4_combout\) # ((\U_BRC1|Add0~8_combout\ & \U_BRC|Add0~3_combout\)))) # (!\U_VSG|tempVcount\(4) & (\U_BRC1|Add0~8_combout\ & ((\U_BRC|Add0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VSG|tempVcount\(4),
	datab => \U_BRC1|Add0~8_combout\,
	datac => \U_BRC|Add0~4_combout\,
	datad => \U_BRC|Add0~3_combout\,
	combout => \U_BRC1|row_count[4]~18_combout\);

-- Location: LCCOMB_X21_Y7_N14
\U_BRC1|row_count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[4]~19_combout\ = (\U_BRC1|Add1~8_combout\ & ((\U_BRC1|row_count[5]~11_combout\) # ((\U_BRC1|row_count[3]~3_combout\ & \U_BRC1|row_count[4]~18_combout\)))) # (!\U_BRC1|Add1~8_combout\ & (\U_BRC1|row_count[3]~3_combout\ & 
-- ((\U_BRC1|row_count[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|Add1~8_combout\,
	datab => \U_BRC1|row_count[3]~3_combout\,
	datac => \U_BRC1|row_count[5]~11_combout\,
	datad => \U_BRC1|row_count[4]~18_combout\,
	combout => \U_BRC1|row_count[4]~19_combout\);

-- Location: LCCOMB_X23_Y9_N30
\U_BRC1|row_count[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[5]~20_combout\ = (\U_BRC1|Add0~10_combout\ & ((\U_BRC|Add0~3_combout\) # ((\U_VSG|tempVcount\(5) & \U_BRC|Add0~4_combout\)))) # (!\U_BRC1|Add0~10_combout\ & (\U_VSG|tempVcount\(5) & (\U_BRC|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|Add0~10_combout\,
	datab => \U_VSG|tempVcount\(5),
	datac => \U_BRC|Add0~4_combout\,
	datad => \U_BRC|Add0~3_combout\,
	combout => \U_BRC1|row_count[5]~20_combout\);

-- Location: LCCOMB_X21_Y7_N0
\U_BRC1|row_count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_BRC1|row_count[5]~21_combout\ = (\U_BRC1|row_count[5]~20_combout\ & ((\U_BRC1|row_count[3]~3_combout\) # ((\U_BRC1|Add1~10_combout\ & \U_BRC1|row_count[5]~11_combout\)))) # (!\U_BRC1|row_count[5]~20_combout\ & (\U_BRC1|Add1~10_combout\ & 
-- (\U_BRC1|row_count[5]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_BRC1|row_count[5]~20_combout\,
	datab => \U_BRC1|Add1~10_combout\,
	datac => \U_BRC1|row_count[5]~11_combout\,
	datad => \U_BRC1|row_count[3]~3_combout\,
	combout => \U_BRC1|row_count[5]~21_combout\);

-- Location: M9K_X13_Y18_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a8\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|ALT_INV_row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y19_N20
\vga_red~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_red~0_combout\ = (\switch[9]~input_o\ & ((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a8~portadataout\) # ((\vga_green~0_combout\)))) # (!\switch[9]~input_o\ & (((\U_VGAROM3|altsyncram_component|auto_generated|q_a\(8) & 
-- !\vga_green~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datab => \U_VGAROM3|altsyncram_component|auto_generated|q_a\(8),
	datac => \switch[9]~input_o\,
	datad => \vga_green~0_combout\,
	combout => \vga_red~0_combout\);

-- Location: M9K_X25_Y20_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a20\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 8,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a20_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a20_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y19_N2
\vga_red~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_red~1_combout\ = (\vga_green~0_combout\ & ((\vga_red~0_combout\ & ((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a20~portadataout\))) # (!\vga_red~0_combout\ & (\U_VGAROM1|altsyncram_component|auto_generated|q_a\(8))))) # 
-- (!\vga_green~0_combout\ & (((\vga_red~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM1|altsyncram_component|auto_generated|q_a\(8),
	datab => \vga_green~0_combout\,
	datac => \vga_red~0_combout\,
	datad => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a20~portadataout\,
	combout => \vga_red~1_combout\);

-- Location: LCCOMB_X24_Y19_N28
\vga_red~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_red~2_combout\ = (\process_1~16_combout\ & \vga_red~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_1~16_combout\,
	datad => \vga_red~1_combout\,
	combout => \vga_red~2_combout\);

-- Location: M9K_X13_Y9_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a9\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|ALT_INV_row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y10_N0
\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a9\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAABAEEABEBEFAAABEAAAAAAAAAAA8800AAAABAAABBEBEAABAA8AAAAAAAAA20A02AABEAAAAFEAFAABE2A02AAAAAAA82A8AAAFFAAAAAAABEAAAAAA2AAAAAAAAAA0FAABAAAAAEAEAFAAB8A82AAAAAAA8A01AA6FA2A22BC369BAA088A8A8AAAAAA86575F7A0280E238F630AAA8A88A80AA2346B7FA8A84E02E8F2AA08A882A82A8AF53A2EA8AA3FA2ACB1C2A8A8AAAA2AA6D52E6AA828632AA8B4AAA2A8B9AA2A83B4AF7CAAAAC6A22AA2CAA67AAE9128BB48A57EA829B30A0001DB4A054B446AB37B9FEA23C8E72A2825AA7B697FFF7A8B7AB7DAA92BE822BCABFABFFFFFFF2AB36EB54AAFFEEDDEAA57FFFFFAF7FF6ABBFEBFCAA2FAAA4FBD57FFFEEFA9EC0",
	mem_init2 => X"AB97EBD7EA95FFF7FFF5FFFFBEFF7BF8AAEFAFFEAFFFFFFFFFFFFFFFFFFFEBEAAAEFEBFEEEFFFFFFFFFFFFFFFFFFBAEAAAEFFBFFAEFEEBAAAABEBABFFFFFAEAAAAFFEBFABBFBFBFAAFEBBAAAAABFBAAAAAAFEBFFBBEEAAEBEABAEFEAAEBABAAAAAEBEFFFEBEEFABBFBAABFEEBFAAAAAAAAABFFFAEFBEAFABBBABBBFFEEAAAAAAAAABFBFBBEAEAAABBBAFAEFFFAAAAAAAAAAFFFFEAAAEABEBBFAAEABEEAAAAAAAAAAFFFFEAFAABFEFAAABBFBFAAAAAAAAAAAFFFFBAAEAABFEEBEABAFEAAAAAAAAAAAFFFBABEFEABEEAAAAAAAAAAAAAAAAAAABFFFAAEAABAABBEAAAAAAAAAAAAAAAAAFFFABAAFAABAEBAEEAAAAAAAAAAAAAAAFFFEEABEAEABFEBBBAAAAAAAAAAAA",
	mem_init1 => X"AABBFFFEAEEAEBFFFBEFAAAAAAAAAAAAAAABFFBEBAFEFAFFFFAFEAAAAAAAAAAAAABFFFAABEBABEFEFAAFAAAAAAAAAAAAAABBFFEBFABFFFFFFFBFAAFAAAAAAAAAAAFBFFEFBAFBFEFBBFAAEBAEEAAAAAAAABFFFFEFEBFFBEFEEEEAFEFBEAAAAAAAAFBFFFEBAAEEEEAFFBAABFEBEBAAAAAAAEFFFFFEFBEBAFABBEEABBFEEFAAAAAAAAFFFFFEEBBAABAAFEAAAABFBFAAAAAABEFFFBFAEBAEAAEBFAAAAAFEFAAAAAAAAEFFFBEFBABAABAFBBABEBBFFAAAAAAAAAFFFBFFBEFBAFAFFBBEFBBFAAAAAAAAAFFAFAFBFFAEEABEABEEAEEEAAAAAAAAEFBAFAFFFEEFFFFFFFFAAAAAAAAAAAAABEBFFEFFFBFFFFFAFFFFBAAAAAAAAAAAAABFBFFABAABFFFAAAAFFAAAAAAAAAAA",
	mem_init0 => X"BFBABFFEAABFFFFFFBEBAAAAAAAAAAAA299CBB0606E8BFA7FE0A68AAA802AA2A80F95B6004A5F537FF4F08AAA802A00A826E0E0A2C50F5B5DD4B82AAA802800A82E1AF8A2800D7FD7C5782AAA8000002A8696A8A0BEDDFF1795682AAA8020A80A800EA8A28A9D7E9FD5A82AAA2022A00AA0A0A0A0A24F7F7FC0882AA80022A00AA2022A88A80ABD5F8282AAA80022A00AAA820208A80280AA8A802AAA8022A00AAA0A82A2820228A288208A888002A00AA0A2A2A2AA00A0020888AA82A020202AA22A8A000AA080220AA8AAA00000A80AAAAAA82220A0882A02000A8AAA0A228AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brom3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom2:U_VGAROM3|altsyncram:altsyncram_component|altsyncram_err3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	portaaddr => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a9_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a9_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y13_N26
\vga_red~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_red~3_combout\ = (\switch[9]~input_o\ & ((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a9~portadataout\) # ((\vga_green~0_combout\)))) # (!\switch[9]~input_o\ & (((!\vga_green~0_combout\ & 
-- \U_VGAROM3|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a9~portadataout\,
	datac => \vga_green~0_combout\,
	datad => \U_VGAROM3|altsyncram_component|auto_generated|q_a\(9),
	combout => \vga_red~3_combout\);

-- Location: M9K_X13_Y15_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a21\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 9,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a21_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a21_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y13_N8
\vga_red~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_red~4_combout\ = (\vga_red~3_combout\ & ((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a21~portadataout\) # ((!\vga_green~0_combout\)))) # (!\vga_red~3_combout\ & (((\vga_green~0_combout\ & 
-- \U_VGAROM1|altsyncram_component|auto_generated|q_a\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_red~3_combout\,
	datab => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a21~portadataout\,
	datac => \vga_green~0_combout\,
	datad => \U_VGAROM1|altsyncram_component|auto_generated|q_a\(9),
	combout => \vga_red~4_combout\);

-- Location: LCCOMB_X22_Y13_N18
\vga_red~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_red~5_combout\ = (\vga_red~4_combout\ & \process_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_red~4_combout\,
	datad => \process_1~16_combout\,
	combout => \vga_red~5_combout\);

-- Location: M9K_X25_Y16_N0
\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAABABAAABEBAFFFFEAAAAAAAAAAAAA02AAAAEAAAAEBEBFFFAA08AAAAAAAA0008AAAAAAAAAABFAFFFAA002AAAAAAA0AA82AEAFAAAAABFEBFFE8AAAAAAAAAA82A8AAEBAAAAAEABFAFFE0A8AAAAAAAAA0A456C508080B429685582202820000A82452DD782288E087B1DA0082A0008AAA90DBD75A0AA1E82BC64A80AA80AA82A882CFD74A0AABFAAA932A88AA82AA82A8B0CFD34A082F9AAA836EA82A87EA82A0B4C7D24A2204C0AAA21AA83EF7A3D2A8DCE75F4222119082221A53D722AD12ABDEE7DE6ABE2ECAA8AAAFDAE9FFDFD6AA56FFD6EAB2BBDCAAB56AFFFFFFFFD6AB77BFFFEAFFFE88BFD7FFFFFFFA2BD6ABFFBFD5EA9DFFFFAFFF7FFFFAAFF55A",
	mem_init2 => X"AAFFBFFEEAFFFFFFFFFFFFFFEBFFD452AABFFFFEAEFFFFFFFFFFFFFFFFFFFBAAAAFFFFFEAFFFFFFFFFFFFFFFFFFFFFAAAAFFEFFFEFFFFEAAAABEAFFFFFFEFFAAAAEFFFFEFBFFBAAFEAAABAAABFEFFEAAAAEFFFFAFFFFBFBFEFEBBFFFFAAFAAAAAAAFFFFABFFEAFEFEEFBEFFAAFEEAAAAAABFFFFABFFABBFEEEFAEFFFFEAAAAAAAAAFFFFAFFFFAAAEEEFAFBFFFAAAAAAAAAABFFFBFFEAAFAFEAFFFFEAAAAAAAAAAAABFFFBFFBAEFFEABFEFFFAAAAAAAAAAAABFFFAFFFAFFFFFFAAAFAAAAAAAAAAAAABFFFBFFBBFFFFEAAAAAAAAAAAAAAAAAABFFBBFBAFFFFEEAAAAAAAAAAAAAAAAAABFFFBEAEFFEFBEEBEAAAAAAAAAAAAAAABFFFEABBFBAFFFEAFAAAAAAAAAAAA",
	mem_init1 => X"AAAFFFFEAABFFFFFFFEAAAAAAAAAAAAAAABFFFFAEAABFEFFFFBAAAAAAAAAAAAAAAAFFFFEEEEFFFFFFFFAAAAAAAAAAAAAAAAFFFFFEEFFFFFFFFAFBFAAAAAAAAAAAAAFFFFEBEFBEBEFEFAAAEFAEAAAAAAAAABFFFFFABFEEBFFEFEAAFAFFEAAAAAAAAFFFFFFEBBEFFFEBFAAAAAABEAAAAAAABFFFFFFEAEEFAFFBBEABBAEBFAAAAAAAFFFFFEFFAEEFFFFBFEAAAEAFFAAAAAAABFFFFEFFABEAABEABAAAEABFAAAAAAABBFFFFFBFABAAAFAAAAAAEFFFAAAAAAABBFFFFFBEEBAAAAABABFABFEEAAAAAAABEFFFFFFEAEBBFEFFFFFFEBAAAAAAAAABEFFFFFAEBFFFFFFFFFFFEAAAAAAAAAAEFFAFFFAEAAAAAAFAAAAFEAAAAAAAAAAFBFAFEFBEABEAAAFFFFAAAAAAAAAAAAA",
	mem_init0 => X"AAFEFEFBAAAAAAAAAEBFEAAAAAAAAAAA96F6F4F8A8B76D5FD5FFD2AAAAAAA0AA02942E4A10BDFF755D5B42AAAA0A002AA09B7E2A2B2577FDFD7FCAAAAA0A000AA0D5FA2A2B755FF57D7D8AAAAA0A0282A0B52A2A2A9C5FFD7D7C8AAAAA080A02A08DAA2A28255FF57D288AAA82080A82A8282A2A282075FDF9228AAAA0080A82AAAA8A020828B8AAEA2A80AA8A080A82AA82AAAAAAAAAAAAAAAAAAAAAA080A82AAA0AA2AAA0828AAAA088AAA2A080A82AAAA28AAAAAAA8AA2A2A28A800080282AA28A88A2A20A8A0AA0028A800000A02AA2AAAA8AAAAAA2A2AAAAAAA000A0A82AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brom3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom2:U_VGAROM3|altsyncram:altsyncram_component|altsyncram_err3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	portaaddr => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y6_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a22\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y10_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a10\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|ALT_INV_row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: LCCOMB_X22_Y13_N20
\vga_red~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_red~6_combout\ = (\vga_green~0_combout\ & (((\switch[9]~input_o\)))) # (!\vga_green~0_combout\ & ((\switch[9]~input_o\ & ((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a10~portadataout\))) # (!\switch[9]~input_o\ & 
-- (\U_VGAROM3|altsyncram_component|auto_generated|q_a\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_green~0_combout\,
	datab => \U_VGAROM3|altsyncram_component|auto_generated|q_a\(10),
	datac => \switch[9]~input_o\,
	datad => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a10~portadataout\,
	combout => \vga_red~6_combout\);

-- Location: LCCOMB_X22_Y13_N2
\vga_red~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_red~7_combout\ = (\vga_green~0_combout\ & ((\vga_red~6_combout\ & ((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a22~portadataout\))) # (!\vga_red~6_combout\ & (\U_VGAROM1|altsyncram_component|auto_generated|q_a\(10))))) # 
-- (!\vga_green~0_combout\ & (((\vga_red~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM1|altsyncram_component|auto_generated|q_a\(10),
	datab => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a22~portadataout\,
	datac => \vga_green~0_combout\,
	datad => \vga_red~6_combout\,
	combout => \vga_red~7_combout\);

-- Location: LCCOMB_X22_Y13_N0
\vga_red~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_red~8_combout\ = (\vga_red~7_combout\ & \process_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_red~7_combout\,
	datad => \process_1~16_combout\,
	combout => \vga_red~8_combout\);

-- Location: M9K_X13_Y17_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a23\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init2 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init1 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	mem_init0 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a23_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a23_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y17_N0
\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAFFFFFFFFFFFFFAAAAAAAAAAAAAAAAAABFFFFFFFFFFFFFEAA2AAAAAAAAAAA0AABFFFFFFFFFFFFFE8A8AAAAAAAAA2A8AABFAFFFFFFFFFFFE2A82AAAAAAAA2AAAABEFFFFFBFFFFFFE2AAAAAAAAAAA003FABAFFFFFEBFFFFFE000AAAAAAAAAAA9DE820F5D5715D7C74AA802822A02AAAFDF8A2F7FF7BDD7F3DAAA82A2AA8AAA35DFCA3F7FF4AD57F6DA2082A2AA8AA8BDDFDA3F7FF0ED57F6982882A2AA8AA8FDDFDE3F55F13DD7D7C82883D7DE8AA077D5D6155DEE2FF5D7C02DF5D7D7DEAAFFFFFFBFEBFBAFFFFFFFFFFFFFFFDEABFFFFFFBFEFEFEBFFFFFFFFFFFFFFDEAADFFF7DBFA2ABF7FFFF7FFFFFFFFFDAAA57FF7FBFF7FFF7FFFFFFFFFFFF5FD2",
	mem_init2 => X"AAFFFFFFBFFFFFFFFFFFFFFFFFFFFFEAAAFFFFFFFBFFFFFFFFFFFFFFFFFFFFEAAABFFFFFFBFFFFFFFFFFFFFFFFFFEFAAAABFFFFEFBFFFFFFFFEBFFFFFFFFBEAAAABFFFFFEFFFEFFFFFFFEFFFFFFAFAAAAABFFFFFEFFFFFFFFFFFFFFFFFFFEAAAAABFFFFFFFFFFFFFFFFFFFFFFFFAAAAAAAAFFFFFFFFFEAFFFFFFFFFFFAAAAAAAAAAFFFFFFFFAAABFFFFFFFFFEAAAAAAAAAAFFFFFFFFAAAAAFFFFFFFFAAAAAAAAAAAFFFFFFFEABFFAFFFFFFEAAAAAAAAAAAAFFFFFFFABFFFFAAAAAAAAAAAAAAAAAAAFFFFFFFAFFFFFFAAAAAAAAAAAAAAAAAAFFFFFFEBFFFFFFEAAAAAAAAAAAAAAAAAFFFFEAABFFFFFFFFAAAAAAAAAAAAAAAAFFFFAAEFFFFFFFFFEAAAAAAAAAAAA",
	mem_init1 => X"AAAFFFFABFFFFAFFFFBFAAAAAAAAAAAAAAAFFFFEBFFFFFFFFFEFAAAAAAAAAAAAAAAFFFFEBBFFFFFFFFEFAAAAAAAAAAAAAAAFFFFEBBFFFFFFFFEAAAAAAAAAAAAAAABFFFFFABFEFFFFAFEABBFFAAAAAAAAAAFFFFFFAAFAFFFFBFAAABFFFAAAAAAAABFFFFFFEAFBFBFFFEEAAFFFFEAAAAAAAFFFFFFFEABAFBFEFEAAAEABFEAAAAAABFFFFFFFEABABAFEFAAAAABFFEAAAAAABFFFFFFFEABABEFEFAAAABFFFEAAAAAABFFFFFFFEAAEAEBEEAAAABFFEAAAAAAABFFFFFFFFBEFFFFFEFEAFEFFAAAAAAAABBFFFFFFFFFFFFFFFFFFFFAAAAAAAAAABBFFFFFFFFFFFFFFFFFFFAAAAAAAAAAABBFFFFFFFFFFFFFFFFFFFAAAAAAAAAAABFFFFFFFFFFFFFFFFFFFFAAAAAAAAAAA",
	mem_init0 => X"BFFFFFFEBFFFFFFFFFFFFAAAAAAAAAAAAFFFFFFEBFFFFFFFFFFFEAAAAAAAAAAA87F7D5182D7575D7D57FC2AAA802800A82F57F082D7DD7F57F7F82AAA8020002A01D7E082B5DD7FDFF7E82AAAA0A0A02A09DEA082A55D7FDFF7802AAAA0A0A82A83D2A082A3DD7FDFF6A82AAA80A0A82A8282A082829D7F5FE2A82AA800A0A82A82A00082A002557A80002AAA00A0A82AAAAAAAAAAAAAAAAAAAAAAAAAA0A0A82AA8A2AA8A2AA8A28A2AAA2A82A0A0A82AA80AA28A20A0A28A282A2A800000A00AA8AAA28A28A0A2A22A2A2A800000200AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brom3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom2:U_VGAROM3|altsyncram:altsyncram_component|altsyncram_err3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	portaaddr => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y19_N14
\vga_red~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_red~9_combout\ = (\switch[9]~input_o\ & (((\vga_green~0_combout\)))) # (!\switch[9]~input_o\ & ((\vga_green~0_combout\ & ((\U_VGAROM1|altsyncram_component|auto_generated|q_a\(11)))) # (!\vga_green~0_combout\ & 
-- (\U_VGAROM3|altsyncram_component|auto_generated|q_a\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM3|altsyncram_component|auto_generated|q_a\(11),
	datab => \switch[9]~input_o\,
	datac => \U_VGAROM1|altsyncram_component|auto_generated|q_a\(11),
	datad => \vga_green~0_combout\,
	combout => \vga_red~9_combout\);

-- Location: M9K_X13_Y22_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a11\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 11,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|ALT_INV_row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a11_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a11_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y19_N0
\vga_red~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_red~10_combout\ = (\vga_red~9_combout\ & ((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a23~portadataout\) # ((!\switch[9]~input_o\)))) # (!\vga_red~9_combout\ & (((\switch[9]~input_o\ & 
-- \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a11~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a23~portadataout\,
	datab => \vga_red~9_combout\,
	datac => \switch[9]~input_o\,
	datad => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a11~portadataout\,
	combout => \vga_red~10_combout\);

-- Location: LCCOMB_X24_Y19_N22
\vga_red~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_red~11_combout\ = (\process_1~16_combout\ & \vga_red~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_1~16_combout\,
	datad => \vga_red~10_combout\,
	combout => \vga_red~11_combout\);

-- Location: M9K_X25_Y11_N0
\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAA0820AAAAAAAAAAAAAAAEAAAAAAAAAAAA02A22AAAAAAAAAAAAAABE2222AAAAAAA82AAAAAAAAAAAAAAAAABEAAA2AAAAAAAA8AAEAAAAAAAAAAAAAAAA0AA2AAAAAAA8A0CFEAAA2A22A82282AF208A82AAAAAA2A617AA228AA0A8802A30AA80080A82AA3E66C2AA02A1A22A8A1A20AA882AA2A8BA72A2AA0AA2AA2A8A082A2A88AAA2A27A77E2AA02A2AAAA8A0AAA2A8EBAA2AA6E6FE2828AAA2AA2AA00AA66FFB4A2A8E18E258A80AA20A00A3D99F502B072AA76AFBEAA888B22A2064F7AE61782E2AB73AFB2AA88ABC16EB5EAEBFAAAAAA3AB7AEF11AAA2EF88FFE07EAAABEE5FA2AAEBEEBBAA3F3FD2BFFAAAAAAEAF8EE4",
	mem_init2 => X"AB43EA97AA303FE6EA80AAFEEBAF2AFAAAAEAABFEAEAAAAAFD60BFAABFABABAA8A5EE888ABE1E2FFAA7DCABFEABB992AA074F2042BAE40FFEA12EEAAAF8F8BA2A02A64AF48A82A2EA80A3B4FEDEA62A8AABAAC3EBFBFBF1AF228206213C2D0A2AA9CAA4AA1CF0FD348AAAEAAF3BBAA22AAB7BE6FBD046C7DF8ABAEAFBFAAAAA2AAAF1E6CEE92201EEAABEEA0BAAA28AAAAAFBF053AEAABAFEAABF86A2020AAAAAAAB238DAFEAAEAFEABD6A4822A22AAAAAABAAEFAAABFABAABE805B2A02AAAAAAAAB2EBFBEEAFBFBBE80082AAAAAAAAAAAAB0FBFAFBFEAAEFF0AAAAAAAAAAAAAAAA90AAFAABBABABF5C8AAAAAAAAAAAAAAAD2BAAAEEEBF95BBEAAAAAAAAAAAAA",
	mem_init1 => X"AAAF2BAABBEFB53A3DBAAAAAAAAAAAAAAAA9AAFEEFFAFE53DFEAAAAAAAAAAAAAAAB92FBE073E8EA2EAAEEAAAAAAAAAAAAABAAFAF69A7AEBFAFEEAAAAAAAAAAAAAAE82FFEAE9ECEFFAFAAAABAAAAAAAAAAAACAAB443112EAFFEEAAAABFAAAAAAAAABA087A01D52BFBBBAAAAAABEAAAAAAABEA888F91FFBEFEAEAAAAAABEAAAAAABFEA0EABC8BAFEFEAEAAAAAABEAAAAAABBAA32A8122ABEFEFAAAAAABFEAAAAAABBAA913FB02EAEEEEAAAAABFEAAAAAAABFAFBF3CC822AAAAAAAAAAFFAAAAAAAABEAAAA2BAA8AAAAAAAAFAFAAAAAAAAAAFEABEAEBA37D7FFAAFFFEAAAAAAAAAAAABAFABFBDBAAFFFFAAFAAEAAAAAAAAAAFFAAFEBBA0A82AAAAAAABAAAAAAAAAAA",
	mem_init0 => X"AAFFFEAEA828AAAAAAAEAAAAAAAAAAAA2CD8BAE63AA92F577F5FE88AA802AA2AAFF85BC0902DDD7FDD5B208AA8A280AAA83CDAA88F8D7DFF5D4AAA2AAA220A8A88D6BF28898EFFFD7D53AA2AA8A22088A27C6A288BC2FFF57A16AA2AA8A222A8AA94EA2888FBFFF9BC522A2AA0A20A28AA888A8888AD69F92808AA2A80A20A28A8A88A088A82ADA8F2A880AA8AA20A28AAA820000A80288AA88002AAA8A20A28AA88AA2A2828228A282A0AA808A20A08AA202AAA28A02A0228808AAA00A0A2A2AA22A8AA00AAA20228A28A8882AA8A20AAAAA8000A0A088000000008AAA0A228AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brom3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom2:U_VGAROM3|altsyncram:altsyncram_component|altsyncram_err3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	portaaddr => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y22_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AAA2AAA2AAA2AAA2AAA2AAA2AAA2AAAEAAAEAAAEAAAEAAAEAAAEAAAEAAAEAAA0AAA0AAA0AAA0AAA0AAA0AAA0AAA0AAAFAAAFAAAFAAAFAAAFAAAFAAAFAAAFAAA02AA02AA02AA02AA02AA02AA02AA02AAFEAAFEAAFEAAFEAAFEAAFEAAFEAAFEAA00AA00AA00AA00AA00AA00AA00AA00AAFFAAFFAAFFAAFFAAFFAAFFAAFFAAFFAA002A002A002A002A002A002A002A002AFFEAFFEAFFEAFFEAFFEAFFEAFFEAFFEA000A000A000A000A000A000A000A000AFFFAFFFAFFFAFFFAFFFAFFFAFFFAFFFA00020002000200020002000200020002FFFEFFFEFFFEFFFEFFFEFFFEFFFEFFFE00000000000000000000000000000000",
	mem_init2 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AAA2AAA2AAA2AAA2AAA2AAA2AAA2AAAEAAAEAAAEAAAEAAAEAAAEAAAEAAAEAAA0AAA0AAA0AAA0AAA0AAA0AAA0AAA0AAAFAAAFAAAFAAAFAAAFAAAFAAAFAAAFAAA02AA02AA02AA02AA02AA02AA02AA02AAFEAAFEAAFEAAFEAAFEAAFEAAFEAAFEAA00AA00AA00AA00AA00AA00AA00AA00AAFFAAFFAAFFAAFFAAFFAAFFAAFFAAFFAA002A002A002A002A002A002A002A002AFFEAFFEAFFEAFFEAFFEAFFEAFFEAFFEA000A000A000A000A000A000A000A000AFFFAFFFAFFFAFFFAFFFAFFFAFFFAFFFA00020002000200020002000200020002FFFEFFFEFFFEFFFEFFFEFFFEFFFEFFFE00000000000000000000000000000000",
	mem_init1 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AAA2AAA2AAA2AAA2AAA2AAA2AAA2AAAEAAAEAAAEAAAEAAAEAAAEAAAEAAAEAAA0AAA0AAA0AAA0AAA0AAA0AAA0AAA0AAAFAAAFAAAFAAAFAAAFAAAFAAAFAAAFAAA02AA02AA02AA02AA02AA02AA02AA02AAFEAAFEAAFEAAFEAAFEAAFEAAFEAAFEAA00AA00AA00AA00AA00AA00AA00AA00AAFFAAFFAAFFAAFFAAFFAAFFAAFFAAFFAA002A002A002A002A002A002A002A002AFFEAFFEAFFEAFFEAFFEAFFEAFFEAFFEA000A000A000A000A000A000A000A000AFFFAFFFAFFFAFFFAFFFAFFFAFFFAFFFA00020002000200020002000200020002FFFEFFFEFFFEFFFEFFFEFFFEFFFEFFFE00000000000000000000000000000000",
	mem_init0 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AAA2AAA2AAA2AAA2AAA2AAA2AAA2AAAEAAAEAAAEAAAEAAAEAAAEAAAEAAAEAAA0AAA0AAA0AAA0AAA0AAA0AAA0AAA0AAAFAAAFAAAFAAAFAAAFAAAFAAAFAAAFAAA02AA02AA02AA02AA02AA02AA02AA02AAFEAAFEAAFEAAFEAAFEAAFEAAFEAAFEAA00AA00AA00AA00AA00AA00AA00AA00AAFFAAFFAAFFAAFFAAFFAAFFAAFFAAFFAA002A002A002A002A002A002A002A002AFFEAFFEAFFEAFFEAFFEAFFEAFFEAFFEA000A000A000A000A000A000A000A000AFFFAFFFAFFFAFFFAFFFAFFFAFFFAFFFA00020002000200020002000200020002FFFEFFFEFFFEFFFEFFFEFFFEFFFEFFFE00000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|ALT_INV_row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y19_N12
\vga_blue~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_blue~0_combout\ = (\switch[9]~input_o\ & (((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a0~portadataout\) # (\vga_green~0_combout\)))) # (!\switch[9]~input_o\ & (\U_VGAROM3|altsyncram_component|auto_generated|q_a\(0) & 
-- ((!\vga_green~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM3|altsyncram_component|auto_generated|q_a\(0),
	datab => \switch[9]~input_o\,
	datac => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a0~portadataout\,
	datad => \vga_green~0_combout\,
	combout => \vga_blue~0_combout\);

-- Location: M9K_X25_Y21_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a12\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AAA2AAA2AAA2AAA2AAA2AAA2AAA2AAAEAAAEAAAEAAAEAAAEAAAEAAAEAAAEAAA0AAA0AAA0AAA0AAA0AAA0AAA0AAA0AAAFAAAFAAAFAAAFAAAFAAAFAAAFAAAFAAA02AA02AA02AA02AA02AA02AA02AA02AAFEAAFEAAFEAAFEAAFEAAFEAAFEAAFEAA00AA00AA00AA00AA00AA00AA00AA00AAFFAAFFAAFFAAFFAAFFAAFFAAFFAAFFAA002A002A002A002A002A002A002A002AFFEAFFEAFFEAFFEAFFEAFFEAFFEAFFEA000A000A000A000A000A000A000A000AFFFAFFFAFFFAFFFAFFFAFFFAFFFAFFFA00020002000200020002000200020002FFFEFFFEFFFEFFFEFFFEFFFEFFFEFFFE00000000000000000000000000000000",
	mem_init2 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AAA2AAA2AAA2AAA2AAA2AAA2AAA2AAAEAAAEAAAEAAAEAAAEAAAEAAAEAAAEAAA0AAA0AAA0AAA0AAA0AAA0AAA0AAA0AAAFAAAFAAAFAAAFAAAFAAAFAAAFAAAFAAA02AA02AA02AA02AA02AA02AA02AA02AAFEAAFEAAFEAAFEAAFEAAFEAAFEAAFEAA00AA00AA00AA00AA00AA00AA00AA00AAFFAAFFAAFFAAFFAAFFAAFFAAFFAAFFAA002A002A002A002A002A002A002A002AFFEAFFEAFFEAFFEAFFEAFFEAFFEAFFEA000A000A000A000A000A000A000A000AFFFAFFFAFFFAFFFAFFFAFFFAFFFAFFFA00020002000200020002000200020002FFFEFFFEFFFEFFFEFFFEFFFEFFFEFFFE00000000000000000000000000000000",
	mem_init1 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AAA2AAA2AAA2AAA2AAA2AAA2AAA2AAAEAAAEAAAEAAAEAAAEAAAEAAAEAAAEAAA0AAA0AAA0AAA0AAA0AAA0AAA0AAA0AAAFAAAFAAAFAAAFAAAFAAAFAAAFAAAFAAA02AA02AA02AA02AA02AA02AA02AA02AAFEAAFEAAFEAAFEAAFEAAFEAAFEAAFEAA00AA00AA00AA00AA00AA00AA00AA00AAFFAAFFAAFFAAFFAAFFAAFFAAFFAAFFAA002A002A002A002A002A002A002A002AFFEAFFEAFFEAFFEAFFEAFFEAFFEAFFEA000A000A000A000A000A000A000A000AFFFAFFFAFFFAFFFAFFFAFFFAFFFAFFFA00020002000200020002000200020002FFFEFFFEFFFEFFFEFFFEFFFEFFFEFFFE00000000000000000000000000000000",
	mem_init0 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AAA2AAA2AAA2AAA2AAA2AAA2AAA2AAAEAAAEAAAEAAAEAAAEAAAEAAAEAAAEAAA0AAA0AAA0AAA0AAA0AAA0AAA0AAA0AAAFAAAFAAAFAAAFAAAFAAAFAAAFAAAFAAA02AA02AA02AA02AA02AA02AA02AA02AAFEAAFEAAFEAAFEAAFEAAFEAAFEAAFEAA00AA00AA00AA00AA00AA00AA00AA00AAFFAAFFAAFFAAFFAAFFAAFFAAFFAAFFAA002A002A002A002A002A002A002A002AFFEAFFEAFFEAFFEAFFEAFFEAFFEAFFEA000A000A000A000A000A000A000A000AFFFAFFFAFFFAFFFAFFFAFFFAFFFAFFFA00020002000200020002000200020002FFFEFFFEFFFEFFFEFFFEFFFEFFFEFFFE00000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y19_N26
\vga_blue~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_blue~1_combout\ = (\vga_blue~0_combout\ & (((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a12~portadataout\)) # (!\vga_green~0_combout\))) # (!\vga_blue~0_combout\ & (\vga_green~0_combout\ & 
-- ((\U_VGAROM1|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_blue~0_combout\,
	datab => \vga_green~0_combout\,
	datac => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a12~portadataout\,
	datad => \U_VGAROM1|altsyncram_component|auto_generated|q_a\(0),
	combout => \vga_blue~1_combout\);

-- Location: LCCOMB_X24_Y19_N4
\vga_blue~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_blue~2_combout\ = (\vga_blue~1_combout\ & \process_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_blue~1_combout\,
	datac => \process_1~16_combout\,
	combout => \vga_blue~2_combout\);

-- Location: M9K_X25_Y23_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a13\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCC000C000C000C000C000C000C000C000C000C000C000C000C000C000C000C000CFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFC0000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCC000C000C000C000C000C000C000C000C000C000C000C000C000C000C000C000CFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFC0000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCC000C000C000C000C000C000C000C000C000C000C000C000C000C000C000C000CFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFC0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCC000C000C000C000C000C000C000C000C000C000C000C000C000C000C000C000CFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFC0000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a13_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a13_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y19_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCC000C000C000C000C000C000C000C000C000C000C000C000C000C000C000C000CFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFC0000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCC000C000C000C000C000C000C000C000C000C000C000C000C000C000C000C000CFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFC0000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCC000C000C000C000C000C000C000C000C000C000C000C000C000C000C000C000CFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFC0000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCC0CCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCCFCCC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CC00CCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCCFFCC000C000C000C000C000C000C000C000C000C000C000C000C000C000C000C000CFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFCFFFC0000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|ALT_INV_row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y7_N0
\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a1\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAA22AAAAAAAAAAAAAAAAEA28AAAAAAAA0208AAAAAAAAAAAAAAABEA002AAAAAAA0AA82AAAAAAAAAAAAAAAE8AAAAAAAAAA82A2AAAAAAAAAAAAAAAAE8AAAAAAAAAAA0A0020008080A02828008A202800000A8045208282A88A22AA08A00AAA08088AA8CDBA20A8A80A82A822A80AA80AA82A892CB920A8AAAAAAA822A88AA82AA82A8A0CAD60A880A02AA822AA82A83CA82A0F0C2D60A0200802AA22AA83EA2B7528A9DE30A2222208082200A5A8220AD02AB9EE19E222A2BCAA8ABEA82A9FF8AD7A912FB15AAAAAA98BE802ABFFAAAAA86AB3BBBBFAAAFBF88AA97FEAAABFA2B96ABBBBA97AACDEAADABD0AAAABAAAF41A",
	mem_init2 => X"AABBBEBEEBDABFEAEAAAAAFFAAFF8140AABEFEBFEAEAAAAAFFE2BFFFFFABBEEAAA64FEA92AEB60AAFDA02ABFEA92E14AAAE4EE2482A7B6FFF7CDEBFFFAB48B2AA26E54A7ADAEA80BEAAA32BDF7FCAAA8AA5EB42AA9BEAA07EAAA0AFFF431EAA8AA90BA7AADF2AA8DFAAABEBABF502AAAAAA33E5FAF465B8A1AAAAAAFBAAAAA0AAAA93FD63FC1AABABAAAABABAAAA880AAAABBF9C6FFAAFEBBAAAE3C14A0000AAAAABAB96FFFAEEAAEBFF48D20A20AAAAAAAB23BEFEABAFFAAAA2A8AA2AAAAAAAAAAB8FFEFFABEFFEBAAAA22AAAAAAAAAAAA92EEEFBBFBEFAAC2002AAAAAAAAAAAAA92AEFEAFAAEFF92BAAAAAAAAAAAAAAAA9ABEEAFAEEFDD0546AAAAAAAAAAAA",
	mem_init1 => X"AAAB2BAEBBEAE8321E3BAAAAAAAAAAAAAABF2ABAAFBBF913FEFBEAAAAAAAAAAAAAADAEEE6FAB8629BBFAAAAAAAAAAAAAAAAC2EAFAFB5D4BFFEFAAAAAAAAAAAAAAAAEAEAEBA715BEBBFEAAAAAAAAAAAAAAABE2AFBE9FFBBFEEEAAAAAAAAAAAAAAAAFA2A5AC06DBEAEFAAAAAAAAAAAAAAAAAEA8A8152BEEAABABEAAAAAAAAAAAAABAEA0E9000EEABABAFEAAAAAAAAAAAAAAAEA94BECA3EBEAAABAAAAAAAAAAAAAAAAEA9D3AEA1EAEAEEAAAAAAAAAAAAAAAAEEFB32AF0AAAAAAAAAAAAAAAAAAAAAAAEEFAF97BAA2AAAAAAAAFEAAAAAAAAAAAEEEEBFC4A02AAAFFFFFEEAAAAAAAAAAEEEAEAEED0D7DFFFFFAAAAAAAAAAAAAAAEEEBBEEF8282AAAAAAABAAAAAAAAAAA",
	mem_init0 => X"AABEBBBBBAAA2AAAAAAAEAAAAAAAAAAA92B7E04890A2A80A80AA12AAAAAAA0AA05952E6A0428AA202A0B4A2AAA0A202AA2892E282E20A2A8282FCA0AAA0A800AA2E1EAA82B200AA0282D8A0AAA080282A8A12AA82AE00AA8286C8A0AAA080A02A099AAA828340AA028288A0A80082A82A82A2A282A21F6AFA9228A0AA0082A82A8A2AAA20828BFAAEA2AAA0A8A082A82AA82AAAAAAAAAA2AAAAAAA0AAA082A82AA80A82AAA0028AAAA008A0AAA082A82AAA028AAAAAAA8AA2A2228082A0A0282AA28A8822A20A8A0AA08282A00000A82AA2AAAAAA2AAAA2AAAAAAAAA000A0A82AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brom3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom2:U_VGAROM3|altsyncram:altsyncram_component|altsyncram_err3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	portaaddr => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a1_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a1_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y7_N22
\vga_blue~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_blue~3_combout\ = (\switch[9]~input_o\ & (((\vga_green~0_combout\)))) # (!\switch[9]~input_o\ & ((\vga_green~0_combout\ & ((\U_VGAROM1|altsyncram_component|auto_generated|q_a\(1)))) # (!\vga_green~0_combout\ & 
-- (\U_VGAROM3|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM3|altsyncram_component|auto_generated|q_a\(1),
	datab => \U_VGAROM1|altsyncram_component|auto_generated|q_a\(1),
	datac => \switch[9]~input_o\,
	datad => \vga_green~0_combout\,
	combout => \vga_blue~3_combout\);

-- Location: LCCOMB_X24_Y19_N10
\vga_blue~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_blue~4_combout\ = (\switch[9]~input_o\ & ((\vga_blue~3_combout\ & (\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a13~portadataout\)) # (!\vga_blue~3_combout\ & 
-- ((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a1~portadataout\))))) # (!\switch[9]~input_o\ & (((\vga_blue~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a13~portadataout\,
	datab => \switch[9]~input_o\,
	datac => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a1~portadataout\,
	datad => \vga_blue~3_combout\,
	combout => \vga_blue~4_combout\);

-- Location: LCCOMB_X24_Y19_N24
\vga_blue~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_blue~5_combout\ = (\process_1~16_combout\ & \vga_blue~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_1~16_combout\,
	datad => \vga_blue~4_combout\,
	combout => \vga_blue~5_combout\);

-- Location: M9K_X13_Y23_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a14\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a14_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a14_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y20_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F000F0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF0FFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|ALT_INV_row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y15_N0
\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a2\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAA8AAAAAAAAAAAAAAAABAA82AAAAAAAAA8A0AAAAAAAAAAAAAAAAA8A8AAAAAAAAA2A8AAAAAAAAAAAAAAAAA2A82AAAAAAAA2A8AAAAAAAAAAAAAAAAA2A8AAAAAAAAA003FAAAAAAAAAAAAAAAA000AAAAAAAAAAA9DE820A00020082820AA802822A02AAA3DF8A2A2AA2A882A28AAA82A2AA8AAA25DF8A2A2AA0A802A28A2082A2AA8AA8BDDFCA2A2AA0A802A2882882A2AA8AA8BDDFCA2A20A0288282882883D7CA8AA076D58700088A2AA0828025F5D7D7DEAAFFFFBAAAAAAAAAAAAABFFFFFFFAADAAAFBFFBAAAA2AFEAABFFFFFFFAAAAA8AAAD3FF38AAA2AAF7FFFF7EAAABFFFF8EAA53FE38AAB7FFF7FFFA2AAABFFF5E82",
	mem_init2 => X"AAFBFEBAAAFABFEAEAAAAAFFFFFFABBAAAFEFEBBABEAAAAAFFEABFFFFFABAEAAA0BEFE2FEBEBCAAAAA80AABFEABABAAAA23CDE2BEBAF8AFFFD5FEAAAAAA06422A81EFE8AE3AEBFDFE82A87FD4AAF34A2AAA6B6ABEFBEFFFFE8AA1057FF5AE00AAAAEB8EBFFF95FD7E2AAAEBFF814AAA2AAAFBE4EFF6DA2DF42AAAEAFAEAAAAA2AAAF3EE5FFEEAAAFEAAAABAAFAAAA02AAAAF3EA7FFFAAAAAEAAAAA6B028002AAAAAF0AAFFFEABEAEAAAA978A020AAAAAAAAF0AAFFEEAFFFAEAAAA0A0AAAAAAAAAAAF8EAFFEAFEAAABA082AAAAAAAAAAAAAAFAEBFFEAEFFFFECAA8AAAAAAAAAAAAAAFAABEAABFFAAAC374AAAAAAAAAAAAAAADABBEAAFAFAF7219FAAAAAAAAAAAA",
	mem_init1 => X"AAAF2BBEAEEFFBB2BCEFAAAAAAAAAAAAAAAF2AAABAEFFFB1FEEFAAAAAAAAAAAAAAAF2EAA90FAA622FEAEAAAAAAAAAAAAAAAE2EEA90B56EBBFFEFAAAAAAAAAAAAAABC2EEAABD16FFBEFEAAAAAAAAAAAAAAAFE2ABAAA54FFFEEFEAAAAAAAAAAAAAABFA2A708017BBFFEFEAAAAAAAAAAAAAAFEA2A21AAFAFBFEEEAAAAAAAAAAAAAAAFEA8EB230BABAFEEAAAAAAAAAAAAAAABFEAB6BE3A3AAAFEFAAAAAAAAAAAAAAABFEABDBEBA0AAABAAAAAAAAAAAAAAAAABBEFBD26B082AAAAAAAAAAAAAAAAAAAABBEFAFA778A0AAAAAAAAAAAAAAAAAAAABBEFEBEF0A882AAAAAAABAAAAAAAAAAABBEFEBEFB2AA8AAAAAAABAAAAAAAAAAABBEFFBEEA82A8AAAAAAAAAAAAAAAAAAA",
	mem_init0 => X"BFFFFBAEAAAAAAAAAAAABAAAAAAAAAAAAFFBEBEEAAAAAAAAAAAAEAAAAAAAAAAA82F3D51828A02082802AC28AA802800A82F77F0A282882A0AA2B828AA8020002A01D7E0A2A0882A8AA2E828AAA0A0A02A09DEA0A2A0882A8AA38028AAA0A0A82A82D2A0A2A2882A8AB6A828AAA0A0A82A8282A0A282882A0FE2A828A800A0A82AA2A00082A002057A800028AA00A0A82AAAAAAAAAAAAAAAAAAAAAA8AAA0A0A82AAAA2AA8A2AA8A28A2AAA2882A0A0A82AA8AAA28A20A0A28A28AA28800000A00AA8AAA28A28A0A2A22A2A28800000200AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brom3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom2:U_VGAROM3|altsyncram:altsyncram_component|altsyncram_err3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	portaaddr => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y19_N18
\vga_blue~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_blue~6_combout\ = (\vga_green~0_combout\ & (((\switch[9]~input_o\)))) # (!\vga_green~0_combout\ & ((\switch[9]~input_o\ & (\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a2~portadataout\)) # (!\switch[9]~input_o\ & 
-- ((\U_VGAROM3|altsyncram_component|auto_generated|q_a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a2~portadataout\,
	datab => \vga_green~0_combout\,
	datac => \switch[9]~input_o\,
	datad => \U_VGAROM3|altsyncram_component|auto_generated|q_a\(2),
	combout => \vga_blue~6_combout\);

-- Location: LCCOMB_X24_Y19_N16
\vga_blue~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_blue~7_combout\ = (\vga_green~0_combout\ & ((\vga_blue~6_combout\ & (\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a14~portadataout\)) # (!\vga_blue~6_combout\ & ((\U_VGAROM1|altsyncram_component|auto_generated|q_a\(2)))))) # 
-- (!\vga_green~0_combout\ & (((\vga_blue~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a14~portadataout\,
	datab => \vga_green~0_combout\,
	datac => \vga_blue~6_combout\,
	datad => \U_VGAROM1|altsyncram_component|auto_generated|q_a\(2),
	combout => \vga_blue~7_combout\);

-- Location: LCCOMB_X24_Y19_N6
\vga_blue~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_blue~8_combout\ = (\process_1~16_combout\ & \vga_blue~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_1~16_combout\,
	datad => \vga_blue~7_combout\,
	combout => \vga_blue~8_combout\);

-- Location: M9K_X13_Y16_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a15\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a15_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a15_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y8_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init2 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|ALT_INV_row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y18_N0
\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a3\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEFAAAAAAAAAAAAAAAAAAAAFFAEAAAEAAEFAAAAAAAAAAAAAAAAAFFFFFFEAAAEAAEFAAAAAAAAAAAAABFFFEAAAAFAAAAEABEFAAAAAAAAAAAFFFFFEAAAABFA",
	mem_init2 => X"AAAEABEFAAAFEABFBFFFFFAAAAAAFEEAAAABABEEAABFFFFFAABFEAAAAAFEFBEAAAABABFEAABEBFFFFF7FFFEABFEFEFAAA8AB2BDE0AF87D2AAAAA1FFFFFFFBE8AAAAB83FE82FBEA2AAAAA0802BFFADAAAAA8BE9FEA0EBAA8AAAAAAFA800AFAAAAAAA3EF3EA82EAAA000AAABEAAFEAAA8AAAA8EBBAAA900AA0AAAAABFAFAAAAAAAAAAAEB9AAABAAAAAAAAAAAFFEAAAAAAAAAAACBD0AAAAAAAAAAAAAA94AAAAAAAAAAAADFFAAAAAABFAAAAAA020A8AAAAAAAAAADFFAABAAAAAFAAA80A0AAAAAAAAAAAAA7BFAABAABFFFEAA280AAAAAAAAAAAAAA7BFAAAABFFFFFA002AAAAAAAAAAAAAAA7FFAAAAFFFFFFC82AAAAAAAAAAAAAAAA7EFAAABFAAAADE2AAAAAAAAAAAAA",
	mem_init1 => X"AAA8FEFAAABAAACD43AAAAAAAAAAAAAAAAA8FFFEAAAAAAEC2BAAAAAAAAAAAAAAAAA8FBFEAAAFF9DFFFEBAAAAAAAAAAAAAAA9FBFEAA5FFBEFFFAAAAAAAAAAAAAAAAABFBFFAAFEFAAFAFAAAAAAAAAAAAAAAAABFFEFAAFAEAABBFAAAAAAAAAAAAAAAAAFFF856AFAEAAABEAAAAAAAAAAAAAAAABFFFD46AAAAAAABAAAAAAAAAAAAAAAAABFFBED4AAAAAAABAAAAAAAAAAAAAAAAABFCBEBE8AAAAAAAAAAAAAAAAAAAAAAAABFE2EBEAAAAAAAAAAAAAAAAAAAAAAAAABAEADBEAAAAAAAAAAAAAAAAAAAAAAAAABAFAF8EA2AAAAAAAAAAAAAAAAAAAAAAABABEBAFAAAAAAAAAAAAAAAAAAAAAAAAABABEBAEAAA2AAAAAAAAAAAAAAAAAAAAABAAEBBEAAA2AAAAAAAAAAAAAAAAAAA",
	mem_init0 => X"AAAAAEFAAAAAAAAAAAAAAAAAAAAAAAAAAAAEBEBAAAAAAAAAAAAAAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brom3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom2:U_VGAROM3|altsyncram:altsyncram_component|altsyncram_err3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 3,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	portaaddr => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a3_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a3_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N12
\vga_blue~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_blue~9_combout\ = (\vga_green~0_combout\ & (((\switch[9]~input_o\) # (\U_VGAROM1|altsyncram_component|auto_generated|q_a\(3))))) # (!\vga_green~0_combout\ & (\U_VGAROM3|altsyncram_component|auto_generated|q_a\(3) & (!\switch[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_green~0_combout\,
	datab => \U_VGAROM3|altsyncram_component|auto_generated|q_a\(3),
	datac => \switch[9]~input_o\,
	datad => \U_VGAROM1|altsyncram_component|auto_generated|q_a\(3),
	combout => \vga_blue~9_combout\);

-- Location: LCCOMB_X24_Y13_N22
\vga_blue~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_blue~10_combout\ = (\switch[9]~input_o\ & ((\vga_blue~9_combout\ & (\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a15~portadataout\)) # (!\vga_blue~9_combout\ & 
-- ((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a3~portadataout\))))) # (!\switch[9]~input_o\ & (((\vga_blue~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a15~portadataout\,
	datab => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a3~portadataout\,
	datac => \switch[9]~input_o\,
	datad => \vga_blue~9_combout\,
	combout => \vga_blue~10_combout\);

-- Location: LCCOMB_X24_Y13_N4
\vga_blue~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_blue~11_combout\ = (\vga_blue~10_combout\ & \process_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_blue~10_combout\,
	datac => \process_1~16_combout\,
	combout => \vga_blue~11_combout\);

-- Location: M9K_X25_Y13_N0
\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAABFFFFFFFFFFFFAAAAAAAAAAAAA082AAABFFFFFFFFFFFFAEA2AAAAAAAAA2A08AABFFFFFFFFFFFFEA280AAAAAAAA0AA0AAFFFFFFFFFFFFFEE2AA2AAAAAAA88A2FAFFFFFFFFFFFFFFB2AAAAAAAAAA880150D55555FF7DD755480A02002000A00167D555775DD5D555AA8280002AA2AA8C0EA7FFD7DAFD57DBCA0AA280AA0AAA9E1FB3FFDFFDFDD7DEDA8A2288AAA2A2B81EB2BF5D7CDD57DFDCAA029BEEA2A0ECCE07D5FD7DDD57FFC02AD2FFABC2815DFE5995F57F95D777D76BD761BDD2AB96A5571D5F5B8FFD6AAF5AFC7AF7B6AA97AEDBFFDDEFDEEABF6ABFAFFFFFF3AA9FEADAFFC7BBC4FEA54BFFFEAE5EEEABBEEB53FF557BDEBBA5FFFFFEAFB8D6",
	mem_init2 => X"AA7EEBFFEF6F6ABBBFDFFFAFABBAF142AAABBFFEEEBFFFFFFFF7EBFFFAFFFEAAAAA1FBFE2FB77DFEA8223FFFFFD6A08AA2B7A7D1C2F747AAB621BFEAEBE4AE22A02F9DF7F9FCBC8FBD6AE218B2AD72A8AA5FF3FAFCFABFE2A7FF55274961C0A8AAC1FBCAB2962EDC8DFEEBFBA2452A22AAAF6B4BA8B9DD5F0DFEEFFAEBAAAA02AAADCE823FB5A21AEFFEFFFEEAAA8A0AAAAEEBE2AFEEAFEAEFFAF015820A00AAAAAEFFC3BEAAFFEAEBAA5DC78228AAAAAAAA76EABFEBABEEEEE03DF228AAAAAAAAAA5EFAFBFEEEABAE82802AAAAAAAAAAAACDFEAAABFEAEAE94002AAAAAAAAAAAAAAFFFAFAABAEFBD88EAAAAAAAAAAAAAAAC7EBEAEAFAFAA0547AAAAAAAAAAAA",
	mem_init1 => X"AABEFEEABABFEB77597AAAAAAAAAAAAAAABA7FAEAFFAEDB6AAFAAAAAAAAAAAAAAAAEFFBEC27BB275EBFFEAAAAAAAAAAAAAB97FEF6FED81EBAEAEFFBAAAAAAAAAAAEBFEAFAB346BEBAFBAFFEEAAAAAAAAABB97FA448B02EFAFEAABBFAEEAAAAAAAEAF7FDB6A5C2EFFEEEABAAFFFAAAAAABAFFDFE412EFFFBABFAAAFAABBAAAAAABBFF7BC123EEABBABAEAAAEFFEAAAAAABBFFC5FEBB6EAEEFFBAAAFFFFEAAAAAABFFFC07FA28EAFFBFBABEEEFFAAAAAAABFFAF2EFA326AAEAAAAFBAFAEAAAAAAABAFAFAC3FBC7AEEFEEBAAAEEAAAAAAAAFABFBAA913017BBABEABAEAAAAAAAAAAEFBFFFAF85839AAAFAEBFEAAAAAAAAAABFBAAEFEF77FFFFFFFFBBAAAAAAAAAAA",
	mem_init0 => X"AAAEAFBFEB7A2AAFEFEEAAAAAAAAAAAABCA399A4AF97A8F757EFF88AAAAA80AA2FC67BBEA161C71F7E3BA22AAA0A8082801DFE0A88BCFDE75F3A22AAA802000AA0AFAA088C1C77F5FB7102AAAA2A0208A875EA088BCA3FED7E38A2AAAA200208A81CAA0A885977F5FF3222AA88200A88A02EA8AA0AACE2B4692022AAA8200A88A82A22280A00CFC3A0AA0A2A82200A88AA80000002A0288AA00002AAAA200A88AA88AA28A8AA228A2AA808A82A220288AA00282AA0AA8A80A222082808080202AAA22A88802002A802082828000A0A82A88AA82A882AA2088880088A000A0282AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brom3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom2:U_VGAROM3|altsyncram:altsyncram_component|altsyncram_err3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	portaaddr => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y5_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a16\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00",
	mem_init2 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00",
	mem_init1 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00",
	mem_init0 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a16_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a16_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y7_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a4\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00",
	mem_init2 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00",
	mem_init1 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00",
	mem_init0 => X"FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|ALT_INV_row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a4_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a4_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N6
\vga_green~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~1_combout\ = (\vga_green~0_combout\ & (((\switch[9]~input_o\)))) # (!\vga_green~0_combout\ & ((\switch[9]~input_o\ & (\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a4~portadataout\)) # (!\switch[9]~input_o\ & 
-- ((\U_VGAROM3|altsyncram_component|auto_generated|q_a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_green~0_combout\,
	datab => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a4~portadataout\,
	datac => \switch[9]~input_o\,
	datad => \U_VGAROM3|altsyncram_component|auto_generated|q_a\(4),
	combout => \vga_green~1_combout\);

-- Location: LCCOMB_X24_Y13_N16
\vga_green~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~2_combout\ = (\vga_green~0_combout\ & ((\vga_green~1_combout\ & ((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a16~portadataout\))) # (!\vga_green~1_combout\ & (\U_VGAROM1|altsyncram_component|auto_generated|q_a\(4))))) # 
-- (!\vga_green~0_combout\ & (((\vga_green~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_green~0_combout\,
	datab => \U_VGAROM1|altsyncram_component|auto_generated|q_a\(4),
	datac => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a16~portadataout\,
	datad => \vga_green~1_combout\,
	combout => \vga_green~2_combout\);

-- Location: LCCOMB_X24_Y13_N14
\vga_green~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~3_combout\ = (\process_1~16_combout\ & \vga_green~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_1~16_combout\,
	datad => \vga_green~2_combout\,
	combout => \vga_green~3_combout\);

-- Location: M9K_X13_Y13_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a5\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000",
	mem_init2 => X"FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000",
	mem_init1 => X"FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000",
	mem_init0 => X"FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|ALT_INV_row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y11_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a17\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000",
	mem_init2 => X"FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000",
	mem_init1 => X"FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000",
	mem_init0 => X"FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a17_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a17_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y14_N0
\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a5\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAABEAAAAAAAAAAAAA80AAAAAAAAAAAAAAAFEA02AAAAAAAAA8082AAAAAAAAAAAAAAAA8882AAAAAAA2AA8AAAAAAAAAAAAAAABA2A8AAAAAAAA82A0AAAAAAAAAAAAAAAAAAA82AAAAAAAA0A7560008082A0A008058A200802000A808BE0008280E022A80D0802A82AA28AA11C6CA2A2A8DA082A23A88A2AA2A82A801D6DA2A2AADA882A22880A2A2AA8AA87D56DE2AA0080002A2282882A7DA8AA02D1ECE2A00208A0A822A289BD7C94A824AA4DE20280A8A82A012E7D7F4DA5EAB0FB4DA22282E02A0961FD7F487FFCFA88FAF59AAA2BBF36BDF7FAAFFFFFFDAAA06EBF2AAB7FAB3FEAABFFFFFEFFFC6AB07EB51AAD0BBF8FAD57FFFEFFF2DD8",
	mem_init2 => X"ABC7EBD2FB95FFF3FFF5FFFABFAF7410AAEFABFABBFFFFFFFFFFFEAAAFFFFEEAA02FAB79FBFFD7FEAA82BFFFFFFEBE6AA23BCBFAFEFECEAABD7FAFEAABE11022A81B63DEE2FBEB5EA82A07F81ABE60A2AAE3E57FFFEFFF4AF8AA1542B34FF00AAAABED6BF9ED5ED3E2ABAFEEE840AAA2AAB7FF4AEF9033DF02ABBFFFEEAAAAA2AAAFFAE1AE9BAAABEAABEEFEBAAAA22AAAAF7EC02ABAAEEEEAAFBE2BC28A02AAAAAF5EEBABBAFBFFBFAA829A8202AAAAAAAF5EEAAAAAAABFABAAA0A0AAAAAAAAAAAFDEEAAFAABEABEA082AAAAAAAAAAAAAAB7FFAAAABBEBAB8AA8AAAAAAAAAAAAAAD7FEAEAAAAFFF9F20AAAAAAAAAAAAAAADFFAEAAEEAA95749AAAAAAAAAAAAA",
	mem_init1 => X"AAAFFFFEAEAFACF7FDAEAAAAAAAAAAAAAABB7FEAFAEEFF15FEFEEAAAAAAAAAAAAAB97FBE50FFD777BBFEAAAAAAAAAAAAAAAB7FBED4BD6FFBFFBBBFEAAAAAAAAAAAB97EFAAED15AEFBFEAAFAFAAAAAAAAAAEF7FBEEA55AEAFEEEAEBFBFEAAAAAAABBF7FE5EB46EEFBEBAAAFFBEAAAAAAAAEBF7F55BBAEBBBAFFAAABFBEEAAAAAAABBFFFE702EEEFBBFAEAAAFFBEAAAAAABFBFF3FB0A2EAAEEFBAAAEFEFEAAAAAABBBFF9EFBA8AAAFEAAAAAFBFEAAAAAAABBBFF9F7A2C3FFBFEFEFFEBEEAAAAAAABBBAFAE22DB4AAAAABEFFBEAAAAAAAAABBBBFEEB0E9D7BBABEAEAEAAAAAAAAAAFFBFBFEFA6FF8AAAAAFEAAAAAAAAAAAAFBBBBEBFFA280AAAAAAFBAAAAAAAAAAA",
	mem_init0 => X"BFBBBFFFBBFFFFFFEAABEAAAAAAAAAAA1791B51C04E02DAFD41A02AAA802A02A00DEF12228A577D7776B88AAAA0A200A80D65B88285957B5FF4F822AA8028002822C2B8A2B9857F5FE5DA22AA8000802AA94EA8A2B2457F1FB06022AA8082A02A8246A882ABD57E1FE58822A8A082A02AA0A0A282A2C40B6AE02822AA8082A02AA2020A8AA822614F80228AAA2082A02AA82AAAAAA8AAA2AAAAAAA2AA8082A02AAAA28AA22A28A28A0A0A228880A2A02AA8AA82822008AA8A02820AA2A0A0A00AA88AA00A2000A88200800AA00000282AAAAAA80228A0822222AA2A800000A00AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brom3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom2:U_VGAROM3|altsyncram:altsyncram_component|altsyncram_err3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 5,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	portaaddr => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a5_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a5_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N20
\vga_green~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~4_combout\ = (\switch[9]~input_o\ & (((\vga_green~0_combout\)))) # (!\switch[9]~input_o\ & ((\vga_green~0_combout\ & (\U_VGAROM1|altsyncram_component|auto_generated|q_a\(5))) # (!\vga_green~0_combout\ & 
-- ((\U_VGAROM3|altsyncram_component|auto_generated|q_a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \U_VGAROM1|altsyncram_component|auto_generated|q_a\(5),
	datac => \U_VGAROM3|altsyncram_component|auto_generated|q_a\(5),
	datad => \vga_green~0_combout\,
	combout => \vga_green~4_combout\);

-- Location: LCCOMB_X24_Y13_N26
\vga_green~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~5_combout\ = (\switch[9]~input_o\ & ((\vga_green~4_combout\ & ((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a17~portadataout\))) # (!\vga_green~4_combout\ & 
-- (\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a5~portadataout\)))) # (!\switch[9]~input_o\ & (((\vga_green~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a5~portadataout\,
	datab => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a17~portadataout\,
	datac => \switch[9]~input_o\,
	datad => \vga_green~4_combout\,
	combout => \vga_green~5_combout\);

-- Location: LCCOMB_X24_Y13_N8
\vga_green~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~6_combout\ = (\vga_green~5_combout\ & \process_1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_green~5_combout\,
	datac => \process_1~16_combout\,
	combout => \vga_green~6_combout\);

-- Location: M9K_X25_Y5_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000",
	mem_init2 => X"FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000",
	mem_init1 => X"FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000",
	mem_init0 => X"FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|ALT_INV_row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y9_N0
\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a6\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAFAAAAAAAAAAAAAA02AAAAAAAAAAAAAAABAA80AAAAAAAA00AAAAAAAAAAAAAAAAABE8222AAAAAAA8AAA2AAAAAAAAAAAAAAAE0A8AAAAAAAAAAA8AAAAAAAAAAAAAAAAE8A8AAAAAAAAAAA9FAAAAAAA0A82AAAAAAAAAAAA8AAAAAA706A28AA0290AAA8AAA2A2A88800AAAA7AEA28A8AA4AA028A2AA0A288AAA2A83DBEA28A8AA8A8828A2AA2A28AAAA2AAB7BEA28A8AA8A8028A282A028AAAA2AAE7B6B28A888AA28A8A2A2A0FDFD6B2A269BC2FA8A080A0AA2A2297FF7FD876AAABBEAEAAAAABEAAAABFFFFFEAA8AA2AB23AEA6AAA2AFC8BFF5FFAAAAAAAAA6AB02EAAFAAA2AFD5FE82AAAAAAAF7EB6AA02EA2CAAB2BBFAFAAA2AAAAFFF222A",
	mem_init2 => X"AAEAEAAEAAAAAAAEAAAAAAAABFAA8AFAAAEAAAAEEBAAAAAAAAAAAAAAAAAAAFAAAAEAAAAFEBAAAAABFF7DEAAAAAABFBAAA8F82A0F4AA8382ABFDF0ABFFEBEEF8AAAFA82ABC6AABF7EAAAA1D52AFEF9EAAAA9AA8ABE4AAFFCAAAAABAA801EAEAAAAAB2AA3BF82BFEF010AABAAFEFAEAA8AAAACAABBEA014AF5BAAAAEAABEAAAAAAAAAE2B9BAAAEAABBFAAAAAABFAAAA8AAAAAE8B90AABAABABFAAAEB812AA0AAAAAAAE8BBBAAAABAAEEAFFF56028AAAAAAAAAE8BBAAAEBAAAAEAA80A0AAAAAAAAAAAAE2BBAAAAEABFEAAA280AAAAAAAAAAAAAE2ABAABBAFFFFEA002AAAAAAAAAAAAAAE2ABBAAEFFAAAE186AAAAAAAAAAAAAAAE2AFEAFFAAFAA8A7BAAAAAAAAAAAA",
	mem_init1 => X"AAAC2ABEBFAFAB8802FEAAAAAAAAAAAAAAA8AABABFFEAFE82BEEAAAAAAAAAAAAAAA8AAEABFFAA88AFEAEAAAAAAAAAAAAAAA8AAEBBB17FAAFFFAFAAAAAAAAAAAAAABAABEEBBFBEAABEFEABBAFEAAAAAAAAAEAAAEBABFEEEAAEFEAAFFAAAAAAAAAABAAAA0000BEAAFBFFEAAFFFEAAAAAAAAEAAAA806AEABBBBEEEABEAFEBAAAAAABBAA8AA858AAAABAEFAAAABFABAAAAAABFAA8ABAF8AABEEEFAAAABFEAEAAAAAABFAAA2AEFA3EAEBEEAAAABAABAAAAAAABFAAAA0EEDFFFFFFFFFAFFAAAAAAAAAABFAAAAB8EF3EAAAAAAAAAFBAAAAAAAAABFABAABBEEEAAEEFEBFAAAAAAAAAAAAABBAFABBFEBFF2AAAFFAABAAAAAAAAAAABFABAAAEA8AA2AAAAAAAFAAAAAAAAAAA",
	mem_init0 => X"BFABABAEBEAAAAAABFEAAAAAAAAAAAAAAFAFABAEAFEAAA0AAAAAFAAAAAAAAAAAAFE871FA93622208A28A6A8AAAAAAA8A8AF4FB88A8F28AA228ABE28AA8A2AAA2AA662A88AA92A2AA28AFA28AAAAAA22AAA9E6A88AA22A2AA28FE228AAAAAAAAAA21E2A88A8B2A2AA29AAA28AA0AAAAAAAAAAAAA8AAA29FE3F9AAA28AA2AAAAAAA82A20A088823602E8822A8A82AAAAAAAAAAAAAAAAAAAAAAAAAAAA8AAAAAAAAAAA802A28A2080828A20A8288AAA8AAAAAA802A28A20A88A822A2A28AAAAAA228AA0AA828228A08A222AAA28AAAAAA2AAAA2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brom3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom2:U_VGAROM3|altsyncram:altsyncram_component|altsyncram_err3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	portaaddr => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a6_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a6_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N2
\vga_green~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~7_combout\ = (\vga_green~0_combout\ & (((\switch[9]~input_o\)))) # (!\vga_green~0_combout\ & ((\switch[9]~input_o\ & (\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a6~portadataout\)) # (!\switch[9]~input_o\ & 
-- ((\U_VGAROM3|altsyncram_component|auto_generated|q_a\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_green~0_combout\,
	datab => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a6~portadataout\,
	datac => \switch[9]~input_o\,
	datad => \U_VGAROM3|altsyncram_component|auto_generated|q_a\(6),
	combout => \vga_green~7_combout\);

-- Location: M9K_X13_Y8_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a18\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000",
	mem_init2 => X"FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000",
	mem_init1 => X"FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000",
	mem_init0 => X"FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF00000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a18_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a18_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N0
\vga_green~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~8_combout\ = (\vga_green~0_combout\ & ((\vga_green~7_combout\ & (\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a18~portadataout\)) # (!\vga_green~7_combout\ & ((\U_VGAROM1|altsyncram_component|auto_generated|q_a\(6)))))) # 
-- (!\vga_green~0_combout\ & (\vga_green~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_green~0_combout\,
	datab => \vga_green~7_combout\,
	datac => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a18~portadataout\,
	datad => \U_VGAROM1|altsyncram_component|auto_generated|q_a\(6),
	combout => \vga_green~8_combout\);

-- Location: LCCOMB_X24_Y13_N18
\vga_green~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~9_combout\ = (\process_1~16_combout\ & \vga_green~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_1~16_combout\,
	datad => \vga_green~8_combout\,
	combout => \vga_green~9_combout\);

-- Location: M9K_X13_Y14_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a19\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000",
	mem_init2 => X"FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000",
	mem_init0 => X"FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a19_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a19_PORTADATAOUT_bus\);

-- Location: M9K_X13_Y12_N0
\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a7\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000",
	mem_init2 => X"FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000",
	mem_init1 => X"FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000",
	mem_init0 => X"FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFF0000000000000000",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../brom128.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom1:U_VGAROM2|altsyncram:altsyncram_component|altsyncram_m4s3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 13,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 8191,
	port_a_logical_ram_depth => 16384,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 13,
	port_b_data_width => 1,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	ena0 => \U_BRC1|ALT_INV_row_count[6]~5_combout\,
	portaaddr => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: M9K_X25_Y12_N0
\U_VGAROM3|altsyncram_component|auto_generated|ram_block1a7\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init3 => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA0AAAAAAAAAAAAAAAAAAA8AAAAAAAAA2A8AAAAAAAAAAAAAAAAAAAA2AAAAAAAA2AAAAAAAAAAAAAAAAAAA2AAAAAAAAAAA002AAAAAAAAAAAAAAAAA000AAAAAAAAAAA8DA8A2A0A82A082A20AA882A22A82AAAADB8A2A2AA3A8AAA28AAA8AA2AA8AAAA2CBCA2A2AA2AA2AA28A288AA2AA8AA8A8CBDA2A2AA2AAAAA28AA8AAA2AA8AA8B8CBDE2A22A028A2A288A8A2A2AA8AA8B6C3D6020AAA2AA0828828A082A78AAAFEEBFFAAAAAAAAAAAAAAAAABFFFFDEAAFEFBFFAAAAAAAAAAAAAAFFFFFFFFDEAAFFBF7DAAAAAAAAABFF7FFFFFFAABDAAAFFBFFFAAAFEEA7AFFFFFFFFAAADFD2",
	mem_init2 => X"AABFBFFFAAFFFFFFFFFFFFFFEAFFFFEAAABFFFFFAAFFFFFFFFFFFFFFFFFFFBEAAABFFFFEAAFFFFFFFFFFFFFFFFFFEFAAAAAFFFFEABFFFFFFEAAAFFFFFFFFBEAAAAAFFFFEABFFEAABEAAAAAAFFFFAFAAAAAAFFFFEABFFAABFEAAAAFFFFEBFAAAAAAAFFFFEAFFEABAFEAAAAFFABFFAAAAAAAABFFFEBFFEAAAAEAAAABFFFAAAAAAAAAABFFFEFFFAAAAEAAAAABFFEAAAAAAAAAABFFFFFFEAAAAAAAAAAAFEAAAAAAAAAAABFFFEFFEAAFFAAAAAAAAAAAAAAAAAAAABFFFFFFAAFFFFAAAAAAAAAAAAAAAAAAABFFFFFFABFFFFFAAAAAAAAAAAAAAAAAABFFFFFEAFFFFFFEAAAAAAAAAAAAAAAAABFFFEAABFFFFFFEFAAAAAAAAAAAAAAAABFFFAAABFFAFFFFAEAAAAAAAAAAAA",
	mem_init1 => X"AAABFFFAAAFAFAFFFFABAAAAAAAAAAAAAAAFFFFEAAABFAFFFFABAAAAAAAAAAAAAAAFFFFEAAAFFFFFFFEBAAAAAAAAAAAAAAAFFFFEAAFFFFFFFFEAAAAAAAAAAAAAAAAFFFFFAAFEFFFFAFAAAAFAAAAAAAAAAABFFFFFAAFAFBFFBFAAAAAFFAAAAAAAAAFFFFFFEAFBFBAEBEAAAAAABEAAAAAAABFFFFFFEABAEAEEBAAAAAAABEAAAAAAAEFFFFFFEABABAEEBAAAAAAAFEAAAAAAAAFFFFEFEABAAABAAAAAAAABFAAAAAAAAAFFFFFBEAAAAAAAAAAAAAFFEAAAAAAAAAFFFFFBFAAAAAAAAAAAAAFFAAAAAAAAAAFFFFFFFAEBFFFFFFFFFEAAAAAAAAAAAAFEFFFEFBFFFFFFFFFFFAAAAAAAAAAAAAFAFEFAFAAAFFFFAAAAAAAAAAAAAAAAAAFEFFFBEAAAAAAAAAAAAAAAAAAAAAAA",
	mem_init0 => X"AAFEFEFAAAAAAAAAAABFFAAAAAAAAAAAAAFEFEFABABFFFFFFFFFEAAAAAAAAAAA82B78E082CBDFDF7DD7FC2AAA802802AA2AB2E2A2F2DF7FDFF7F8AAAAA0A000AA099FE2A2B6DDFFDFF7E8AAAAA0A0A82A0A9AA2A2ADDDFFDFF788AAAAA0A0A82A8A9AA2A2A2DDFFDFF6A8AAAAA0A0A82A8282A0A2829F7FDFE2A8AAA800A0A82AAAA8A0A2A28A9FFAA2882AAA80A0A82AAAAAAAAAAAAAAAAAAAAAAAAAA0A0A82AAAAAAAAAAAAAAAAAAAAAAAA2A0A0A82AAAAAAAAAAAA2A2AAA8AAAA800000A82AAAAAAAAAAAAAA2AAAA2AAA800000A00AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "brom3.mif",
	init_file_layout => "port_a",
	logical_ram_name => "vga_rom2:U_VGAROM3|altsyncram:altsyncram_component|altsyncram_err3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 7,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 12,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 12,
	port_b_data_width => 2,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \U_PCLK|toggle~clkctrl_outclk\,
	portaaddr => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a7_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U_VGAROM3|altsyncram_component|auto_generated|ram_block1a7_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y13_N28
\vga_green~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~10_combout\ = (\vga_green~0_combout\ & ((\U_VGAROM1|altsyncram_component|auto_generated|q_a\(7)) # ((\switch[9]~input_o\)))) # (!\vga_green~0_combout\ & (((!\switch[9]~input_o\ & \U_VGAROM3|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_green~0_combout\,
	datab => \U_VGAROM1|altsyncram_component|auto_generated|q_a\(7),
	datac => \switch[9]~input_o\,
	datad => \U_VGAROM3|altsyncram_component|auto_generated|q_a\(7),
	combout => \vga_green~10_combout\);

-- Location: LCCOMB_X24_Y13_N10
\vga_green~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~11_combout\ = (\switch[9]~input_o\ & ((\vga_green~10_combout\ & (\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a19~portadataout\)) # (!\vga_green~10_combout\ & 
-- ((\U_VGAROM2|altsyncram_component|auto_generated|ram_block1a7~portadataout\))))) # (!\switch[9]~input_o\ & (((\vga_green~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a19~portadataout\,
	datab => \U_VGAROM2|altsyncram_component|auto_generated|ram_block1a7~portadataout\,
	datac => \switch[9]~input_o\,
	datad => \vga_green~10_combout\,
	combout => \vga_green~11_combout\);

-- Location: LCCOMB_X24_Y13_N24
\vga_green~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \vga_green~12_combout\ = (\process_1~16_combout\ & \vga_green~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \process_1~16_combout\,
	datad => \vga_green~11_combout\,
	combout => \vga_green~12_combout\);

-- Location: IOIBUF_X0_Y27_N1
\switch[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: IOIBUF_X0_Y25_N22
\switch[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\switch[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\switch[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

ww_vga_red(0) <= \vga_red[0]~output_o\;

ww_vga_red(1) <= \vga_red[1]~output_o\;

ww_vga_red(2) <= \vga_red[2]~output_o\;

ww_vga_red(3) <= \vga_red[3]~output_o\;

ww_vga_blue(0) <= \vga_blue[0]~output_o\;

ww_vga_blue(1) <= \vga_blue[1]~output_o\;

ww_vga_blue(2) <= \vga_blue[2]~output_o\;

ww_vga_blue(3) <= \vga_blue[3]~output_o\;

ww_vga_green(0) <= \vga_green[0]~output_o\;

ww_vga_green(1) <= \vga_green[1]~output_o\;

ww_vga_green(2) <= \vga_green[2]~output_o\;

ww_vga_green(3) <= \vga_green[3]~output_o\;

ww_vga_v <= \vga_v~output_o\;

ww_vga_h <= \vga_h~output_o\;
END structure;


