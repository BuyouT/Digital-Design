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

-- DATE "02/25/2016 13:12:05"

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

ENTITY 	top_level IS
    PORT (
	clk50MHz : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(2 DOWNTO 0);
	led0 : BUFFER std_logic_vector(6 DOWNTO 0);
	led0_dp : BUFFER std_logic;
	led1 : BUFFER std_logic_vector(6 DOWNTO 0);
	led1_dp : BUFFER std_logic;
	led2 : BUFFER std_logic_vector(6 DOWNTO 0);
	led2_dp : BUFFER std_logic;
	led3 : BUFFER std_logic_vector(6 DOWNTO 0);
	led3_dp : BUFFER std_logic
	);
END top_level;

-- Design Ports Information
-- switch[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
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
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0_dp : std_logic;
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led1_dp : std_logic;
SIGNAL ww_led2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led2_dp : std_logic;
SIGNAL ww_led3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led3_dp : std_logic;
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \led0_dp~output_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \led1[5]~output_o\ : std_logic;
SIGNAL \led1[6]~output_o\ : std_logic;
SIGNAL \led1_dp~output_o\ : std_logic;
SIGNAL \led2[0]~output_o\ : std_logic;
SIGNAL \led2[1]~output_o\ : std_logic;
SIGNAL \led2[2]~output_o\ : std_logic;
SIGNAL \led2[3]~output_o\ : std_logic;
SIGNAL \led2[4]~output_o\ : std_logic;
SIGNAL \led2[5]~output_o\ : std_logic;
SIGNAL \led2[6]~output_o\ : std_logic;
SIGNAL \led2_dp~output_o\ : std_logic;
SIGNAL \led3[0]~output_o\ : std_logic;
SIGNAL \led3[1]~output_o\ : std_logic;
SIGNAL \led3[2]~output_o\ : std_logic;
SIGNAL \led3[3]~output_o\ : std_logic;
SIGNAL \led3[4]~output_o\ : std_logic;
SIGNAL \led3[5]~output_o\ : std_logic;
SIGNAL \led3[6]~output_o\ : std_logic;
SIGNAL \led3_dp~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_GCD|tempY[0]~4_combout\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \button[2]~input_o\ : std_logic;
SIGNAL \U_GCD|tempX[0]~5\ : std_logic;
SIGNAL \U_GCD|tempX[1]~8\ : std_logic;
SIGNAL \U_GCD|tempX[2]~9_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \U_GCD|LessThan0~1_combout\ : std_logic;
SIGNAL \U_GCD|LessThan0~0_combout\ : std_logic;
SIGNAL \U_GCD|LessThan0~2_combout\ : std_logic;
SIGNAL \U_GCD|LessThan1~1_combout\ : std_logic;
SIGNAL \U_GCD|LessThan1~2_combout\ : std_logic;
SIGNAL \U_GCD|LessThan1~3_combout\ : std_logic;
SIGNAL \U_GCD|tempX[3]~6_combout\ : std_logic;
SIGNAL \U_GCD|tempY[1]~9\ : std_logic;
SIGNAL \U_GCD|tempY[2]~10_combout\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \U_GCD|tempY[3]~6_combout\ : std_logic;
SIGNAL \U_GCD|tempY[3]~7_combout\ : std_logic;
SIGNAL \U_GCD|tempY[2]~11\ : std_logic;
SIGNAL \U_GCD|tempY[3]~12_combout\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \U_GCD|tempX[2]~10\ : std_logic;
SIGNAL \U_GCD|tempX[3]~11_combout\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \U_GCD|LessThan1~0_combout\ : std_logic;
SIGNAL \U_GCD|Selector0~0_combout\ : std_logic;
SIGNAL \U_GCD|Selector3~0_combout\ : std_logic;
SIGNAL \U_GCD|state.state3~q\ : std_logic;
SIGNAL \U_GCD|Selector2~0_combout\ : std_logic;
SIGNAL \U_GCD|Selector2~1_combout\ : std_logic;
SIGNAL \U_GCD|Selector4~0_combout\ : std_logic;
SIGNAL \U_GCD|state.state4~q\ : std_logic;
SIGNAL \U_GCD|Selector0~1_combout\ : std_logic;
SIGNAL \U_GCD|state.state0~0_combout\ : std_logic;
SIGNAL \U_GCD|state.state0~q\ : std_logic;
SIGNAL \U_GCD|Selector1~0_combout\ : std_logic;
SIGNAL \U_GCD|state.state1~q\ : std_logic;
SIGNAL \U_GCD|Selector2~2_combout\ : std_logic;
SIGNAL \U_GCD|state.state2~q\ : std_logic;
SIGNAL \U_GCD|tempX[0]~4_combout\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \U_GCD|tempY[0]~5\ : std_logic;
SIGNAL \U_GCD|tempY[1]~8_combout\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \U_GCD|tempX[1]~7_combout\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \U_LED0|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux0~0_combout\ : std_logic;
SIGNAL \U_GCD|Selector5~0_combout\ : std_logic;
SIGNAL \U_GCD|done~q\ : std_logic;
SIGNAL \U_SN|state.state2~feeder_combout\ : std_logic;
SIGNAL \U_SN|state.state2~q\ : std_logic;
SIGNAL \U_SN|state.state3~feeder_combout\ : std_logic;
SIGNAL \U_SN|state.state3~q\ : std_logic;
SIGNAL \U_SN|Selector4~0_combout\ : std_logic;
SIGNAL \U_SN|state.state4~q\ : std_logic;
SIGNAL \U_SN|Selector0~0_combout\ : std_logic;
SIGNAL \U_SN|state.state0~q\ : std_logic;
SIGNAL \U_SN|Selector1~0_combout\ : std_logic;
SIGNAL \U_SN|state.state1~q\ : std_logic;
SIGNAL \U_SN|Mult0|auto_generated|cs1a[1]~0_combout\ : std_logic;
SIGNAL \U_SN|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \U_SN|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \U_SN|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \U_SN|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \U_SN|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \U_SN|~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \U_SN|multTemp[0]~5_cout\ : std_logic;
SIGNAL \U_SN|multTemp[0]~7\ : std_logic;
SIGNAL \U_SN|multTemp[1]~10\ : std_logic;
SIGNAL \U_SN|multTemp[2]~12\ : std_logic;
SIGNAL \U_SN|multTemp[3]~13_combout\ : std_logic;
SIGNAL \U_SN|multTemp[3]~8_combout\ : std_logic;
SIGNAL \U_SN|multTemp[2]~11_combout\ : std_logic;
SIGNAL \U_SN|output[2]~feeder_combout\ : std_logic;
SIGNAL \U_SN|multTemp[1]~9_combout\ : std_logic;
SIGNAL \U_SN|output[1]~feeder_combout\ : std_logic;
SIGNAL \U_SN|multTemp[0]~6_combout\ : std_logic;
SIGNAL \U_LED1|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux0~0_combout\ : std_logic;
SIGNAL \U_SN|Selector5~0_combout\ : std_logic;
SIGNAL \U_SN|done~q\ : std_logic;
SIGNAL \U_GCD|tempY\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_SN|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_GCD|tempX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_SN|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_SN|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_GCD|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_SN|tempX\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_SN|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_SN|multTemp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_GCD|ALT_INV_state.state2~q\ : std_logic;
SIGNAL \U_LED1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \U_LED0|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_button[0]~input_o\ : std_logic;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_switch <= switch;
ww_button <= button;
led0 <= ww_led0;
led0_dp <= ww_led0_dp;
led1 <= ww_led1;
led1_dp <= ww_led1_dp;
led2 <= ww_led2;
led2_dp <= ww_led2_dp;
led3 <= ww_led3;
led3_dp <= ww_led3_dp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);
\U_GCD|ALT_INV_state.state2~q\ <= NOT \U_GCD|state.state2~q\;
\U_LED1|ALT_INV_Mux6~0_combout\ <= NOT \U_LED1|Mux6~0_combout\;
\U_LED0|ALT_INV_Mux6~0_combout\ <= NOT \U_LED0|Mux6~0_combout\;
\ALT_INV_button[0]~input_o\ <= NOT \button[0]~input_o\;

