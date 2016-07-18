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

-- DATE "01/21/2016 13:50:23"

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

ENTITY 	Counter IS
    PORT (
	output0 : OUT std_logic;
	data1 : IN std_logic;
	data2 : IN std_logic;
	data3 : IN std_logic;
	data5 : IN std_logic;
	data6 : IN std_logic;
	data7 : IN std_logic;
	enable : IN std_logic;
	data4 : IN std_logic;
	clr_n : IN std_logic;
	clk : IN std_logic;
	ld_n : IN std_logic;
	data0 : IN std_logic;
	output1 : OUT std_logic;
	output2 : OUT std_logic;
	output3 : OUT std_logic;
	output4 : OUT std_logic;
	output5 : OUT std_logic;
	output6 : OUT std_logic;
	output7 : OUT std_logic;
	rco : OUT std_logic;
	clk_o : OUT std_logic
	);
END Counter;

-- Design Ports Information
-- output0	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output3	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output4	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output5	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output6	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output7	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rco	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_o	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_n	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_n	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data3	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data4	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data5	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data6	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data7	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_output0 : std_logic;
SIGNAL ww_data1 : std_logic;
SIGNAL ww_data2 : std_logic;
SIGNAL ww_data3 : std_logic;
SIGNAL ww_data5 : std_logic;
SIGNAL ww_data6 : std_logic;
SIGNAL ww_data7 : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_data4 : std_logic;
SIGNAL ww_clr_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ld_n : std_logic;
SIGNAL ww_data0 : std_logic;
SIGNAL ww_output1 : std_logic;
SIGNAL ww_output2 : std_logic;
SIGNAL ww_output3 : std_logic;
SIGNAL ww_output4 : std_logic;
SIGNAL ww_output5 : std_logic;
SIGNAL ww_output6 : std_logic;
SIGNAL ww_output7 : std_logic;
SIGNAL ww_rco : std_logic;
SIGNAL ww_clk_o : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output0~output_o\ : std_logic;
SIGNAL \output1~output_o\ : std_logic;
SIGNAL \output2~output_o\ : std_logic;
SIGNAL \output3~output_o\ : std_logic;
SIGNAL \output4~output_o\ : std_logic;
SIGNAL \output5~output_o\ : std_logic;
SIGNAL \output6~output_o\ : std_logic;
SIGNAL \output7~output_o\ : std_logic;
SIGNAL \rco~output_o\ : std_logic;
SIGNAL \clk_o~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ld_n~input_o\ : std_logic;
SIGNAL \clr_n~input_o\ : std_logic;
SIGNAL \data0~input_o\ : std_logic;
SIGNAL \data1~input_o\ : std_logic;
SIGNAL \inst1|sub|126~0_combout\ : std_logic;
SIGNAL \data4~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \data5~input_o\ : std_logic;
SIGNAL \data7~input_o\ : std_logic;
SIGNAL \inst|sub|68~0_combout\ : std_logic;
SIGNAL \inst|sub|68~1_combout\ : std_logic;
SIGNAL \inst|sub|34~q\ : std_logic;
SIGNAL \data6~input_o\ : std_logic;
SIGNAL \inst|sub|109~combout\ : std_logic;
SIGNAL \inst|sub|115~0_combout\ : std_logic;
SIGNAL \inst|sub|111~q\ : std_logic;
SIGNAL \inst|sub|120~combout\ : std_logic;
SIGNAL \inst|sub|126~0_combout\ : std_logic;
SIGNAL \inst|sub|122~q\ : std_logic;
SIGNAL \inst|sub|130~0_combout\ : std_logic;
SIGNAL \inst|sub|137~0_combout\ : std_logic;
SIGNAL \inst|sub|137~1_combout\ : std_logic;
SIGNAL \inst|sub|134~q\ : std_logic;
SIGNAL \data3~input_o\ : std_logic;
SIGNAL \inst1|sub|72~combout\ : std_logic;
SIGNAL \inst1|sub|68~0_combout\ : std_logic;
SIGNAL \inst1|sub|34~q\ : std_logic;
SIGNAL \inst1|sub|109~combout\ : std_logic;
SIGNAL \data2~input_o\ : std_logic;
SIGNAL \inst1|sub|115~0_combout\ : std_logic;
SIGNAL \inst1|sub|111~q\ : std_logic;
SIGNAL \inst1|sub|119~0_combout\ : std_logic;
SIGNAL \inst1|sub|126~1_combout\ : std_logic;
SIGNAL \inst1|sub|122~q\ : std_logic;
SIGNAL \inst1|sub|131~combout\ : std_logic;
SIGNAL \inst1|sub|137~0_combout\ : std_logic;
SIGNAL \inst1|sub|134~q\ : std_logic;
SIGNAL \inst1|sub|128~combout\ : std_logic;

