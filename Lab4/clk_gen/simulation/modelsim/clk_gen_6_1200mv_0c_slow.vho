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

-- DATE "02/14/2016 00:42:31"

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

ENTITY 	clk_gen IS
    PORT (
	clk50MHz : IN std_logic;
	rst : IN std_logic;
	button_n : IN std_logic;
	clk_out : OUT std_logic
	);
END clk_gen;

-- Design Ports Information
-- clk_out	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button_n	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clk_gen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_button_n : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_CD|clk_hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_out~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_CD|Add0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_CD|Add0~1\ : std_logic;
SIGNAL \U_CD|Add0~2_combout\ : std_logic;
SIGNAL \U_CD|Add0~3\ : std_logic;
SIGNAL \U_CD|Add0~4_combout\ : std_logic;
SIGNAL \U_CD|Add0~5\ : std_logic;
SIGNAL \U_CD|Add0~7\ : std_logic;
SIGNAL \U_CD|Add0~8_combout\ : std_logic;
SIGNAL \U_CD|Add0~9\ : std_logic;
SIGNAL \U_CD|Add0~10_combout\ : std_logic;
SIGNAL \U_CD|count~4_combout\ : std_logic;
SIGNAL \U_CD|Add0~11\ : std_logic;
SIGNAL \U_CD|Add0~12_combout\ : std_logic;
SIGNAL \U_CD|Add0~13\ : std_logic;
SIGNAL \U_CD|Add0~14_combout\ : std_logic;
SIGNAL \U_CD|count~3_combout\ : std_logic;
SIGNAL \U_CD|Add0~15\ : std_logic;
SIGNAL \U_CD|Add0~17\ : std_logic;
SIGNAL \U_CD|Add0~18_combout\ : std_logic;
SIGNAL \U_CD|Add0~19\ : std_logic;
SIGNAL \U_CD|Add0~20_combout\ : std_logic;
SIGNAL \U_CD|Add0~21\ : std_logic;
SIGNAL \U_CD|Add0~22_combout\ : std_logic;
SIGNAL \U_CD|Add0~23\ : std_logic;
SIGNAL \U_CD|Add0~24_combout\ : std_logic;
SIGNAL \U_CD|Add0~25\ : std_logic;
SIGNAL \U_CD|Add0~26_combout\ : std_logic;
SIGNAL \U_CD|count~1_combout\ : std_logic;
SIGNAL \U_CD|Add0~27\ : std_logic;
SIGNAL \U_CD|Add0~28_combout\ : std_logic;
SIGNAL \U_CD|count~0_combout\ : std_logic;
SIGNAL \U_CD|Equal0~0_combout\ : std_logic;
SIGNAL \U_CD|Add0~6_combout\ : std_logic;
SIGNAL \U_CD|count~5_combout\ : std_logic;
SIGNAL \U_CD|Equal0~2_combout\ : std_logic;
SIGNAL \U_CD|Equal0~3_combout\ : std_logic;
SIGNAL \U_CD|Add0~16_combout\ : std_logic;
SIGNAL \U_CD|count~2_combout\ : std_logic;
SIGNAL \U_CD|Equal0~1_combout\ : std_logic;
SIGNAL \U_CD|clk_hz~0_combout\ : std_logic;
SIGNAL \U_CD|clk_hz~feeder_combout\ : std_logic;
SIGNAL \U_CD|clk_hz~q\ : std_logic;
SIGNAL \U_CD|clk_hz~clkctrl_outclk\ : std_logic;
SIGNAL \count[0]~10_combout\ : std_logic;
SIGNAL \button_n~input_o\ : std_logic;
SIGNAL \button_n~_wirecell_combout\ : std_logic;
SIGNAL \count[1]~14\ : std_logic;
SIGNAL \count[2]~15_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \count[2]~16\ : std_logic;
SIGNAL \count[3]~17_combout\ : std_logic;
SIGNAL \count[3]~18\ : std_logic;
SIGNAL \count[4]~19_combout\ : std_logic;
SIGNAL \count[4]~20\ : std_logic;
SIGNAL \count[5]~21_combout\ : std_logic;
SIGNAL \count[5]~22\ : std_logic;
SIGNAL \count[6]~23_combout\ : std_logic;
SIGNAL \count[6]~24\ : std_logic;
SIGNAL \count[7]~25_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \count[7]~26\ : std_logic;
SIGNAL \count[8]~27_combout\ : std_logic;
SIGNAL \count[8]~28\ : std_logic;
SIGNAL \count[9]~29_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \count[9]~12_combout\ : std_logic;
SIGNAL \count[0]~11\ : std_logic;
SIGNAL \count[1]~13_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \temp_out~0_combout\ : std_logic;
SIGNAL \temp_out~q\ : std_logic;
SIGNAL count : std_logic_vector(9 DOWNTO 0);
SIGNAL \U_CD|count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_rst <= rst;
ww_button_n <= button_n;
clk_out <= ww_clk_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);