-- Location: IOOBUF_X26_Y29_N16
\led0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N23
\led0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X26_Y29_N9
\led0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X28_Y29_N30
\led0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X26_Y29_N2
\led0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N30
\led0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\led0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X23_Y29_N9
\led0_dp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_GCD|done~q\,
	devoe => ww_devoe,
	o => \led0_dp~output_o\);

-- Location: IOOBUF_X26_Y29_N23
\led1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X28_Y29_N16
\led1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X23_Y29_N30
\led1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X23_Y29_N23
\led1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\led1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\led1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led1[5]~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\led1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED1|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X26_Y29_N30
\led1_dp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SN|done~q\,
	devoe => ww_devoe,
	o => \led1_dp~output_o\);

-- Location: IOOBUF_X37_Y29_N2
\led2[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led2[0]~output_o\);

-- Location: IOOBUF_X30_Y29_N23
\led2[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[1]~output_o\);

-- Location: IOOBUF_X30_Y29_N16
\led2[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\led2[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[3]~output_o\);

-- Location: IOOBUF_X28_Y29_N2
\led2[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[4]~output_o\);

-- Location: IOOBUF_X30_Y29_N30
\led2[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\led2[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[6]~output_o\);

-- Location: IOOBUF_X32_Y29_N16
\led2_dp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led2_dp~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\led3[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led3[0]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\led3[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[1]~output_o\);

-- Location: IOOBUF_X37_Y29_N23
\led3[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[2]~output_o\);

-- Location: IOOBUF_X32_Y29_N2
\led3[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[3]~output_o\);

-- Location: IOOBUF_X32_Y29_N9
\led3[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[4]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\led3[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[5]~output_o\);

-- Location: IOOBUF_X32_Y29_N23
\led3[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[6]~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\led3_dp~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led3_dp~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk50MHz~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: CLKCTRL_G9
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

-- Location: LCCOMB_X26_Y27_N16
\U_GCD|tempY[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|tempY[0]~4_combout\ = (\U_GCD|tempX\(0) & (\U_GCD|tempY\(0) $ (VCC))) # (!\U_GCD|tempX\(0) & ((\U_GCD|tempY\(0)) # (GND)))
-- \U_GCD|tempY[0]~5\ = CARRY((\U_GCD|tempY\(0)) # (!\U_GCD|tempX\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|tempX\(0),
	datab => \U_GCD|tempY\(0),
	datad => VCC,
	combout => \U_GCD|tempY[0]~4_combout\,
	cout => \U_GCD|tempY[0]~5\);

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

-- Location: LCCOMB_X26_Y27_N6
\U_GCD|tempX[0]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|tempX[0]~4_combout\ = (\U_GCD|tempX\(0) & ((GND) # (!\U_GCD|tempY\(0)))) # (!\U_GCD|tempX\(0) & (\U_GCD|tempY\(0) $ (GND)))
-- \U_GCD|tempX[0]~5\ = CARRY((\U_GCD|tempX\(0)) # (!\U_GCD|tempY\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|tempX\(0),
	datab => \U_GCD|tempY\(0),
	datad => VCC,
	combout => \U_GCD|tempX[0]~4_combout\,
	cout => \U_GCD|tempX[0]~5\);

-- Location: LCCOMB_X26_Y27_N8
\U_GCD|tempX[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|tempX[1]~7_combout\ = (\U_GCD|tempX\(1) & ((\U_GCD|tempY\(1) & (!\U_GCD|tempX[0]~5\)) # (!\U_GCD|tempY\(1) & (\U_GCD|tempX[0]~5\ & VCC)))) # (!\U_GCD|tempX\(1) & ((\U_GCD|tempY\(1) & ((\U_GCD|tempX[0]~5\) # (GND))) # (!\U_GCD|tempY\(1) & 
-- (!\U_GCD|tempX[0]~5\))))
-- \U_GCD|tempX[1]~8\ = CARRY((\U_GCD|tempX\(1) & (\U_GCD|tempY\(1) & !\U_GCD|tempX[0]~5\)) # (!\U_GCD|tempX\(1) & ((\U_GCD|tempY\(1)) # (!\U_GCD|tempX[0]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|tempX\(1),
	datab => \U_GCD|tempY\(1),
	datad => VCC,
	cin => \U_GCD|tempX[0]~5\,
	combout => \U_GCD|tempX[1]~7_combout\,
	cout => \U_GCD|tempX[1]~8\);

-- Location: LCCOMB_X26_Y27_N10
\U_GCD|tempX[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|tempX[2]~9_combout\ = ((\U_GCD|tempY\(2) $ (\U_GCD|tempX\(2) $ (\U_GCD|tempX[1]~8\)))) # (GND)
-- \U_GCD|tempX[2]~10\ = CARRY((\U_GCD|tempY\(2) & (\U_GCD|tempX\(2) & !\U_GCD|tempX[1]~8\)) # (!\U_GCD|tempY\(2) & ((\U_GCD|tempX\(2)) # (!\U_GCD|tempX[1]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|tempY\(2),
	datab => \U_GCD|tempX\(2),
	datad => VCC,
	cin => \U_GCD|tempX[1]~8\,
	combout => \U_GCD|tempX[2]~9_combout\,
	cout => \U_GCD|tempX[2]~10\);

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

-- Location: LCCOMB_X26_Y27_N4
\U_GCD|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|LessThan0~1_combout\ = (\U_GCD|tempX\(1) & (!\U_GCD|tempX\(0) & (\U_GCD|tempY\(0) & \U_GCD|tempY\(1)))) # (!\U_GCD|tempX\(1) & ((\U_GCD|tempY\(1)) # ((!\U_GCD|tempX\(0) & \U_GCD|tempY\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|tempX\(0),
	datab => \U_GCD|tempY\(0),
	datac => \U_GCD|tempX\(1),
	datad => \U_GCD|tempY\(1),
	combout => \U_GCD|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y27_N0
\U_GCD|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|LessThan0~0_combout\ = (\U_GCD|tempX\(3) & (\U_GCD|tempY\(2) & (!\U_GCD|tempX\(2) & \U_GCD|tempY\(3)))) # (!\U_GCD|tempX\(3) & ((\U_GCD|tempY\(3)) # ((\U_GCD|tempY\(2) & !\U_GCD|tempX\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|tempX\(3),
	datab => \U_GCD|tempY\(2),
	datac => \U_GCD|tempX\(2),
	datad => \U_GCD|tempY\(3),
	combout => \U_GCD|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y27_N30
\U_GCD|LessThan0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|LessThan0~2_combout\ = (\U_GCD|LessThan0~0_combout\) # ((\U_GCD|LessThan1~0_combout\ & \U_GCD|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|LessThan1~0_combout\,
	datac => \U_GCD|LessThan0~1_combout\,
	datad => \U_GCD|LessThan0~0_combout\,
	combout => \U_GCD|LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y27_N24
\U_GCD|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|LessThan1~1_combout\ = (\U_GCD|tempX\(3) & (((!\U_GCD|tempY\(2) & \U_GCD|tempX\(2))) # (!\U_GCD|tempY\(3)))) # (!\U_GCD|tempX\(3) & (!\U_GCD|tempY\(2) & (\U_GCD|tempX\(2) & !\U_GCD|tempY\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|tempX\(3),
	datab => \U_GCD|tempY\(2),
	datac => \U_GCD|tempX\(2),
	datad => \U_GCD|tempY\(3),
	combout => \U_GCD|LessThan1~1_combout\);

-- Location: LCCOMB_X27_Y27_N22
\U_GCD|LessThan1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|LessThan1~2_combout\ = (\U_GCD|tempX\(1) & (((\U_GCD|tempX\(0) & !\U_GCD|tempY\(0))) # (!\U_GCD|tempY\(1)))) # (!\U_GCD|tempX\(1) & (\U_GCD|tempX\(0) & (!\U_GCD|tempY\(0) & !\U_GCD|tempY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|tempX\(1),
	datab => \U_GCD|tempX\(0),
	datac => \U_GCD|tempY\(0),
	datad => \U_GCD|tempY\(1),
	combout => \U_GCD|LessThan1~2_combout\);

-- Location: LCCOMB_X26_Y27_N2
\U_GCD|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|LessThan1~3_combout\ = (\U_GCD|LessThan1~1_combout\) # ((\U_GCD|LessThan1~0_combout\ & \U_GCD|LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|LessThan1~1_combout\,
	datac => \U_GCD|LessThan1~0_combout\,
	datad => \U_GCD|LessThan1~2_combout\,
	combout => \U_GCD|LessThan1~3_combout\);

-- Location: LCCOMB_X26_Y27_N28
\U_GCD|tempX[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|tempX[3]~6_combout\ = (\U_GCD|state.state2~q\ & (((!\U_GCD|LessThan0~2_combout\ & \U_GCD|LessThan1~3_combout\)))) # (!\U_GCD|state.state2~q\ & (\U_GCD|state.state1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|state.state2~q\,
	datab => \U_GCD|state.state1~q\,
	datac => \U_GCD|LessThan0~2_combout\,
	datad => \U_GCD|LessThan1~3_combout\,
	combout => \U_GCD|tempX[3]~6_combout\);

-- Location: FF_X26_Y27_N11
\U_GCD|tempX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|tempX[2]~9_combout\,
	asdata => \switch[8]~input_o\,
	clrn => \ALT_INV_button[0]~input_o\,
	sload => \U_GCD|ALT_INV_state.state2~q\,
	ena => \U_GCD|tempX[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|tempX\(2));

-- Location: LCCOMB_X26_Y27_N18
\U_GCD|tempY[1]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|tempY[1]~8_combout\ = (\U_GCD|tempX\(1) & ((\U_GCD|tempY\(1) & (!\U_GCD|tempY[0]~5\)) # (!\U_GCD|tempY\(1) & ((\U_GCD|tempY[0]~5\) # (GND))))) # (!\U_GCD|tempX\(1) & ((\U_GCD|tempY\(1) & (\U_GCD|tempY[0]~5\ & VCC)) # (!\U_GCD|tempY\(1) & 
-- (!\U_GCD|tempY[0]~5\))))
-- \U_GCD|tempY[1]~9\ = CARRY((\U_GCD|tempX\(1) & ((!\U_GCD|tempY[0]~5\) # (!\U_GCD|tempY\(1)))) # (!\U_GCD|tempX\(1) & (!\U_GCD|tempY\(1) & !\U_GCD|tempY[0]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|tempX\(1),
	datab => \U_GCD|tempY\(1),
	datad => VCC,
	cin => \U_GCD|tempY[0]~5\,
	combout => \U_GCD|tempY[1]~8_combout\,
	cout => \U_GCD|tempY[1]~9\);

-- Location: LCCOMB_X26_Y27_N20
\U_GCD|tempY[2]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|tempY[2]~10_combout\ = ((\U_GCD|tempY\(2) $ (\U_GCD|tempX\(2) $ (\U_GCD|tempY[1]~9\)))) # (GND)
-- \U_GCD|tempY[2]~11\ = CARRY((\U_GCD|tempY\(2) & ((!\U_GCD|tempY[1]~9\) # (!\U_GCD|tempX\(2)))) # (!\U_GCD|tempY\(2) & (!\U_GCD|tempX\(2) & !\U_GCD|tempY[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|tempY\(2),
	datab => \U_GCD|tempX\(2),
	datad => VCC,
	cin => \U_GCD|tempY[1]~9\,
	combout => \U_GCD|tempY[2]~10_combout\,
	cout => \U_GCD|tempY[2]~11\);

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

-- Location: LCCOMB_X27_Y27_N18
\U_GCD|tempY[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|tempY[3]~6_combout\ = (\U_GCD|state.state2~q\ & ((\U_GCD|LessThan1~0_combout\))) # (!\U_GCD|state.state2~q\ & (\U_GCD|state.state1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|state.state1~q\,
	datab => \U_GCD|state.state2~q\,
	datad => \U_GCD|LessThan1~0_combout\,
	combout => \U_GCD|tempY[3]~6_combout\);

-- Location: LCCOMB_X26_Y27_N26
\U_GCD|tempY[3]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|tempY[3]~7_combout\ = (\U_GCD|state.state2~q\ & ((\U_GCD|LessThan0~0_combout\) # ((\U_GCD|LessThan0~1_combout\ & \U_GCD|tempY[3]~6_combout\)))) # (!\U_GCD|state.state2~q\ & (((\U_GCD|tempY[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|state.state2~q\,
	datab => \U_GCD|LessThan0~0_combout\,
	datac => \U_GCD|LessThan0~1_combout\,
	datad => \U_GCD|tempY[3]~6_combout\,
	combout => \U_GCD|tempY[3]~7_combout\);

-- Location: FF_X26_Y27_N21
\U_GCD|tempY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|tempY[2]~10_combout\,
	asdata => \switch[4]~input_o\,
	clrn => \ALT_INV_button[0]~input_o\,
	sload => \U_GCD|ALT_INV_state.state2~q\,
	ena => \U_GCD|tempY[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|tempY\(2));

-- Location: LCCOMB_X26_Y27_N22
\U_GCD|tempY[3]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|tempY[3]~12_combout\ = \U_GCD|tempX\(3) $ (\U_GCD|tempY[2]~11\ $ (!\U_GCD|tempY\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|tempX\(3),
	datad => \U_GCD|tempY\(3),
	cin => \U_GCD|tempY[2]~11\,
	combout => \U_GCD|tempY[3]~12_combout\);

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

-- Location: FF_X26_Y27_N23
\U_GCD|tempY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|tempY[3]~12_combout\,
	asdata => \switch[5]~input_o\,
	clrn => \ALT_INV_button[0]~input_o\,
	sload => \U_GCD|ALT_INV_state.state2~q\,
	ena => \U_GCD|tempY[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|tempY\(3));

-- Location: LCCOMB_X26_Y27_N12
\U_GCD|tempX[3]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|tempX[3]~11_combout\ = \U_GCD|tempX\(3) $ (\U_GCD|tempX[2]~10\ $ (!\U_GCD|tempY\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|tempX\(3),
	datad => \U_GCD|tempY\(3),
	cin => \U_GCD|tempX[2]~10\,
	combout => \U_GCD|tempX[3]~11_combout\);

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

-- Location: FF_X26_Y27_N13
\U_GCD|tempX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|tempX[3]~11_combout\,
	asdata => \switch[9]~input_o\,
	clrn => \ALT_INV_button[0]~input_o\,
	sload => \U_GCD|ALT_INV_state.state2~q\,
	ena => \U_GCD|tempX[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|tempX\(3));

-- Location: LCCOMB_X26_Y27_N14
\U_GCD|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|LessThan1~0_combout\ = (\U_GCD|tempX\(3) & (\U_GCD|tempY\(3) & (\U_GCD|tempX\(2) $ (!\U_GCD|tempY\(2))))) # (!\U_GCD|tempX\(3) & (!\U_GCD|tempY\(3) & (\U_GCD|tempX\(2) $ (!\U_GCD|tempY\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|tempX\(3),
	datab => \U_GCD|tempX\(2),
	datac => \U_GCD|tempY\(3),
	datad => \U_GCD|tempY\(2),
	combout => \U_GCD|LessThan1~0_combout\);

-- Location: LCCOMB_X27_Y27_N30
\U_GCD|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|Selector0~0_combout\ = ((\U_GCD|LessThan1~1_combout\) # ((\U_GCD|LessThan1~0_combout\ & \U_GCD|LessThan1~2_combout\))) # (!\U_GCD|state.state2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|LessThan1~0_combout\,
	datab => \U_GCD|state.state2~q\,
	datac => \U_GCD|LessThan1~2_combout\,
	datad => \U_GCD|LessThan1~1_combout\,
	combout => \U_GCD|Selector0~0_combout\);

-- Location: LCCOMB_X27_Y27_N16
\U_GCD|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|Selector3~0_combout\ = (!\U_GCD|Selector0~0_combout\ & (!\U_GCD|LessThan0~2_combout\ & ((\button[2]~input_o\) # (!\U_GCD|state.state4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|Selector0~0_combout\,
	datab => \U_GCD|state.state4~q\,
	datac => \button[2]~input_o\,
	datad => \U_GCD|LessThan0~2_combout\,
	combout => \U_GCD|Selector3~0_combout\);

-- Location: FF_X27_Y27_N17
\U_GCD|state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|Selector3~0_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|state.state3~q\);

-- Location: LCCOMB_X27_Y27_N8
\U_GCD|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|Selector2~0_combout\ = (\button[2]~input_o\ & (!\U_GCD|state.state0~q\ & !\U_GCD|state.state4~q\)) # (!\button[2]~input_o\ & ((\U_GCD|state.state4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button[2]~input_o\,
	datac => \U_GCD|state.state0~q\,
	datad => \U_GCD|state.state4~q\,
	combout => \U_GCD|Selector2~0_combout\);

-- Location: LCCOMB_X27_Y27_N2
\U_GCD|Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|Selector2~1_combout\ = (\U_GCD|state.state1~q\) # ((\U_GCD|Selector2~0_combout\) # ((!\U_GCD|Selector0~0_combout\ & !\U_GCD|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|state.state1~q\,
	datab => \U_GCD|Selector2~0_combout\,
	datac => \U_GCD|Selector0~0_combout\,
	datad => \U_GCD|LessThan0~2_combout\,
	combout => \U_GCD|Selector2~1_combout\);

-- Location: LCCOMB_X27_Y27_N28
\U_GCD|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|Selector4~0_combout\ = (\U_GCD|state.state3~q\) # ((\U_GCD|state.state4~q\ & !\U_GCD|Selector2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|state.state3~q\,
	datac => \U_GCD|state.state4~q\,
	datad => \U_GCD|Selector2~1_combout\,
	combout => \U_GCD|Selector4~0_combout\);

-- Location: FF_X27_Y27_N29
\U_GCD|state.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|Selector4~0_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|state.state4~q\);

-- Location: LCCOMB_X27_Y27_N10
\U_GCD|Selector0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|Selector0~1_combout\ = (!\U_GCD|state.state1~q\ & (!\U_GCD|state.state3~q\ & ((\U_GCD|Selector0~0_combout\) # (\U_GCD|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|state.state1~q\,
	datab => \U_GCD|state.state3~q\,
	datac => \U_GCD|Selector0~0_combout\,
	datad => \U_GCD|LessThan0~2_combout\,
	combout => \U_GCD|Selector0~1_combout\);

-- Location: LCCOMB_X27_Y27_N26
\U_GCD|state.state0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|state.state0~0_combout\ = (\button[2]~input_o\) # ((!\U_GCD|state.state4~q\ & ((\U_GCD|state.state0~q\) # (!\U_GCD|Selector0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \U_GCD|state.state4~q\,
	datac => \U_GCD|state.state0~q\,
	datad => \U_GCD|Selector0~1_combout\,
	combout => \U_GCD|state.state0~0_combout\);

-- Location: FF_X27_Y27_N27
\U_GCD|state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|state.state0~0_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|state.state0~q\);

-- Location: LCCOMB_X27_Y27_N24
\U_GCD|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|Selector1~0_combout\ = (\button[2]~input_o\ & (!\U_GCD|state.state0~q\ & \U_GCD|Selector0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button[2]~input_o\,
	datac => \U_GCD|state.state0~q\,
	datad => \U_GCD|Selector0~1_combout\,
	combout => \U_GCD|Selector1~0_combout\);

-- Location: FF_X27_Y27_N25
\U_GCD|state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|Selector1~0_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|state.state1~q\);

-- Location: LCCOMB_X27_Y27_N4
\U_GCD|Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|Selector2~2_combout\ = (!\U_GCD|state.state3~q\ & ((\U_GCD|state.state1~q\) # ((\U_GCD|state.state2~q\ & !\U_GCD|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|state.state1~q\,
	datab => \U_GCD|state.state3~q\,
	datac => \U_GCD|state.state2~q\,
	datad => \U_GCD|Selector2~1_combout\,
	combout => \U_GCD|Selector2~2_combout\);

-- Location: FF_X27_Y27_N5
\U_GCD|state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|Selector2~2_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|state.state2~q\);

-- Location: FF_X26_Y27_N17
\U_GCD|tempY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|tempY[0]~4_combout\,
	asdata => \switch[2]~input_o\,
	clrn => \ALT_INV_button[0]~input_o\,
	sload => \U_GCD|ALT_INV_state.state2~q\,
	ena => \U_GCD|tempY[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|tempY\(0));

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

-- Location: FF_X26_Y27_N7
\U_GCD|tempX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|tempX[0]~4_combout\,
	asdata => \switch[6]~input_o\,
	clrn => \ALT_INV_button[0]~input_o\,
	sload => \U_GCD|ALT_INV_state.state2~q\,
	ena => \U_GCD|tempX[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|tempX\(0));

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

-- Location: FF_X26_Y27_N19
\U_GCD|tempY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|tempY[1]~8_combout\,
	asdata => \switch[3]~input_o\,
	clrn => \ALT_INV_button[0]~input_o\,
	sload => \U_GCD|ALT_INV_state.state2~q\,
	ena => \U_GCD|tempY[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|tempY\(1));

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

-- Location: FF_X26_Y27_N9
\U_GCD|tempX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|tempX[1]~7_combout\,
	asdata => \switch[7]~input_o\,
	clrn => \ALT_INV_button[0]~input_o\,
	sload => \U_GCD|ALT_INV_state.state2~q\,
	ena => \U_GCD|tempX[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|tempX\(1));

-- Location: FF_X27_Y27_N19
\U_GCD|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|tempX\(1),
	clrn => \ALT_INV_button[0]~input_o\,
	sload => VCC,
	ena => \U_GCD|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|output\(1));

-- Location: FF_X27_Y27_N15
\U_GCD|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|tempX\(3),
	clrn => \ALT_INV_button[0]~input_o\,
	sload => VCC,
	ena => \U_GCD|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|output\(3));

-- Location: FF_X27_Y27_N21
\U_GCD|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|tempX\(0),
	clrn => \ALT_INV_button[0]~input_o\,
	sload => VCC,
	ena => \U_GCD|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|output\(0));

-- Location: FF_X27_Y27_N1
\U_GCD|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|tempX\(2),
	clrn => \ALT_INV_button[0]~input_o\,
	sload => VCC,
	ena => \U_GCD|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|output\(2));

-- Location: LCCOMB_X27_Y27_N20
\U_LED0|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux6~0_combout\ = (\U_GCD|output\(0) & ((\U_GCD|output\(3)) # (\U_GCD|output\(1) $ (\U_GCD|output\(2))))) # (!\U_GCD|output\(0) & ((\U_GCD|output\(1)) # (\U_GCD|output\(3) $ (\U_GCD|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|output\(1),
	datab => \U_GCD|output\(3),
	datac => \U_GCD|output\(0),
	datad => \U_GCD|output\(2),
	combout => \U_LED0|Mux6~0_combout\);

-- Location: LCCOMB_X28_Y27_N20
\U_LED0|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux5~0_combout\ = (\U_GCD|output\(1) & (!\U_GCD|output\(3) & ((\U_GCD|output\(0)) # (!\U_GCD|output\(2))))) # (!\U_GCD|output\(1) & (\U_GCD|output\(0) & (\U_GCD|output\(3) $ (!\U_GCD|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|output\(3),
	datab => \U_GCD|output\(1),
	datac => \U_GCD|output\(2),
	datad => \U_GCD|output\(0),
	combout => \U_LED0|Mux5~0_combout\);

-- Location: LCCOMB_X27_Y27_N14
\U_LED0|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux4~0_combout\ = (\U_GCD|output\(1) & (((!\U_GCD|output\(3) & \U_GCD|output\(0))))) # (!\U_GCD|output\(1) & ((\U_GCD|output\(2) & (!\U_GCD|output\(3))) # (!\U_GCD|output\(2) & ((\U_GCD|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|output\(1),
	datab => \U_GCD|output\(2),
	datac => \U_GCD|output\(3),
	datad => \U_GCD|output\(0),
	combout => \U_LED0|Mux4~0_combout\);

-- Location: LCCOMB_X28_Y27_N18
\U_LED0|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux3~0_combout\ = (\U_GCD|output\(0) & ((\U_GCD|output\(1) $ (!\U_GCD|output\(2))))) # (!\U_GCD|output\(0) & ((\U_GCD|output\(3) & (\U_GCD|output\(1) & !\U_GCD|output\(2))) # (!\U_GCD|output\(3) & (!\U_GCD|output\(1) & \U_GCD|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|output\(3),
	datab => \U_GCD|output\(1),
	datac => \U_GCD|output\(2),
	datad => \U_GCD|output\(0),
	combout => \U_LED0|Mux3~0_combout\);

-- Location: LCCOMB_X27_Y27_N12
\U_LED0|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux2~0_combout\ = (\U_GCD|output\(2) & (\U_GCD|output\(3) & ((\U_GCD|output\(1)) # (!\U_GCD|output\(0))))) # (!\U_GCD|output\(2) & (\U_GCD|output\(1) & (!\U_GCD|output\(3) & !\U_GCD|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|output\(1),
	datab => \U_GCD|output\(2),
	datac => \U_GCD|output\(3),
	datad => \U_GCD|output\(0),
	combout => \U_LED0|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y27_N0
\U_LED0|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux1~0_combout\ = (\U_GCD|output\(3) & ((\U_GCD|output\(0) & (\U_GCD|output\(1))) # (!\U_GCD|output\(0) & ((\U_GCD|output\(2)))))) # (!\U_GCD|output\(3) & (\U_GCD|output\(2) & (\U_GCD|output\(1) $ (\U_GCD|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|output\(3),
	datab => \U_GCD|output\(1),
	datac => \U_GCD|output\(2),
	datad => \U_GCD|output\(0),
	combout => \U_LED0|Mux1~0_combout\);

-- Location: LCCOMB_X27_Y27_N0
\U_LED0|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED0|Mux0~0_combout\ = (\U_GCD|output\(3) & (\U_GCD|output\(0) & (\U_GCD|output\(1) $ (\U_GCD|output\(2))))) # (!\U_GCD|output\(3) & (!\U_GCD|output\(1) & (\U_GCD|output\(2) $ (\U_GCD|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|output\(1),
	datab => \U_GCD|output\(3),
	datac => \U_GCD|output\(2),
	datad => \U_GCD|output\(0),
	combout => \U_LED0|Mux0~0_combout\);

-- Location: LCCOMB_X27_Y27_N6
\U_GCD|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GCD|Selector5~0_combout\ = (\U_GCD|state.state0~q\ & (((\U_GCD|done~q\) # (\U_GCD|state.state3~q\)))) # (!\U_GCD|state.state0~q\ & (!\button[2]~input_o\ & (\U_GCD|done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|state.state0~q\,
	datab => \button[2]~input_o\,
	datac => \U_GCD|done~q\,
	datad => \U_GCD|state.state3~q\,
	combout => \U_GCD|Selector5~0_combout\);

-- Location: FF_X27_Y27_N7
\U_GCD|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|Selector5~0_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|done~q\);

-- Location: LCCOMB_X23_Y27_N10
\U_SN|state.state2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|state.state2~feeder_combout\ = \U_SN|state.state1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SN|state.state1~q\,
	combout => \U_SN|state.state2~feeder_combout\);

-- Location: FF_X23_Y27_N11
\U_SN|state.state2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_SN|state.state2~feeder_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|state.state2~q\);

-- Location: LCCOMB_X23_Y27_N18
\U_SN|state.state3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|state.state3~feeder_combout\ = \U_SN|state.state2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SN|state.state2~q\,
	combout => \U_SN|state.state3~feeder_combout\);

-- Location: FF_X23_Y27_N19
\U_SN|state.state3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_SN|state.state3~feeder_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|state.state3~q\);

-- Location: LCCOMB_X23_Y27_N12
\U_SN|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Selector4~0_combout\ = (\U_SN|state.state3~q\) # ((\U_SN|state.state4~q\ & \button[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SN|state.state3~q\,
	datac => \U_SN|state.state4~q\,
	datad => \button[2]~input_o\,
	combout => \U_SN|Selector4~0_combout\);

-- Location: FF_X23_Y27_N13
\U_SN|state.state4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_SN|Selector4~0_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|state.state4~q\);

-- Location: LCCOMB_X23_Y27_N20
\U_SN|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Selector0~0_combout\ = (\button[2]~input_o\) # ((\U_SN|state.state0~q\ & !\U_SN|state.state4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datac => \U_SN|state.state0~q\,
	datad => \U_SN|state.state4~q\,
	combout => \U_SN|Selector0~0_combout\);

-- Location: FF_X23_Y27_N21
\U_SN|state.state0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_SN|Selector0~0_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|state.state0~q\);

-- Location: LCCOMB_X23_Y27_N6
\U_SN|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Selector1~0_combout\ = (\button[2]~input_o\ & !\U_SN|state.state0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datad => \U_SN|state.state0~q\,
	combout => \U_SN|Selector1~0_combout\);

-- Location: FF_X23_Y27_N7
\U_SN|state.state1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_SN|Selector1~0_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|state.state1~q\);

-- Location: FF_X22_Y27_N31
\U_SN|tempX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \switch[6]~input_o\,
	clrn => \ALT_INV_button[0]~input_o\,
	sload => VCC,
	ena => \U_SN|state.state1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|tempX\(0));

-- Location: FF_X22_Y27_N1
\U_SN|tempX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \switch[7]~input_o\,
	clrn => \ALT_INV_button[0]~input_o\,
	sload => VCC,
	ena => \U_SN|state.state1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|tempX\(1));

-- Location: FF_X22_Y27_N13
\U_SN|tempX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \switch[9]~input_o\,
	clrn => \ALT_INV_button[0]~input_o\,
	sload => VCC,
	ena => \U_SN|state.state1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|tempX\(3));

-- Location: FF_X22_Y27_N15
\U_SN|tempX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \switch[8]~input_o\,
	clrn => \ALT_INV_button[0]~input_o\,
	sload => VCC,
	ena => \U_SN|state.state1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|tempX\(2));

