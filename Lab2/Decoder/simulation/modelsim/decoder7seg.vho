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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "01/26/2016 19:23:39"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	decoder7seg IS
    PORT (
	input : IN std_logic_vector(3 DOWNTO 0);
	output : OUT std_logic_vector(6 DOWNTO 0)
	);
END decoder7seg;

-- Design Ports Information
-- output[0]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[1]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[2]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input[3]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoder7seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(6 DOWNTO 0);
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \input[3]~input_o\ : std_logic;
SIGNAL \input[0]~input_o\ : std_logic;
SIGNAL \input[1]~input_o\ : std_logic;
SIGNAL \input[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_input <= input;
output <= ww_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X0_Y10_N9
\output[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\output[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\output[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X41_Y10_N9
\output[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\output[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\output[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\output[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\input[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(3),
	o => \input[3]~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\input[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(0),
	o => \input[0]~input_o\);

-- Location: IOIBUF_X0_Y21_N22
\input[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(1),
	o => \input[1]~input_o\);

-- Location: IOIBUF_X41_Y17_N8
\input[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input(2),
	o => \input[2]~input_o\);

-- Location: LCCOMB_X1_Y13_N8
\Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\input[0]~input_o\ & ((\input[3]~input_o\) # (\input[1]~input_o\ $ (\input[2]~input_o\)))) # (!\input[0]~input_o\ & ((\input[1]~input_o\) # (\input[3]~input_o\ $ (\input[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X1_Y13_N18
\Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\input[0]~input_o\ & (\input[3]~input_o\ $ (((\input[1]~input_o\) # (!\input[2]~input_o\))))) # (!\input[0]~input_o\ & (!\input[3]~input_o\ & (\input[1]~input_o\ & !\input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[2]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X1_Y13_N20
\Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\input[1]~input_o\ & (!\input[3]~input_o\ & (\input[0]~input_o\))) # (!\input[1]~input_o\ & ((\input[2]~input_o\ & (!\input[3]~input_o\)) # (!\input[2]~input_o\ & ((\input[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[2]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X1_Y13_N6
\Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\input[0]~input_o\ & ((\input[1]~input_o\ $ (!\input[2]~input_o\)))) # (!\input[0]~input_o\ & ((\input[3]~input_o\ & (\input[1]~input_o\ & !\input[2]~input_o\)) # (!\input[3]~input_o\ & (!\input[1]~input_o\ & \input[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X1_Y13_N16
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\input[3]~input_o\ & (\input[2]~input_o\ & ((\input[1]~input_o\) # (!\input[0]~input_o\)))) # (!\input[3]~input_o\ & (!\input[0]~input_o\ & (\input[1]~input_o\ & !\input[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[2]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y13_N10
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\input[3]~input_o\ & ((\input[0]~input_o\ & (\input[1]~input_o\)) # (!\input[0]~input_o\ & ((\input[2]~input_o\))))) # (!\input[3]~input_o\ & (\input[2]~input_o\ & (\input[0]~input_o\ $ (\input[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X1_Y13_N12
\Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\input[3]~input_o\ & (\input[0]~input_o\ & (\input[1]~input_o\ $ (\input[2]~input_o\)))) # (!\input[3]~input_o\ & (!\input[1]~input_o\ & (\input[0]~input_o\ $ (\input[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input[3]~input_o\,
	datab => \input[0]~input_o\,
	datac => \input[1]~input_o\,
	datad => \input[2]~input_o\,
	combout => \Mux0~0_combout\);

ww_output(0) <= \output[0]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(6) <= \output[6]~output_o\;
END structure;


