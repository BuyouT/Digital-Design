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

-- DATE "02/18/2016 01:52:37"

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

ENTITY 	counter IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	up_n : IN std_logic;
	load_n : IN std_logic;
	input : IN std_logic_vector(3 DOWNTO 0);
	output : OUT std_logic_vector(3 DOWNTO 0)
	);
END counter;

-- Design Ports Information
-- output[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- load_n	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- up_n	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_up_n : std_logic;
SIGNAL ww_load_n : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \load_n~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \up_n~input_o\ : std_logic;
SIGNAL \count[1]~5_cout\ : std_logic;
SIGNAL \count[1]~6_combout\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \count[1]~7\ : std_logic;
SIGNAL \count[2]~8_combout\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \count[2]~9\ : std_logic;
SIGNAL \count[3]~10_combout\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL count : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_load_n~input_o\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_up_n <= up_n;
ww_load_n <= load_n;
ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_load_n~input_o\ <= NOT \load_n~input_o\;

-- Location: IOOBUF_X0_Y2_N16
\output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => count(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y2_N1
\load_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_load_n,
	o => \load_n~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\input[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: LCCOMB_X1_Y2_N12
\count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (\load_n~input_o\ & (!count(0))) # (!\load_n~input_o\ & ((\input[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \load_n~input_o\,
	datac => count(0),
	datad => \input[0]~input_o\,
	combout => \count~3_combout\);

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

-- Location: FF_X1_Y2_N13
\count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(0));

-- Location: IOIBUF_X1_Y0_N29
\up_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_up_n,
	o => \up_n~input_o\);

-- Location: LCCOMB_X1_Y2_N16
\count[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~5_cout\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(0),
	datad => VCC,
	cout => \count[1]~5_cout\);

-- Location: LCCOMB_X1_Y2_N18
\count[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[1]~6_combout\ = (\up_n~input_o\ & ((count(1) & (\count[1]~5_cout\ & VCC)) # (!count(1) & (!\count[1]~5_cout\)))) # (!\up_n~input_o\ & ((count(1) & (!\count[1]~5_cout\)) # (!count(1) & ((\count[1]~5_cout\) # (GND)))))
-- \count[1]~7\ = CARRY((\up_n~input_o\ & (!count(1) & !\count[1]~5_cout\)) # (!\up_n~input_o\ & ((!\count[1]~5_cout\) # (!count(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \up_n~input_o\,
	datab => count(1),
	datad => VCC,
	cin => \count[1]~5_cout\,
	combout => \count[1]~6_combout\,
	cout => \count[1]~7\);

-- Location: IOIBUF_X1_Y0_N8
\input[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: FF_X1_Y2_N19
\count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[1]~6_combout\,
	asdata => \input[1]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ALT_INV_load_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(1));

-- Location: LCCOMB_X1_Y2_N20
\count[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[2]~8_combout\ = ((\up_n~input_o\ $ (count(2) $ (!\count[1]~7\)))) # (GND)
-- \count[2]~9\ = CARRY((\up_n~input_o\ & ((count(2)) # (!\count[1]~7\))) # (!\up_n~input_o\ & (count(2) & !\count[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \up_n~input_o\,
	datab => count(2),
	datad => VCC,
	cin => \count[1]~7\,
	combout => \count[2]~8_combout\,
	cout => \count[2]~9\);

-- Location: IOIBUF_X0_Y3_N1
\input[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: FF_X1_Y2_N21
\count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[2]~8_combout\,
	asdata => \input[2]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ALT_INV_load_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(2));

-- Location: LCCOMB_X1_Y2_N22
\count[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \count[3]~10_combout\ = \up_n~input_o\ $ (\count[2]~9\ $ (count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \up_n~input_o\,
	datad => count(3),
	cin => \count[2]~9\,
	combout => \count[3]~10_combout\);

-- Location: IOIBUF_X1_Y0_N15
\input[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: FF_X1_Y2_N23
\count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \count[3]~10_combout\,
	asdata => \input[3]~input_o\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => \ALT_INV_load_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => count(3));

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;
END structure;