-- Location: LCCOMB_X21_Y27_N24
\U_SN|Mult0|auto_generated|le5a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Mult0|auto_generated|le5a\(0) = (\U_SN|tempX\(0) & ((\U_SN|tempX\(3) & ((!\U_SN|tempX\(2)) # (!\U_SN|tempX\(1)))) # (!\U_SN|tempX\(3) & ((\U_SN|tempX\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|tempX\(0),
	datab => \U_SN|tempX\(1),
	datac => \U_SN|tempX\(3),
	datad => \U_SN|tempX\(2),
	combout => \U_SN|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X22_Y27_N0
\U_SN|Mult0|auto_generated|le4a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Mult0|auto_generated|le4a\(2) = (\U_SN|tempX\(2) & (!\U_SN|tempX\(1) & !\U_SN|tempX\(3))) # (!\U_SN|tempX\(2) & ((\U_SN|tempX\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|tempX\(2),
	datac => \U_SN|tempX\(1),
	datad => \U_SN|tempX\(3),
	combout => \U_SN|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X22_Y27_N14
\U_SN|Mult0|auto_generated|le3a[4]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Mult0|auto_generated|le3a\(4) = (\U_SN|tempX\(1) & ((!\U_SN|tempX\(0)))) # (!\U_SN|tempX\(1) & (!\U_SN|tempX\(3) & \U_SN|tempX\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|tempX\(3),
	datab => \U_SN|tempX\(1),
	datad => \U_SN|tempX\(0),
	combout => \U_SN|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X22_Y27_N26
\U_SN|Mult0|auto_generated|le3a[3]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Mult0|auto_generated|le3a\(3) = (\U_SN|tempX\(0) & (((!\U_SN|tempX\(1) & !\U_SN|tempX\(2))))) # (!\U_SN|tempX\(0) & (\U_SN|tempX\(3) $ ((\U_SN|tempX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|tempX\(3),
	datab => \U_SN|tempX\(1),
	datac => \U_SN|tempX\(2),
	datad => \U_SN|tempX\(0),
	combout => \U_SN|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X22_Y27_N10
\U_SN|Mult0|auto_generated|cs1a[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Mult0|auto_generated|cs1a[1]~0_combout\ = \U_SN|tempX\(3) $ (((\U_SN|tempX\(2) & ((\U_SN|tempX\(0)) # (\U_SN|tempX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|tempX\(0),
	datab => \U_SN|tempX\(1),
	datac => \U_SN|tempX\(2),
	datad => \U_SN|tempX\(3),
	combout => \U_SN|Mult0|auto_generated|cs1a[1]~0_combout\);

-- Location: LCCOMB_X22_Y27_N28
\U_SN|Mult0|auto_generated|le3a[2]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Mult0|auto_generated|le3a\(2) = \U_SN|tempX\(1) $ (((\U_SN|tempX\(0)) # (\U_SN|tempX\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|tempX\(0),
	datac => \U_SN|tempX\(2),
	datad => \U_SN|tempX\(1),
	combout => \U_SN|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X22_Y27_N4
\U_SN|Mult0|auto_generated|op_1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Mult0|auto_generated|op_1~0_combout\ = (\U_SN|Mult0|auto_generated|cs1a[1]~0_combout\ & (\U_SN|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\U_SN|Mult0|auto_generated|cs1a[1]~0_combout\ & (\U_SN|Mult0|auto_generated|le3a\(2) & VCC))
-- \U_SN|Mult0|auto_generated|op_1~1\ = CARRY((\U_SN|Mult0|auto_generated|cs1a[1]~0_combout\ & \U_SN|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|Mult0|auto_generated|cs1a[1]~0_combout\,
	datab => \U_SN|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \U_SN|Mult0|auto_generated|op_1~0_combout\,
	cout => \U_SN|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X22_Y27_N6
\U_SN|Mult0|auto_generated|op_1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Mult0|auto_generated|op_1~2_combout\ = (\U_SN|Mult0|auto_generated|le3a\(3) & (!\U_SN|Mult0|auto_generated|op_1~1\)) # (!\U_SN|Mult0|auto_generated|le3a\(3) & ((\U_SN|Mult0|auto_generated|op_1~1\) # (GND)))
-- \U_SN|Mult0|auto_generated|op_1~3\ = CARRY((!\U_SN|Mult0|auto_generated|op_1~1\) # (!\U_SN|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \U_SN|Mult0|auto_generated|op_1~1\,
	combout => \U_SN|Mult0|auto_generated|op_1~2_combout\,
	cout => \U_SN|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X22_Y27_N8
\U_SN|Mult0|auto_generated|op_1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Mult0|auto_generated|op_1~4_combout\ = \U_SN|Mult0|auto_generated|le4a\(2) $ (\U_SN|Mult0|auto_generated|op_1~3\ $ (!\U_SN|Mult0|auto_generated|le3a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|Mult0|auto_generated|le4a\(2),
	datad => \U_SN|Mult0|auto_generated|le3a\(4),
	cin => \U_SN|Mult0|auto_generated|op_1~3\,
	combout => \U_SN|Mult0|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X22_Y27_N12
\U_SN|Mult0|auto_generated|le4a[1]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Mult0|auto_generated|le4a\(1) = (\U_SN|tempX\(0) & (!\U_SN|tempX\(2) & (\U_SN|tempX\(3) $ (\U_SN|tempX\(1))))) # (!\U_SN|tempX\(0) & ((\U_SN|tempX\(3) $ (\U_SN|tempX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|tempX\(0),
	datab => \U_SN|tempX\(2),
	datac => \U_SN|tempX\(3),
	datad => \U_SN|tempX\(1),
	combout => \U_SN|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X22_Y27_N30
\U_SN|Mult0|auto_generated|le4a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Mult0|auto_generated|le4a\(0) = \U_SN|tempX\(3) $ (((\U_SN|tempX\(0)) # ((\U_SN|tempX\(2) & \U_SN|tempX\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|tempX\(2),
	datab => \U_SN|tempX\(3),
	datac => \U_SN|tempX\(0),
	datad => \U_SN|tempX\(1),
	combout => \U_SN|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X21_Y27_N14
\U_SN|~QUARTUS_CREATED_GND~I\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U_SN|~QUARTUS_CREATED_GND~I_combout\);

-- Location: LCCOMB_X22_Y27_N2
\U_SN|Mult0|auto_generated|le3a[0]\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Mult0|auto_generated|le3a\(0) = \U_SN|tempX\(1) $ (\U_SN|tempX\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_SN|tempX\(1),
	datad => \U_SN|tempX\(0),
	combout => \U_SN|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X22_Y27_N16
\U_SN|multTemp[0]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|multTemp[0]~5_cout\ = CARRY((\U_SN|Mult0|auto_generated|le3a\(0) & \U_SN|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|Mult0|auto_generated|le3a\(0),
	datab => \U_SN|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	cout => \U_SN|multTemp[0]~5_cout\);

-- Location: LCCOMB_X22_Y27_N18
\U_SN|multTemp[0]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|multTemp[0]~6_combout\ = (\U_SN|~QUARTUS_CREATED_GND~I_combout\ & (!\U_SN|multTemp[0]~5_cout\)) # (!\U_SN|~QUARTUS_CREATED_GND~I_combout\ & ((\U_SN|multTemp[0]~5_cout\) # (GND)))
-- \U_SN|multTemp[0]~7\ = CARRY((!\U_SN|multTemp[0]~5_cout\) # (!\U_SN|~QUARTUS_CREATED_GND~I_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|~QUARTUS_CREATED_GND~I_combout\,
	datad => VCC,
	cin => \U_SN|multTemp[0]~5_cout\,
	combout => \U_SN|multTemp[0]~6_combout\,
	cout => \U_SN|multTemp[0]~7\);

-- Location: LCCOMB_X22_Y27_N20
\U_SN|multTemp[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|multTemp[1]~9_combout\ = ((\U_SN|Mult0|auto_generated|le4a\(0) $ (\U_SN|Mult0|auto_generated|op_1~0_combout\ $ (!\U_SN|multTemp[0]~7\)))) # (GND)
-- \U_SN|multTemp[1]~10\ = CARRY((\U_SN|Mult0|auto_generated|le4a\(0) & ((\U_SN|Mult0|auto_generated|op_1~0_combout\) # (!\U_SN|multTemp[0]~7\))) # (!\U_SN|Mult0|auto_generated|le4a\(0) & (\U_SN|Mult0|auto_generated|op_1~0_combout\ & !\U_SN|multTemp[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|Mult0|auto_generated|le4a\(0),
	datab => \U_SN|Mult0|auto_generated|op_1~0_combout\,
	datad => VCC,
	cin => \U_SN|multTemp[0]~7\,
	combout => \U_SN|multTemp[1]~9_combout\,
	cout => \U_SN|multTemp[1]~10\);

-- Location: LCCOMB_X22_Y27_N22
\U_SN|multTemp[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|multTemp[2]~11_combout\ = (\U_SN|Mult0|auto_generated|op_1~2_combout\ & ((\U_SN|Mult0|auto_generated|le4a\(1) & (\U_SN|multTemp[1]~10\ & VCC)) # (!\U_SN|Mult0|auto_generated|le4a\(1) & (!\U_SN|multTemp[1]~10\)))) # 
-- (!\U_SN|Mult0|auto_generated|op_1~2_combout\ & ((\U_SN|Mult0|auto_generated|le4a\(1) & (!\U_SN|multTemp[1]~10\)) # (!\U_SN|Mult0|auto_generated|le4a\(1) & ((\U_SN|multTemp[1]~10\) # (GND)))))
-- \U_SN|multTemp[2]~12\ = CARRY((\U_SN|Mult0|auto_generated|op_1~2_combout\ & (!\U_SN|Mult0|auto_generated|le4a\(1) & !\U_SN|multTemp[1]~10\)) # (!\U_SN|Mult0|auto_generated|op_1~2_combout\ & ((!\U_SN|multTemp[1]~10\) # 
-- (!\U_SN|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|Mult0|auto_generated|op_1~2_combout\,
	datab => \U_SN|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \U_SN|multTemp[1]~10\,
	combout => \U_SN|multTemp[2]~11_combout\,
	cout => \U_SN|multTemp[2]~12\);

-- Location: LCCOMB_X22_Y27_N24
\U_SN|multTemp[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|multTemp[3]~13_combout\ = \U_SN|Mult0|auto_generated|le5a\(0) $ (\U_SN|multTemp[2]~12\ $ (!\U_SN|Mult0|auto_generated|op_1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_SN|Mult0|auto_generated|le5a\(0),
	datad => \U_SN|Mult0|auto_generated|op_1~4_combout\,
	cin => \U_SN|multTemp[2]~12\,
	combout => \U_SN|multTemp[3]~13_combout\);

-- Location: LCCOMB_X23_Y27_N0
\U_SN|multTemp[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|multTemp[3]~8_combout\ = (!\button[0]~input_o\ & \U_SN|state.state2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button[0]~input_o\,
	datad => \U_SN|state.state2~q\,
	combout => \U_SN|multTemp[3]~8_combout\);

-- Location: FF_X22_Y27_N25
\U_SN|multTemp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_SN|multTemp[3]~13_combout\,
	ena => \U_SN|multTemp[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|multTemp\(3));

-- Location: FF_X23_Y27_N23
\U_SN|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_SN|multTemp\(3),
	clrn => \ALT_INV_button[0]~input_o\,
	sload => VCC,
	ena => \U_SN|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|output\(3));

-- Location: FF_X22_Y27_N23
\U_SN|multTemp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_SN|multTemp[2]~11_combout\,
	ena => \U_SN|multTemp[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|multTemp\(2));

-- Location: LCCOMB_X23_Y27_N28
\U_SN|output[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|output[2]~feeder_combout\ = \U_SN|multTemp\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SN|multTemp\(2),
	combout => \U_SN|output[2]~feeder_combout\);

-- Location: FF_X23_Y27_N29
\U_SN|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_SN|output[2]~feeder_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	ena => \U_SN|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|output\(2));

-- Location: FF_X22_Y27_N21
\U_SN|multTemp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_SN|multTemp[1]~9_combout\,
	ena => \U_SN|multTemp[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|multTemp\(1));

-- Location: LCCOMB_X23_Y27_N26
\U_SN|output[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|output[1]~feeder_combout\ = \U_SN|multTemp\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_SN|multTemp\(1),
	combout => \U_SN|output[1]~feeder_combout\);

-- Location: FF_X23_Y27_N27
\U_SN|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_SN|output[1]~feeder_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	ena => \U_SN|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|output\(1));

-- Location: FF_X22_Y27_N19
\U_SN|multTemp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_SN|multTemp[0]~6_combout\,
	ena => \U_SN|multTemp[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|multTemp\(0));

-- Location: FF_X23_Y27_N1
\U_SN|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_SN|multTemp\(0),
	clrn => \ALT_INV_button[0]~input_o\,
	sload => VCC,
	ena => \U_SN|state.state3~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|output\(0));

-- Location: LCCOMB_X23_Y27_N8
\U_LED1|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux6~0_combout\ = (\U_SN|output\(0) & ((\U_SN|output\(3)) # (\U_SN|output\(2) $ (\U_SN|output\(1))))) # (!\U_SN|output\(0) & ((\U_SN|output\(1)) # (\U_SN|output\(3) $ (\U_SN|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|output\(3),
	datab => \U_SN|output\(2),
	datac => \U_SN|output\(1),
	datad => \U_SN|output\(0),
	combout => \U_LED1|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y27_N14
\U_LED1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux5~0_combout\ = (\U_SN|output\(2) & (\U_SN|output\(0) & (\U_SN|output\(3) $ (\U_SN|output\(1))))) # (!\U_SN|output\(2) & (!\U_SN|output\(3) & ((\U_SN|output\(1)) # (\U_SN|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|output\(3),
	datab => \U_SN|output\(2),
	datac => \U_SN|output\(1),
	datad => \U_SN|output\(0),
	combout => \U_LED1|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y27_N16
\U_LED1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux4~0_combout\ = (\U_SN|output\(1) & (!\U_SN|output\(3) & ((\U_SN|output\(0))))) # (!\U_SN|output\(1) & ((\U_SN|output\(2) & (!\U_SN|output\(3))) # (!\U_SN|output\(2) & ((\U_SN|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|output\(3),
	datab => \U_SN|output\(2),
	datac => \U_SN|output\(1),
	datad => \U_SN|output\(0),
	combout => \U_LED1|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y27_N2
\U_LED1|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux3~0_combout\ = (\U_SN|output\(0) & ((\U_SN|output\(2) $ (!\U_SN|output\(1))))) # (!\U_SN|output\(0) & ((\U_SN|output\(3) & (!\U_SN|output\(2) & \U_SN|output\(1))) # (!\U_SN|output\(3) & (\U_SN|output\(2) & !\U_SN|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|output\(3),
	datab => \U_SN|output\(2),
	datac => \U_SN|output\(1),
	datad => \U_SN|output\(0),
	combout => \U_LED1|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y27_N24
\U_LED1|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux2~0_combout\ = (\U_SN|output\(3) & (\U_SN|output\(2) & ((\U_SN|output\(1)) # (!\U_SN|output\(0))))) # (!\U_SN|output\(3) & (!\U_SN|output\(2) & (\U_SN|output\(1) & !\U_SN|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|output\(3),
	datab => \U_SN|output\(2),
	datac => \U_SN|output\(1),
	datad => \U_SN|output\(0),
	combout => \U_LED1|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y27_N30
\U_LED1|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux1~0_combout\ = (\U_SN|output\(3) & ((\U_SN|output\(0) & ((\U_SN|output\(1)))) # (!\U_SN|output\(0) & (\U_SN|output\(2))))) # (!\U_SN|output\(3) & (\U_SN|output\(2) & (\U_SN|output\(1) $ (\U_SN|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|output\(3),
	datab => \U_SN|output\(2),
	datac => \U_SN|output\(1),
	datad => \U_SN|output\(0),
	combout => \U_LED1|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y27_N22
\U_LED1|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux0~0_combout\ = (\U_SN|output\(2) & (!\U_SN|output\(1) & (\U_SN|output\(3) $ (!\U_SN|output\(0))))) # (!\U_SN|output\(2) & (\U_SN|output\(0) & (\U_SN|output\(1) $ (!\U_SN|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_SN|output\(1),
	datab => \U_SN|output\(2),
	datac => \U_SN|output\(3),
	datad => \U_SN|output\(0),
	combout => \U_LED1|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y27_N4
\U_SN|Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_SN|Selector5~0_combout\ = (\U_SN|state.state0~q\ & (((\U_SN|done~q\) # (\U_SN|state.state3~q\)))) # (!\U_SN|state.state0~q\ & (!\button[2]~input_o\ & (\U_SN|done~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \U_SN|state.state0~q\,
	datac => \U_SN|done~q\,
	datad => \U_SN|state.state3~q\,
	combout => \U_SN|Selector5~0_combout\);

-- Location: FF_X23_Y27_N5
\U_SN|done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_SN|Selector5~0_combout\,
	clrn => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_SN|done~q\);

-- Location: IOIBUF_X11_Y29_N1
\switch[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

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

ww_led0(0) <= \led0[0]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(6) <= \led0[6]~output_o\;

ww_led0_dp <= \led0_dp~output_o\;

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;

ww_led1(5) <= \led1[5]~output_o\;

ww_led1(6) <= \led1[6]~output_o\;

ww_led1_dp <= \led1_dp~output_o\;

ww_led2(0) <= \led2[0]~output_o\;

ww_led2(1) <= \led2[1]~output_o\;

ww_led2(2) <= \led2[2]~output_o\;

ww_led2(3) <= \led2[3]~output_o\;

ww_led2(4) <= \led2[4]~output_o\;

ww_led2(5) <= \led2[5]~output_o\;

ww_led2(6) <= \led2[6]~output_o\;

ww_led2_dp <= \led2_dp~output_o\;

ww_led3(0) <= \led3[0]~output_o\;

ww_led3(1) <= \led3[1]~output_o\;

ww_led3(2) <= \led3[2]~output_o\;

ww_led3(3) <= \led3[3]~output_o\;

ww_led3(4) <= \led3[4]~output_o\;

ww_led3(5) <= \led3[5]~output_o\;

ww_led3(6) <= \led3[6]~output_o\;

ww_led3_dp <= \led3_dp~output_o\;
END structure;