\U_CD|clk_hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CD|clk_hz~q\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;

-- Location: IOOBUF_X26_Y29_N9
\clk_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \temp_out~q\,
	devoe => ww_devoe,
	o => \clk_out~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk50MHz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: CLKCTRL_G4
\clk50MHz~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50MHz~inputclkctrl_outclk\);

-- Location: LCCOMB_X38_Y14_N2
\U_CD|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~0_combout\ = \U_CD|count\(0) $ (VCC)
-- \U_CD|Add0~1\ = CARRY(\U_CD|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CD|count\(0),
	datad => VCC,
	combout => \U_CD|Add0~0_combout\,
	cout => \U_CD|Add0~1\);

-- Location: IOIBUF_X0_Y14_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X38_Y14_N3
\U_CD|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|Add0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(0));

-- Location: LCCOMB_X38_Y14_N4
\U_CD|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~2_combout\ = (\U_CD|count\(1) & (!\U_CD|Add0~1\)) # (!\U_CD|count\(1) & ((\U_CD|Add0~1\) # (GND)))
-- \U_CD|Add0~3\ = CARRY((!\U_CD|Add0~1\) # (!\U_CD|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CD|count\(1),
	datad => VCC,
	cin => \U_CD|Add0~1\,
	combout => \U_CD|Add0~2_combout\,
	cout => \U_CD|Add0~3\);

-- Location: FF_X38_Y14_N5
\U_CD|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(1));

-- Location: LCCOMB_X38_Y14_N6
\U_CD|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~4_combout\ = (\U_CD|count\(2) & (\U_CD|Add0~3\ $ (GND))) # (!\U_CD|count\(2) & (!\U_CD|Add0~3\ & VCC))
-- \U_CD|Add0~5\ = CARRY((\U_CD|count\(2) & !\U_CD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|count\(2),
	datad => VCC,
	cin => \U_CD|Add0~3\,
	combout => \U_CD|Add0~4_combout\,
	cout => \U_CD|Add0~5\);

-- Location: FF_X38_Y14_N7
\U_CD|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|Add0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(2));

-- Location: LCCOMB_X38_Y14_N8
\U_CD|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~6_combout\ = (\U_CD|count\(3) & (!\U_CD|Add0~5\)) # (!\U_CD|count\(3) & ((\U_CD|Add0~5\) # (GND)))
-- \U_CD|Add0~7\ = CARRY((!\U_CD|Add0~5\) # (!\U_CD|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CD|count\(3),
	datad => VCC,
	cin => \U_CD|Add0~5\,
	combout => \U_CD|Add0~6_combout\,
	cout => \U_CD|Add0~7\);

-- Location: LCCOMB_X38_Y14_N10
\U_CD|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~8_combout\ = (\U_CD|count\(4) & (\U_CD|Add0~7\ $ (GND))) # (!\U_CD|count\(4) & (!\U_CD|Add0~7\ & VCC))
-- \U_CD|Add0~9\ = CARRY((\U_CD|count\(4) & !\U_CD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|count\(4),
	datad => VCC,
	cin => \U_CD|Add0~7\,
	combout => \U_CD|Add0~8_combout\,
	cout => \U_CD|Add0~9\);

-- Location: FF_X38_Y14_N11
\U_CD|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|Add0~8_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(4));

-- Location: LCCOMB_X38_Y14_N12
\U_CD|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~10_combout\ = (\U_CD|count\(5) & (!\U_CD|Add0~9\)) # (!\U_CD|count\(5) & ((\U_CD|Add0~9\) # (GND)))
-- \U_CD|Add0~11\ = CARRY((!\U_CD|Add0~9\) # (!\U_CD|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|count\(5),
	datad => VCC,
	cin => \U_CD|Add0~9\,
	combout => \U_CD|Add0~10_combout\,
	cout => \U_CD|Add0~11\);

