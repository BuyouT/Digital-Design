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

-- DATE "02/17/2016 19:21:40"

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

ENTITY 	gray2 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	output : OUT std_logic_vector(3 DOWNTO 0)
	);
END gray2;

-- Design Ports Information
-- output[0]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF gray2 IS
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
SIGNAL ww_output : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.STATE0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.STATE0~q\ : std_logic;
SIGNAL \state.STATE1~0_combout\ : std_logic;
SIGNAL \state.STATE1~q\ : std_logic;
SIGNAL \state.STATE3~q\ : std_logic;
SIGNAL \state.STATE2~feeder_combout\ : std_logic;
SIGNAL \state.STATE2~q\ : std_logic;
SIGNAL \state.STATE6~feeder_combout\ : std_logic;
SIGNAL \state.STATE6~q\ : std_logic;
SIGNAL \state.STATE7~q\ : std_logic;
SIGNAL \state.STATE5~feeder_combout\ : std_logic;
SIGNAL \state.STATE5~q\ : std_logic;
SIGNAL \state.STATE4~feeder_combout\ : std_logic;
SIGNAL \state.STATE4~q\ : std_logic;
SIGNAL \state.STATEC~q\ : std_logic;
SIGNAL \state.STATED~q\ : std_logic;
SIGNAL \state.STATEF~feeder_combout\ : std_logic;
SIGNAL \state.STATEF~q\ : std_logic;
SIGNAL \state.STATEE~q\ : std_logic;
SIGNAL \state.STATEA~feeder_combout\ : std_logic;
SIGNAL \state.STATEA~q\ : std_logic;
SIGNAL \state.STATEB~q\ : std_logic;
SIGNAL \state.STATE9~feeder_combout\ : std_logic;
SIGNAL \state.STATE9~q\ : std_logic;
SIGNAL \state.STATE8~feeder_combout\ : std_logic;
SIGNAL \state.STATE8~q\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_WideOr0~combout\ <= NOT \WideOr0~combout\;
\ALT_INV_WideOr1~combout\ <= NOT \WideOr1~combout\;
\ALT_INV_WideOr2~combout\ <= NOT \WideOr2~combout\;
\ALT_INV_WideOr3~combout\ <= NOT \WideOr3~combout\;

-- Location: IOOBUF_X0_Y11_N16
\output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr3~combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr0~combout\,
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

-- Location: LCCOMB_X2_Y11_N0
\state.STATE0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATE0~0_combout\ = !\state.STATE8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.STATE8~q\,
	combout => \state.STATE0~0_combout\);

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

-- Location: FF_X2_Y11_N1
\state.STATE0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATE0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE0~q\);

-- Location: LCCOMB_X2_Y11_N14
\state.STATE1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATE1~0_combout\ = !\state.STATE0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.STATE0~q\,
	combout => \state.STATE1~0_combout\);

-- Location: FF_X2_Y11_N15
\state.STATE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATE1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE1~q\);

-- Location: FF_X2_Y11_N29
\state.STATE3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.STATE1~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE3~q\);

-- Location: LCCOMB_X2_Y11_N24
\state.STATE2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATE2~feeder_combout\ = \state.STATE3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.STATE3~q\,
	combout => \state.STATE2~feeder_combout\);

-- Location: FF_X2_Y11_N25
\state.STATE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATE2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE2~q\);

-- Location: LCCOMB_X2_Y11_N26
\state.STATE6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATE6~feeder_combout\ = \state.STATE2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.STATE2~q\,
	combout => \state.STATE6~feeder_combout\);

-- Location: FF_X2_Y11_N27
\state.STATE6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATE6~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE6~q\);

-- Location: FF_X2_Y11_N19
\state.STATE7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.STATE6~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE7~q\);

-- Location: LCCOMB_X2_Y11_N6
\state.STATE5~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATE5~feeder_combout\ = \state.STATE7~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.STATE7~q\,
	combout => \state.STATE5~feeder_combout\);

-- Location: FF_X2_Y11_N7
\state.STATE5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATE5~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE5~q\);

-- Location: LCCOMB_X2_Y11_N4
\state.STATE4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATE4~feeder_combout\ = \state.STATE5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.STATE5~q\,
	combout => \state.STATE4~feeder_combout\);

-- Location: FF_X2_Y11_N5
\state.STATE4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATE4~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE4~q\);