BEGIN

output0 <= ww_output0;
ww_data1 <= data1;
ww_data2 <= data2;
ww_data3 <= data3;
ww_data5 <= data5;
ww_data6 <= data6;
ww_data7 <= data7;
ww_enable <= enable;
ww_data4 <= data4;
ww_clr_n <= clr_n;
ww_clk <= clk;
ww_ld_n <= ld_n;
ww_data0 <= data0;
output1 <= ww_output1;
output2 <= ww_output2;
output3 <= ww_output3;
output4 <= ww_output4;
output5 <= ww_output5;
output6 <= ww_output6;
output7 <= ww_output7;
rco <= ww_rco;
clk_o <= ww_clk_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X0_Y20_N9
\output0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|134~q\,
	devoe => ww_devoe,
	o => \output0~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\output1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|122~q\,
	devoe => ww_devoe,
	o => \output1~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\output2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output2~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\output3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|34~q\,
	devoe => ww_devoe,
	o => \output3~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\output4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|134~q\,
	devoe => ww_devoe,
	o => \output4~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\output5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|122~q\,
	devoe => ww_devoe,
	o => \output5~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\output6~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|111~q\,
	devoe => ww_devoe,
	o => \output6~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\output7~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|34~q\,
	devoe => ww_devoe,
	o => \output7~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\rco~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|128~combout\,
	devoe => ww_devoe,
	o => \rco~output_o\);

-- Location: IOOBUF_X26_Y0_N16
\clk_o~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk~input_o\,
	devoe => ww_devoe,
	o => \clk_o~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: IOIBUF_X0_Y23_N1
\ld_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld_n,
	o => \ld_n~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\clr_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr_n,
	o => \clr_n~input_o\);

-- Location: IOIBUF_X0_Y24_N1
\data0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data0,
	o => \data0~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\data1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1,
	o => \data1~input_o\);

-- Location: LCCOMB_X2_Y26_N24
\inst1|sub|126~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sub|126~0_combout\ = (\clr_n~input_o\ & ((\ld_n~input_o\) # (\data1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_n~input_o\,
	datac => \ld_n~input_o\,
	datad => \data1~input_o\,
	combout => \inst1|sub|126~0_combout\);

-- Location: IOIBUF_X0_Y27_N22
\data4~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data4,
	o => \data4~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\enable~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\data5~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data5,
	o => \data5~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\data7~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data7,
	o => \data7~input_o\);

-- Location: LCCOMB_X2_Y26_N6
\inst|sub|68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|sub|68~0_combout\ = (\clr_n~input_o\ & (\ld_n~input_o\ & (\enable~input_o\ $ (\inst|sub|34~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_n~input_o\,
	datab => \ld_n~input_o\,
	datac => \enable~input_o\,
	datad => \inst|sub|34~q\,
	combout => \inst|sub|68~0_combout\);

-- Location: LCCOMB_X1_Y26_N12
\inst|sub|68~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|sub|68~1_combout\ = (\inst|sub|68~0_combout\) # ((!\ld_n~input_o\ & (\clr_n~input_o\ & \data7~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_n~input_o\,
	datab => \clr_n~input_o\,
	datac => \data7~input_o\,
	datad => \inst|sub|68~0_combout\,
	combout => \inst|sub|68~1_combout\);

-- Location: FF_X1_Y26_N13
\inst|sub|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|sub|68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|34~q\);

-- Location: IOIBUF_X0_Y25_N15
\data6~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data6,
	o => \data6~input_o\);