-- Location: LCCOMB_X39_Y14_N30
\U_CD|count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|count~4_combout\ = (\U_CD|Add0~10_combout\ & (((!\U_CD|Equal0~0_combout\) # (!\U_CD|Equal0~3_combout\)) # (!\U_CD|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|Equal0~1_combout\,
	datab => \U_CD|Equal0~3_combout\,
	datac => \U_CD|Equal0~0_combout\,
	datad => \U_CD|Add0~10_combout\,
	combout => \U_CD|count~4_combout\);

-- Location: FF_X39_Y14_N31
\U_CD|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|count~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(5));

-- Location: LCCOMB_X38_Y14_N14
\U_CD|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~12_combout\ = (\U_CD|count\(6) & (\U_CD|Add0~11\ $ (GND))) # (!\U_CD|count\(6) & (!\U_CD|Add0~11\ & VCC))
-- \U_CD|Add0~13\ = CARRY((\U_CD|count\(6) & !\U_CD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CD|count\(6),
	datad => VCC,
	cin => \U_CD|Add0~11\,
	combout => \U_CD|Add0~12_combout\,
	cout => \U_CD|Add0~13\);

-- Location: FF_X38_Y14_N15
\U_CD|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|Add0~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(6));

-- Location: LCCOMB_X38_Y14_N16
\U_CD|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~14_combout\ = (\U_CD|count\(7) & (!\U_CD|Add0~13\)) # (!\U_CD|count\(7) & ((\U_CD|Add0~13\) # (GND)))
-- \U_CD|Add0~15\ = CARRY((!\U_CD|Add0~13\) # (!\U_CD|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CD|count\(7),
	datad => VCC,
	cin => \U_CD|Add0~13\,
	combout => \U_CD|Add0~14_combout\,
	cout => \U_CD|Add0~15\);

-- Location: LCCOMB_X39_Y14_N8
\U_CD|count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|count~3_combout\ = (\U_CD|Add0~14_combout\ & (((!\U_CD|Equal0~3_combout\) # (!\U_CD|Equal0~1_combout\)) # (!\U_CD|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|Equal0~0_combout\,
	datab => \U_CD|Equal0~1_combout\,
	datac => \U_CD|Add0~14_combout\,
	datad => \U_CD|Equal0~3_combout\,
	combout => \U_CD|count~3_combout\);

-- Location: FF_X39_Y14_N9
\U_CD|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|count~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(7));

-- Location: LCCOMB_X38_Y14_N18
\U_CD|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~16_combout\ = (\U_CD|count\(8) & (\U_CD|Add0~15\ $ (GND))) # (!\U_CD|count\(8) & (!\U_CD|Add0~15\ & VCC))
-- \U_CD|Add0~17\ = CARRY((\U_CD|count\(8) & !\U_CD|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|count\(8),
	datad => VCC,
	cin => \U_CD|Add0~15\,
	combout => \U_CD|Add0~16_combout\,
	cout => \U_CD|Add0~17\);

-- Location: LCCOMB_X38_Y14_N20
\U_CD|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~18_combout\ = (\U_CD|count\(9) & (!\U_CD|Add0~17\)) # (!\U_CD|count\(9) & ((\U_CD|Add0~17\) # (GND)))
-- \U_CD|Add0~19\ = CARRY((!\U_CD|Add0~17\) # (!\U_CD|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CD|count\(9),
	datad => VCC,
	cin => \U_CD|Add0~17\,
	combout => \U_CD|Add0~18_combout\,
	cout => \U_CD|Add0~19\);

-- Location: FF_X38_Y14_N21
\U_CD|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|Add0~18_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(9));

-- Location: LCCOMB_X38_Y14_N22
\U_CD|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~20_combout\ = (\U_CD|count\(10) & (\U_CD|Add0~19\ $ (GND))) # (!\U_CD|count\(10) & (!\U_CD|Add0~19\ & VCC))
-- \U_CD|Add0~21\ = CARRY((\U_CD|count\(10) & !\U_CD|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|count\(10),
	datad => VCC,
	cin => \U_CD|Add0~19\,
	combout => \U_CD|Add0~20_combout\,
	cout => \U_CD|Add0~21\);

-- Location: FF_X38_Y14_N23
\U_CD|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|Add0~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(10));

-- Location: LCCOMB_X38_Y14_N24
\U_CD|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~22_combout\ = (\U_CD|count\(11) & (!\U_CD|Add0~21\)) # (!\U_CD|count\(11) & ((\U_CD|Add0~21\) # (GND)))
-- \U_CD|Add0~23\ = CARRY((!\U_CD|Add0~21\) # (!\U_CD|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CD|count\(11),
	datad => VCC,
	cin => \U_CD|Add0~21\,
	combout => \U_CD|Add0~22_combout\,
	cout => \U_CD|Add0~23\);

-- Location: FF_X38_Y14_N25
\U_CD|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|Add0~22_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(11));

-- Location: LCCOMB_X38_Y14_N26
\U_CD|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~24_combout\ = (\U_CD|count\(12) & (\U_CD|Add0~23\ $ (GND))) # (!\U_CD|count\(12) & (!\U_CD|Add0~23\ & VCC))
-- \U_CD|Add0~25\ = CARRY((\U_CD|count\(12) & !\U_CD|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|count\(12),
	datad => VCC,
	cin => \U_CD|Add0~23\,
	combout => \U_CD|Add0~24_combout\,
	cout => \U_CD|Add0~25\);

-- Location: FF_X38_Y14_N27
\U_CD|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|Add0~24_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(12));

-- Location: LCCOMB_X38_Y14_N28
\U_CD|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~26_combout\ = (\U_CD|count\(13) & (!\U_CD|Add0~25\)) # (!\U_CD|count\(13) & ((\U_CD|Add0~25\) # (GND)))
-- \U_CD|Add0~27\ = CARRY((!\U_CD|Add0~25\) # (!\U_CD|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CD|count\(13),
	datad => VCC,
	cin => \U_CD|Add0~25\,
	combout => \U_CD|Add0~26_combout\,
	cout => \U_CD|Add0~27\);

-- Location: LCCOMB_X38_Y14_N0
\U_CD|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|count~1_combout\ = (\U_CD|Add0~26_combout\ & (((!\U_CD|Equal0~3_combout\) # (!\U_CD|Equal0~1_combout\)) # (!\U_CD|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|Equal0~0_combout\,
	datab => \U_CD|Equal0~1_combout\,
	datac => \U_CD|Equal0~3_combout\,
	datad => \U_CD|Add0~26_combout\,
	combout => \U_CD|count~1_combout\);

-- Location: FF_X38_Y14_N1
\U_CD|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|count~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(13));

-- Location: LCCOMB_X38_Y14_N30
\U_CD|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Add0~28_combout\ = \U_CD|Add0~27\ $ (!\U_CD|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_CD|count\(14),
	cin => \U_CD|Add0~27\,
	combout => \U_CD|Add0~28_combout\);

-- Location: LCCOMB_X39_Y14_N28
\U_CD|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|count~0_combout\ = (\U_CD|Add0~28_combout\ & (((!\U_CD|Equal0~0_combout\) # (!\U_CD|Equal0~1_combout\)) # (!\U_CD|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|Equal0~3_combout\,
	datab => \U_CD|Equal0~1_combout\,
	datac => \U_CD|Equal0~0_combout\,
	datad => \U_CD|Add0~28_combout\,
	combout => \U_CD|count~0_combout\);

-- Location: FF_X39_Y14_N29
\U_CD|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|count~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(14));

-- Location: LCCOMB_X39_Y14_N22
\U_CD|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Equal0~0_combout\ = (\U_CD|count\(13) & (\U_CD|count\(14) & (!\U_CD|count\(12) & \U_CD|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|count\(13),
	datab => \U_CD|count\(14),
	datac => \U_CD|count\(12),
	datad => \U_CD|count\(0),
	combout => \U_CD|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y14_N10
\U_CD|count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|count~5_combout\ = (\U_CD|Add0~6_combout\ & (((!\U_CD|Equal0~0_combout\) # (!\U_CD|Equal0~3_combout\)) # (!\U_CD|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|Equal0~1_combout\,
	datab => \U_CD|Equal0~3_combout\,
	datac => \U_CD|Equal0~0_combout\,
	datad => \U_CD|Add0~6_combout\,
	combout => \U_CD|count~5_combout\);

-- Location: FF_X39_Y14_N11
\U_CD|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|count~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(3));

-- Location: LCCOMB_X39_Y14_N24
\U_CD|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Equal0~2_combout\ = (!\U_CD|count\(4) & (\U_CD|count\(7) & (\U_CD|count\(5) & !\U_CD|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|count\(4),
	datab => \U_CD|count\(7),
	datac => \U_CD|count\(5),
	datad => \U_CD|count\(6),
	combout => \U_CD|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y14_N12
\U_CD|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Equal0~3_combout\ = (!\U_CD|count\(3) & (\U_CD|count\(2) & (\U_CD|count\(1) & \U_CD|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|count\(3),
	datab => \U_CD|count\(2),
	datac => \U_CD|count\(1),
	datad => \U_CD|Equal0~2_combout\,
	combout => \U_CD|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y14_N20
\U_CD|count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|count~2_combout\ = (\U_CD|Add0~16_combout\ & (((!\U_CD|Equal0~0_combout\) # (!\U_CD|Equal0~3_combout\)) # (!\U_CD|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|Equal0~1_combout\,
	datab => \U_CD|Equal0~3_combout\,
	datac => \U_CD|Equal0~0_combout\,
	datad => \U_CD|Add0~16_combout\,
	combout => \U_CD|count~2_combout\);

-- Location: FF_X39_Y14_N21
\U_CD|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|count~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|count\(8));

-- Location: LCCOMB_X39_Y14_N26
\U_CD|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|Equal0~1_combout\ = (\U_CD|count\(8) & (!\U_CD|count\(10) & (!\U_CD|count\(9) & !\U_CD|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|count\(8),
	datab => \U_CD|count\(10),
	datac => \U_CD|count\(9),
	datad => \U_CD|count\(11),
	combout => \U_CD|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y14_N14
\U_CD|clk_hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|clk_hz~0_combout\ = \U_CD|clk_hz~q\ $ (((\U_CD|Equal0~1_combout\ & (\U_CD|Equal0~0_combout\ & \U_CD|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CD|Equal0~1_combout\,
	datab => \U_CD|clk_hz~q\,
	datac => \U_CD|Equal0~0_combout\,
	datad => \U_CD|Equal0~3_combout\,
	combout => \U_CD|clk_hz~0_combout\);

-- Location: LCCOMB_X40_Y14_N22
\U_CD|clk_hz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CD|clk_hz~feeder_combout\ = \U_CD|clk_hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CD|clk_hz~0_combout\,
	combout => \U_CD|clk_hz~feeder_combout\);

-- Location: FF_X40_Y14_N23
\U_CD|clk_hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CD|clk_hz~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CD|clk_hz~q\);

-- Location: CLKCTRL_G8
\U_CD|clk_hz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_CD|clk_hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_CD|clk_hz~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y28_N8
\count[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[0]~10_combout\ = count(0) $ (VCC)
-- \count[0]~11\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \count[0]~10_combout\,
	cout => \count[0]~11\);

-- Location: IOIBUF_X26_Y29_N15
\button_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button_n,
	o => \button_n~input_o\);

-- Location: LCCOMB_X27_Y28_N2
\button_n~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button_n~_wirecell_combout\ = !\button_n~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button_n~input_o\,
	combout => \button_n~_wirecell_combout\);

-- Location: LCCOMB_X27_Y28_N10
\count[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~13_combout\ = (count(1) & (!\count[0]~11\)) # (!count(1) & ((\count[0]~11\) # (GND)))
-- \count[1]~14\ = CARRY((!\count[0]~11\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \count[0]~11\,
	combout => \count[1]~13_combout\,
	cout => \count[1]~14\);

-- Location: LCCOMB_X27_Y28_N12
\count[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~15_combout\ = (count(2) & (\count[1]~14\ $ (GND))) # (!count(2) & (!\count[1]~14\ & VCC))
-- \count[2]~16\ = CARRY((count(2) & !\count[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \count[1]~14\,
	combout => \count[2]~15_combout\,
	cout => \count[2]~16\);

-- Location: LCCOMB_X26_Y28_N16
\~GND\ : cycloneiii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X27_Y28_N13
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CD|clk_hz~clkctrl_outclk\,
	d => \count[2]~15_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \count[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X27_Y28_N14
\count[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~17_combout\ = (count(3) & (!\count[2]~16\)) # (!count(3) & ((\count[2]~16\) # (GND)))
-- \count[3]~18\ = CARRY((!\count[2]~16\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \count[2]~16\,
	combout => \count[3]~17_combout\,
	cout => \count[3]~18\);

-- Location: FF_X27_Y28_N15
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CD|clk_hz~clkctrl_outclk\,
	d => \count[3]~17_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \count[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

-- Location: LCCOMB_X27_Y28_N16
\count[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[4]~19_combout\ = (count(4) & (\count[3]~18\ $ (GND))) # (!count(4) & (!\count[3]~18\ & VCC))
-- \count[4]~20\ = CARRY((count(4) & !\count[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \count[3]~18\,
	combout => \count[4]~19_combout\,
	cout => \count[4]~20\);

-- Location: FF_X27_Y28_N17
\count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CD|clk_hz~clkctrl_outclk\,
	d => \count[4]~19_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \count[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(4));

-- Location: LCCOMB_X27_Y28_N18
\count[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[5]~21_combout\ = (count(5) & (!\count[4]~20\)) # (!count(5) & ((\count[4]~20\) # (GND)))
-- \count[5]~22\ = CARRY((!\count[4]~20\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \count[4]~20\,
	combout => \count[5]~21_combout\,
	cout => \count[5]~22\);

-- Location: FF_X27_Y28_N19
\count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CD|clk_hz~clkctrl_outclk\,
	d => \count[5]~21_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \count[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(5));

-- Location: LCCOMB_X27_Y28_N20
\count[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[6]~23_combout\ = (count(6) & (\count[5]~22\ $ (GND))) # (!count(6) & (!\count[5]~22\ & VCC))
-- \count[6]~24\ = CARRY((count(6) & !\count[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \count[5]~22\,
	combout => \count[6]~23_combout\,
	cout => \count[6]~24\);

-- Location: FF_X27_Y28_N21
\count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CD|clk_hz~clkctrl_outclk\,
	d => \count[6]~23_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \count[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(6));

-- Location: LCCOMB_X27_Y28_N22
\count[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[7]~25_combout\ = (count(7) & (!\count[6]~24\)) # (!count(7) & ((\count[6]~24\) # (GND)))
-- \count[7]~26\ = CARRY((!\count[6]~24\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datad => VCC,
	cin => \count[6]~24\,
	combout => \count[7]~25_combout\,
	cout => \count[7]~26\);

-- Location: FF_X27_Y28_N23
\count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CD|clk_hz~clkctrl_outclk\,
	d => \count[7]~25_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \count[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(7));

-- Location: LCCOMB_X27_Y28_N4
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ((count(4)) # ((!count(6)) # (!count(5)))) # (!count(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(7),
	datab => count(4),
	datac => count(5),
	datad => count(6),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X27_Y28_N24
\count[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[8]~27_combout\ = (count(8) & (\count[7]~26\ $ (GND))) # (!count(8) & (!\count[7]~26\ & VCC))
-- \count[8]~28\ = CARRY((count(8) & !\count[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \count[7]~26\,
	combout => \count[8]~27_combout\,
	cout => \count[8]~28\);

-- Location: FF_X27_Y28_N25
\count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CD|clk_hz~clkctrl_outclk\,
	d => \count[8]~27_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \count[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(8));

-- Location: LCCOMB_X27_Y28_N26
\count[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~29_combout\ = \count[8]~28\ $ (count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(9),
	cin => \count[8]~28\,
	combout => \count[9]~29_combout\);

-- Location: FF_X27_Y28_N27
\count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CD|clk_hz~clkctrl_outclk\,
	d => \count[9]~29_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \count[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(9));

-- Location: LCCOMB_X27_Y28_N6
\Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!count(8)) # (!count(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => count(9),
	datad => count(8),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X27_Y28_N28
\count[9]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[9]~12_combout\ = (\button_n~input_o\) # ((!\Equal0~1_combout\ & (!\Equal0~0_combout\ & !\Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button_n~input_o\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~2_combout\,
	combout => \count[9]~12_combout\);

-- Location: FF_X27_Y28_N9
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CD|clk_hz~clkctrl_outclk\,
	d => \count[0]~10_combout\,
	asdata => \button_n~_wirecell_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \count[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: FF_X27_Y28_N11
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CD|clk_hz~clkctrl_outclk\,
	d => \count[1]~13_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \count[9]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X27_Y28_N30
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (count(1)) # ((count(0)) # ((count(2)) # (!count(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datab => count(0),
	datac => count(3),
	datad => count(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X27_Y28_N0
\temp_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \temp_out~0_combout\ = (!\Equal0~0_combout\ & (!\Equal0~2_combout\ & (!\button_n~input_o\ & !\Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \button_n~input_o\,
	datad => \Equal0~1_combout\,
	combout => \temp_out~0_combout\);

-- Location: FF_X27_Y28_N1
temp_out : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CD|clk_hz~clkctrl_outclk\,
	d => \temp_out~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temp_out~q\);

ww_clk_out <= \clk_out~output_o\;
END structure;