-- Location: FF_X2_Y11_N31
\state.STATEC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.STATE4~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATEC~q\);

-- Location: FF_X2_Y11_N13
\state.STATED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.STATEC~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATED~q\);

-- Location: LCCOMB_X2_Y11_N8
\state.STATEF~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATEF~feeder_combout\ = \state.STATED~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.STATED~q\,
	combout => \state.STATEF~feeder_combout\);

-- Location: FF_X2_Y11_N9
\state.STATEF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATEF~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATEF~q\);

-- Location: FF_X2_Y11_N17
\state.STATEE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.STATEF~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATEE~q\);

-- Location: LCCOMB_X2_Y11_N22
\state.STATEA~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATEA~feeder_combout\ = \state.STATEE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.STATEE~q\,
	combout => \state.STATEA~feeder_combout\);

-- Location: FF_X2_Y11_N23
\state.STATEA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATEA~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATEA~q\);

-- Location: FF_X2_Y11_N21
\state.STATEB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.STATEA~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATEB~q\);

-- Location: LCCOMB_X2_Y11_N10
\state.STATE9~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATE9~feeder_combout\ = \state.STATEB~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.STATEB~q\,
	combout => \state.STATE9~feeder_combout\);

-- Location: FF_X2_Y11_N11
\state.STATE9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATE9~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE9~q\);

-- Location: LCCOMB_X2_Y11_N2
\state.STATE8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \state.STATE8~feeder_combout\ = \state.STATE9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.STATE9~q\,
	combout => \state.STATE8~feeder_combout\);

-- Location: FF_X2_Y11_N3
\state.STATE8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.STATE8~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.STATE8~q\);

-- Location: LCCOMB_X2_Y11_N30
\WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!\state.STATE8~q\ & (!\state.STATE4~q\ & (!\state.STATEC~q\ & \state.STATE0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE8~q\,
	datab => \state.STATE4~q\,
	datac => \state.STATEC~q\,
	datad => \state.STATE0~q\,
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X2_Y11_N16
\WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\state.STATE6~q\) # ((\state.STATEA~q\) # ((\state.STATEE~q\) # (\state.STATE2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE6~q\,
	datab => \state.STATEA~q\,
	datac => \state.STATEE~q\,
	datad => \state.STATE2~q\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X1_Y11_N16
WideOr3 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\WideOr3~0_combout\) # (!\WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideOr2~0_combout\,
	datad => \WideOr3~0_combout\,
	combout => \WideOr3~combout\);

-- Location: LCCOMB_X2_Y11_N12
\WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (\state.STATE5~q\) # ((\state.STATE1~q\) # ((\state.STATED~q\) # (\state.STATE9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE5~q\,
	datab => \state.STATE1~q\,
	datac => \state.STATED~q\,
	datad => \state.STATE9~q\,
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X1_Y11_N14
WideOr2 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\WideOr2~1_combout\) # (!\WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~0_combout\,
	datac => \WideOr2~1_combout\,
	combout => \WideOr2~combout\);

-- Location: LCCOMB_X2_Y11_N28
\WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\state.STATE1~q\ & (!\state.STATE2~q\ & (!\state.STATE3~q\ & \state.STATE0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE1~q\,
	datab => \state.STATE2~q\,
	datac => \state.STATE3~q\,
	datad => \state.STATE0~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X2_Y11_N20
\WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (\state.STATEA~q\) # ((\state.STATE8~q\) # ((\state.STATEB~q\) # (\state.STATE9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATEA~q\,
	datab => \state.STATE8~q\,
	datac => \state.STATEB~q\,
	datad => \state.STATE9~q\,
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X1_Y11_N4
WideOr1 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr1~combout\ = (\WideOr1~0_combout\) # (!\WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr0~0_combout\,
	datac => \WideOr1~0_combout\,
	combout => \WideOr1~combout\);

-- Location: LCCOMB_X2_Y11_N18
\WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\state.STATE6~q\) # ((\state.STATE4~q\) # ((\state.STATE7~q\) # (\state.STATE5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.STATE6~q\,
	datab => \state.STATE4~q\,
	datac => \state.STATE7~q\,
	datad => \state.STATE5~q\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X1_Y11_N10
WideOr0 : cycloneiii_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\WideOr0~1_combout\) # (!\WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr0~1_combout\,
	datad => \WideOr0~0_combout\,
	combout => \WideOr0~combout\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;
END structure;