-- Location: LCCOMB_X1_Y26_N20
\inst|sub|109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|sub|109~combout\ = \inst|sub|111~q\ $ (((\enable~input_o\ & \inst|sub|34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \enable~input_o\,
	datac => \inst|sub|34~q\,
	datad => \inst|sub|111~q\,
	combout => \inst|sub|109~combout\);

-- Location: LCCOMB_X1_Y26_N14
\inst|sub|115~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|sub|115~0_combout\ = (\clr_n~input_o\ & ((\ld_n~input_o\ & ((\inst|sub|109~combout\))) # (!\ld_n~input_o\ & (\data6~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_n~input_o\,
	datab => \clr_n~input_o\,
	datac => \data6~input_o\,
	datad => \inst|sub|109~combout\,
	combout => \inst|sub|115~0_combout\);

-- Location: FF_X1_Y26_N15
\inst|sub|111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|sub|115~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|111~q\);

-- Location: LCCOMB_X1_Y26_N6
\inst|sub|120\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|sub|120~combout\ = \inst|sub|122~q\ $ (((\enable~input_o\ & (\inst|sub|34~q\ & \inst|sub|111~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|122~q\,
	datab => \enable~input_o\,
	datac => \inst|sub|34~q\,
	datad => \inst|sub|111~q\,
	combout => \inst|sub|120~combout\);

-- Location: LCCOMB_X1_Y26_N8
\inst|sub|126~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|sub|126~0_combout\ = (\clr_n~input_o\ & ((\ld_n~input_o\ & ((\inst|sub|120~combout\))) # (!\ld_n~input_o\ & (\data5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_n~input_o\,
	datab => \clr_n~input_o\,
	datac => \data5~input_o\,
	datad => \inst|sub|120~combout\,
	combout => \inst|sub|126~0_combout\);

-- Location: FF_X1_Y26_N9
\inst|sub|122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|sub|126~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|122~q\);

-- Location: LCCOMB_X1_Y26_N0
\inst|sub|130~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|sub|130~0_combout\ = (\enable~input_o\ & (\inst|sub|122~q\ & (\inst|sub|111~q\ & \inst|sub|34~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \inst|sub|122~q\,
	datac => \inst|sub|111~q\,
	datad => \inst|sub|34~q\,
	combout => \inst|sub|130~0_combout\);

-- Location: LCCOMB_X1_Y26_N24
\inst|sub|137~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|sub|137~0_combout\ = (\ld_n~input_o\ & (\clr_n~input_o\ & (\inst|sub|134~q\ $ (\inst|sub|130~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_n~input_o\,
	datab => \inst|sub|134~q\,
	datac => \clr_n~input_o\,
	datad => \inst|sub|130~0_combout\,
	combout => \inst|sub|137~0_combout\);

-- Location: LCCOMB_X1_Y26_N2
\inst|sub|137~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|sub|137~1_combout\ = (\inst|sub|137~0_combout\) # ((!\ld_n~input_o\ & (\clr_n~input_o\ & \data4~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_n~input_o\,
	datab => \clr_n~input_o\,
	datac => \data4~input_o\,
	datad => \inst|sub|137~0_combout\,
	combout => \inst|sub|137~1_combout\);

-- Location: FF_X1_Y26_N3
\inst|sub|134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|sub|137~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|134~q\);

-- Location: IOIBUF_X0_Y23_N8
\data3~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data3,
	o => \data3~input_o\);

-- Location: LCCOMB_X1_Y26_N18
\inst1|sub|72\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sub|72~combout\ = \inst1|sub|34~q\ $ (((\inst|sub|134~q\ & \inst|sub|130~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|sub|134~q\,
	datac => \inst1|sub|34~q\,
	datad => \inst|sub|130~0_combout\,
	combout => \inst1|sub|72~combout\);

-- Location: LCCOMB_X1_Y26_N4
\inst1|sub|68~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sub|68~0_combout\ = (\clr_n~input_o\ & ((\ld_n~input_o\ & ((\inst1|sub|72~combout\))) # (!\ld_n~input_o\ & (\data3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_n~input_o\,
	datab => \clr_n~input_o\,
	datac => \data3~input_o\,
	datad => \inst1|sub|72~combout\,
	combout => \inst1|sub|68~0_combout\);

-- Location: FF_X1_Y26_N5
\inst1|sub|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|sub|68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|34~q\);

-- Location: LCCOMB_X1_Y26_N30
\inst1|sub|109\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sub|109~combout\ = \inst1|sub|111~q\ $ (((\inst|sub|134~q\ & (\inst1|sub|34~q\ & \inst|sub|130~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|111~q\,
	datab => \inst|sub|134~q\,
	datac => \inst1|sub|34~q\,
	datad => \inst|sub|130~0_combout\,
	combout => \inst1|sub|109~combout\);

-- Location: IOIBUF_X0_Y25_N22
\data2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data2,
	o => \data2~input_o\);

-- Location: LCCOMB_X1_Y26_N22
\inst1|sub|115~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sub|115~0_combout\ = (\clr_n~input_o\ & ((\ld_n~input_o\ & (\inst1|sub|109~combout\)) # (!\ld_n~input_o\ & ((\data2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_n~input_o\,
	datab => \clr_n~input_o\,
	datac => \inst1|sub|109~combout\,
	datad => \data2~input_o\,
	combout => \inst1|sub|115~0_combout\);

-- Location: FF_X1_Y26_N23
\inst1|sub|111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|sub|115~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|111~q\);

-- Location: LCCOMB_X1_Y26_N10
\inst1|sub|119~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sub|119~0_combout\ = (\inst1|sub|111~q\ & (\inst|sub|134~q\ & (\inst1|sub|34~q\ & \inst|sub|130~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|111~q\,
	datab => \inst|sub|134~q\,
	datac => \inst1|sub|34~q\,
	datad => \inst|sub|130~0_combout\,
	combout => \inst1|sub|119~0_combout\);

-- Location: LCCOMB_X1_Y26_N26
\inst1|sub|126~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sub|126~1_combout\ = (\inst1|sub|126~0_combout\ & ((\inst1|sub|122~q\ $ (\inst1|sub|119~0_combout\)) # (!\ld_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_n~input_o\,
	datab => \inst1|sub|126~0_combout\,
	datac => \inst1|sub|122~q\,
	datad => \inst1|sub|119~0_combout\,
	combout => \inst1|sub|126~1_combout\);

-- Location: FF_X1_Y26_N27
\inst1|sub|122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|sub|126~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|122~q\);

-- Location: LCCOMB_X1_Y26_N28
\inst1|sub|131\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sub|131~combout\ = \inst1|sub|134~q\ $ (((\inst1|sub|122~q\ & \inst1|sub|119~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|122~q\,
	datac => \inst1|sub|134~q\,
	datad => \inst1|sub|119~0_combout\,
	combout => \inst1|sub|131~combout\);

-- Location: LCCOMB_X1_Y26_N16
\inst1|sub|137~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sub|137~0_combout\ = (\clr_n~input_o\ & ((\ld_n~input_o\ & ((\inst1|sub|131~combout\))) # (!\ld_n~input_o\ & (\data0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_n~input_o\,
	datab => \clr_n~input_o\,
	datac => \data0~input_o\,
	datad => \inst1|sub|131~combout\,
	combout => \inst1|sub|137~0_combout\);

-- Location: FF_X1_Y26_N17
\inst1|sub|134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|sub|137~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|134~q\);

-- Location: LCCOMB_X1_Y27_N16
\inst1|sub|128\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|sub|128~combout\ = (\inst1|sub|122~q\ & (\inst1|sub|119~0_combout\ & \inst1|sub|134~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|122~q\,
	datac => \inst1|sub|119~0_combout\,
	datad => \inst1|sub|134~q\,
	combout => \inst1|sub|128~combout\);

ww_output0 <= \output0~output_o\;

ww_output1 <= \output1~output_o\;

ww_output2 <= \output2~output_o\;

ww_output3 <= \output3~output_o\;

ww_output4 <= \output4~output_o\;

ww_output5 <= \output5~output_o\;

ww_output6 <= \output6~output_o\;

ww_output7 <= \output7~output_o\;

ww_rco <= \rco~output_o\;

ww_clk_o <= \clk_o~output_o\;
END structure;


