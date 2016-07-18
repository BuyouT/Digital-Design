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

-- DATE "02/18/2016 13:06:57"

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
	rst : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(2 DOWNTO 0);
	led0 : OUT std_logic_vector(6 DOWNTO 0);
	led0_dp : OUT std_logic;
	led1 : OUT std_logic_vector(6 DOWNTO 0);
	led1_dp : OUT std_logic;
	led2 : OUT std_logic_vector(6 DOWNTO 0);
	led2_dp : OUT std_logic;
	led3 : OUT std_logic_vector(6 DOWNTO 0);
	led3_dp : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- switch[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_rst : std_logic;
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
SIGNAL \U_CLK_GEN|U_CD|clk_hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_CLK_GEN|temp_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
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
SIGNAL \U_CLK_GEN|U_CD|Add0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~1\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~2_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~3\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~4_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~5\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~6_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|count~5_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~7\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~8_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~9\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~10_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|count~4_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~11\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~12_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~13\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~14_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|count~3_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Equal0~2_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Equal0~3_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~15\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~16_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|count~2_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~17\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~18_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~19\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~20_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~21\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~22_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Equal0~1_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~23\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~24_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~25\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~26_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|count~1_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~27\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Add0~28_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|count~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|Equal0~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|clk_hz~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|clk_hz~feeder_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|clk_hz~q\ : std_logic;
SIGNAL \U_CLK_GEN|U_CD|clk_hz~clkctrl_outclk\ : std_logic;
SIGNAL \U_CLK_GEN|count[0]~9_combout\ : std_logic;
SIGNAL \button[2]~input_o\ : std_logic;
SIGNAL \button[2]~_wirecell_combout\ : std_logic;
SIGNAL \U_CLK_GEN|count[5]~21\ : std_logic;
SIGNAL \U_CLK_GEN|count[6]~22_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U_CLK_GEN|count[6]~23\ : std_logic;
SIGNAL \U_CLK_GEN|count[7]~24_combout\ : std_logic;
SIGNAL \U_CLK_GEN|count[7]~25\ : std_logic;
SIGNAL \U_CLK_GEN|count[8]~26_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|count[8]~11_combout\ : std_logic;
SIGNAL \U_CLK_GEN|count[0]~10\ : std_logic;
SIGNAL \U_CLK_GEN|count[1]~12_combout\ : std_logic;
SIGNAL \U_CLK_GEN|count[1]~13\ : std_logic;
SIGNAL \U_CLK_GEN|count[2]~14_combout\ : std_logic;
SIGNAL \U_CLK_GEN|count[2]~15\ : std_logic;
SIGNAL \U_CLK_GEN|count[3]~16_combout\ : std_logic;
SIGNAL \U_CLK_GEN|count[3]~17\ : std_logic;
SIGNAL \U_CLK_GEN|count[4]~18_combout\ : std_logic;
SIGNAL \U_CLK_GEN|count[4]~19\ : std_logic;
SIGNAL \U_CLK_GEN|count[5]~20_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~1_combout\ : std_logic;
SIGNAL \U_CLK_GEN|temp_out~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|temp_out~q\ : std_logic;
SIGNAL \U_CLK_GEN|temp_out~clkctrl_outclk\ : std_logic;
SIGNAL \U_QUIZ|state.STATE0~0_combout\ : std_logic;
SIGNAL \U_QUIZ|state.STATE0~q\ : std_logic;
SIGNAL \U_QUIZ|state.STATE1~0_combout\ : std_logic;
SIGNAL \U_QUIZ|state.STATE1~q\ : std_logic;
SIGNAL \U_QUIZ|state.STATE2~feeder_combout\ : std_logic;
SIGNAL \U_QUIZ|state.STATE2~q\ : std_logic;
SIGNAL \U_QUIZ|state.STATE3~feeder_combout\ : std_logic;
SIGNAL \U_QUIZ|state.STATE3~q\ : std_logic;
SIGNAL \U_LED1|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED1|Mux4~0_combout\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \U_COUNTER|count~3_combout\ : std_logic;
SIGNAL \U_COUNTER|count[1]~5_cout\ : std_logic;
SIGNAL \U_COUNTER|count[1]~6_combout\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \U_COUNTER|count[1]~7\ : std_logic;
SIGNAL \U_COUNTER|count[2]~8_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \U_COUNTER|count[2]~9\ : std_logic;
SIGNAL \U_COUNTER|count[3]~10_combout\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \U_LED2|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED2|Mux0~0_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE3~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE2~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE6~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE6~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE7~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE5~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE4~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE4~q\ : std_logic;
SIGNAL \U_GRAY|state.STATEC~q\ : std_logic;
SIGNAL \U_GRAY|state.STATED~q\ : std_logic;
SIGNAL \U_GRAY|state.STATEF~q\ : std_logic;
SIGNAL \U_GRAY|state.STATEE~q\ : std_logic;
SIGNAL \U_GRAY|state.STATEA~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATEA~q\ : std_logic;
SIGNAL \U_GRAY|state.STATEB~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE9~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE8~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE8~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE0~0_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE0~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE1~0_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE1~q\ : std_logic;
SIGNAL \U_GRAY|WideOr0~0_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr0~1_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr0~combout\ : std_logic;
SIGNAL \U_GRAY|WideOr2~1_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr2~0_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr2~combout\ : std_logic;
SIGNAL \U_GRAY|WideOr1~0_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr1~combout\ : std_logic;
SIGNAL \U_GRAY|WideOr3~0_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr3~combout\ : std_logic;
SIGNAL \U_LED3|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED3|Mux0~0_combout\ : std_logic;
SIGNAL \U_COUNTER|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_CLK_GEN|count\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U_CLK_GEN|U_CD|count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \U_LED3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U_LED3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U_LED3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U_LED2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_button[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_rst <= rst;
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

\U_CLK_GEN|U_CD|clk_hz~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CLK_GEN|U_CD|clk_hz~q\);

\U_CLK_GEN|temp_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CLK_GEN|temp_out~q\);

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);
\U_LED3|ALT_INV_Mux1~0_combout\ <= NOT \U_LED3|Mux1~0_combout\;
\U_LED3|ALT_INV_Mux2~0_combout\ <= NOT \U_LED3|Mux2~0_combout\;
\U_LED3|ALT_INV_Mux3~0_combout\ <= NOT \U_LED3|Mux3~0_combout\;
\U_LED2|ALT_INV_Mux6~0_combout\ <= NOT \U_LED2|Mux6~0_combout\;
\ALT_INV_button[0]~input_o\ <= NOT \button[0]~input_o\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X26_Y29_N16
\led0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => \U_QUIZ|state.STATE3~q\,
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
	i => \U_LED1|Mux4~0_combout\,
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
	i => \U_QUIZ|state.STATE2~q\,
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
	i => GND,
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
	i => \U_LED1|Mux4~0_combout\,
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
	i => VCC,
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
	i => \U_LED2|ALT_INV_Mux6~0_combout\,
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
	i => \U_LED2|Mux5~0_combout\,
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
	i => \U_LED2|Mux4~0_combout\,
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
	i => \U_LED2|Mux3~0_combout\,
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
	i => \U_LED2|Mux2~0_combout\,
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
	i => \U_LED2|Mux1~0_combout\,
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
	i => \U_LED2|Mux0~0_combout\,
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
	i => \U_LED3|Mux6~0_combout\,
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
	i => \U_LED3|Mux5~0_combout\,
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
	i => \U_LED3|Mux4~0_combout\,
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
	i => \U_LED3|ALT_INV_Mux3~0_combout\,
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
	i => \U_LED3|ALT_INV_Mux2~0_combout\,
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
	i => \U_LED3|ALT_INV_Mux1~0_combout\,
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
	i => \U_LED3|Mux0~0_combout\,
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

-- Location: LCCOMB_X23_Y19_N0
\U_CLK_GEN|U_CD|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~0_combout\ = \U_CLK_GEN|U_CD|count\(0) $ (VCC)
-- \U_CLK_GEN|U_CD|Add0~1\ = CARRY(\U_CLK_GEN|U_CD|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(0),
	datad => VCC,
	combout => \U_CLK_GEN|U_CD|Add0~0_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~1\);

-- Location: IOIBUF_X0_Y24_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X23_Y19_N1
\U_CLK_GEN|U_CD|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|Add0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(0));

-- Location: LCCOMB_X23_Y19_N2
\U_CLK_GEN|U_CD|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~2_combout\ = (\U_CLK_GEN|U_CD|count\(1) & (!\U_CLK_GEN|U_CD|Add0~1\)) # (!\U_CLK_GEN|U_CD|count\(1) & ((\U_CLK_GEN|U_CD|Add0~1\) # (GND)))
-- \U_CLK_GEN|U_CD|Add0~3\ = CARRY((!\U_CLK_GEN|U_CD|Add0~1\) # (!\U_CLK_GEN|U_CD|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(1),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~1\,
	combout => \U_CLK_GEN|U_CD|Add0~2_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~3\);

-- Location: FF_X23_Y19_N3
\U_CLK_GEN|U_CD|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|Add0~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(1));

-- Location: LCCOMB_X23_Y19_N4
\U_CLK_GEN|U_CD|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~4_combout\ = (\U_CLK_GEN|U_CD|count\(2) & (\U_CLK_GEN|U_CD|Add0~3\ $ (GND))) # (!\U_CLK_GEN|U_CD|count\(2) & (!\U_CLK_GEN|U_CD|Add0~3\ & VCC))
-- \U_CLK_GEN|U_CD|Add0~5\ = CARRY((\U_CLK_GEN|U_CD|count\(2) & !\U_CLK_GEN|U_CD|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(2),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~3\,
	combout => \U_CLK_GEN|U_CD|Add0~4_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~5\);

-- Location: FF_X23_Y19_N5
\U_CLK_GEN|U_CD|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|Add0~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(2));

-- Location: LCCOMB_X23_Y19_N6
\U_CLK_GEN|U_CD|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~6_combout\ = (\U_CLK_GEN|U_CD|count\(3) & (!\U_CLK_GEN|U_CD|Add0~5\)) # (!\U_CLK_GEN|U_CD|count\(3) & ((\U_CLK_GEN|U_CD|Add0~5\) # (GND)))
-- \U_CLK_GEN|U_CD|Add0~7\ = CARRY((!\U_CLK_GEN|U_CD|Add0~5\) # (!\U_CLK_GEN|U_CD|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(3),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~5\,
	combout => \U_CLK_GEN|U_CD|Add0~6_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~7\);

-- Location: LCCOMB_X23_Y19_N30
\U_CLK_GEN|U_CD|count~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|count~5_combout\ = (\U_CLK_GEN|U_CD|Add0~6_combout\ & (((!\U_CLK_GEN|U_CD|Equal0~3_combout\) # (!\U_CLK_GEN|U_CD|Equal0~1_combout\)) # (!\U_CLK_GEN|U_CD|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|Add0~6_combout\,
	datab => \U_CLK_GEN|U_CD|Equal0~0_combout\,
	datac => \U_CLK_GEN|U_CD|Equal0~1_combout\,
	datad => \U_CLK_GEN|U_CD|Equal0~3_combout\,
	combout => \U_CLK_GEN|U_CD|count~5_combout\);

-- Location: FF_X23_Y19_N31
\U_CLK_GEN|U_CD|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|count~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(3));

-- Location: LCCOMB_X23_Y19_N8
\U_CLK_GEN|U_CD|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~8_combout\ = (\U_CLK_GEN|U_CD|count\(4) & (\U_CLK_GEN|U_CD|Add0~7\ $ (GND))) # (!\U_CLK_GEN|U_CD|count\(4) & (!\U_CLK_GEN|U_CD|Add0~7\ & VCC))
-- \U_CLK_GEN|U_CD|Add0~9\ = CARRY((\U_CLK_GEN|U_CD|count\(4) & !\U_CLK_GEN|U_CD|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(4),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~7\,
	combout => \U_CLK_GEN|U_CD|Add0~8_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~9\);

-- Location: FF_X23_Y19_N9
\U_CLK_GEN|U_CD|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|Add0~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(4));

-- Location: LCCOMB_X23_Y19_N10
\U_CLK_GEN|U_CD|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~10_combout\ = (\U_CLK_GEN|U_CD|count\(5) & (!\U_CLK_GEN|U_CD|Add0~9\)) # (!\U_CLK_GEN|U_CD|count\(5) & ((\U_CLK_GEN|U_CD|Add0~9\) # (GND)))
-- \U_CLK_GEN|U_CD|Add0~11\ = CARRY((!\U_CLK_GEN|U_CD|Add0~9\) # (!\U_CLK_GEN|U_CD|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(5),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~9\,
	combout => \U_CLK_GEN|U_CD|Add0~10_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~11\);

-- Location: LCCOMB_X22_Y19_N6
\U_CLK_GEN|U_CD|count~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|count~4_combout\ = (\U_CLK_GEN|U_CD|Add0~10_combout\ & (((!\U_CLK_GEN|U_CD|Equal0~0_combout\) # (!\U_CLK_GEN|U_CD|Equal0~1_combout\)) # (!\U_CLK_GEN|U_CD|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|Equal0~3_combout\,
	datab => \U_CLK_GEN|U_CD|Equal0~1_combout\,
	datac => \U_CLK_GEN|U_CD|Add0~10_combout\,
	datad => \U_CLK_GEN|U_CD|Equal0~0_combout\,
	combout => \U_CLK_GEN|U_CD|count~4_combout\);

-- Location: FF_X22_Y19_N7
\U_CLK_GEN|U_CD|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|count~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(5));

-- Location: LCCOMB_X23_Y19_N12
\U_CLK_GEN|U_CD|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~12_combout\ = (\U_CLK_GEN|U_CD|count\(6) & (\U_CLK_GEN|U_CD|Add0~11\ $ (GND))) # (!\U_CLK_GEN|U_CD|count\(6) & (!\U_CLK_GEN|U_CD|Add0~11\ & VCC))
-- \U_CLK_GEN|U_CD|Add0~13\ = CARRY((\U_CLK_GEN|U_CD|count\(6) & !\U_CLK_GEN|U_CD|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(6),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~11\,
	combout => \U_CLK_GEN|U_CD|Add0~12_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~13\);

-- Location: FF_X23_Y19_N13
\U_CLK_GEN|U_CD|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|Add0~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(6));

-- Location: LCCOMB_X23_Y19_N14
\U_CLK_GEN|U_CD|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~14_combout\ = (\U_CLK_GEN|U_CD|count\(7) & (!\U_CLK_GEN|U_CD|Add0~13\)) # (!\U_CLK_GEN|U_CD|count\(7) & ((\U_CLK_GEN|U_CD|Add0~13\) # (GND)))
-- \U_CLK_GEN|U_CD|Add0~15\ = CARRY((!\U_CLK_GEN|U_CD|Add0~13\) # (!\U_CLK_GEN|U_CD|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(7),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~13\,
	combout => \U_CLK_GEN|U_CD|Add0~14_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~15\);

-- Location: LCCOMB_X22_Y19_N10
\U_CLK_GEN|U_CD|count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|count~3_combout\ = (\U_CLK_GEN|U_CD|Add0~14_combout\ & (((!\U_CLK_GEN|U_CD|Equal0~0_combout\) # (!\U_CLK_GEN|U_CD|Equal0~1_combout\)) # (!\U_CLK_GEN|U_CD|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|Equal0~3_combout\,
	datab => \U_CLK_GEN|U_CD|Equal0~1_combout\,
	datac => \U_CLK_GEN|U_CD|Add0~14_combout\,
	datad => \U_CLK_GEN|U_CD|Equal0~0_combout\,
	combout => \U_CLK_GEN|U_CD|count~3_combout\);

-- Location: FF_X22_Y19_N11
\U_CLK_GEN|U_CD|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|count~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(7));

-- Location: LCCOMB_X22_Y19_N28
\U_CLK_GEN|U_CD|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Equal0~2_combout\ = (\U_CLK_GEN|U_CD|count\(7) & (!\U_CLK_GEN|U_CD|count\(6) & (!\U_CLK_GEN|U_CD|count\(4) & \U_CLK_GEN|U_CD|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(7),
	datab => \U_CLK_GEN|U_CD|count\(6),
	datac => \U_CLK_GEN|U_CD|count\(4),
	datad => \U_CLK_GEN|U_CD|count\(5),
	combout => \U_CLK_GEN|U_CD|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y19_N2
\U_CLK_GEN|U_CD|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Equal0~3_combout\ = (\U_CLK_GEN|U_CD|count\(2) & (\U_CLK_GEN|U_CD|count\(1) & (!\U_CLK_GEN|U_CD|count\(3) & \U_CLK_GEN|U_CD|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(2),
	datab => \U_CLK_GEN|U_CD|count\(1),
	datac => \U_CLK_GEN|U_CD|count\(3),
	datad => \U_CLK_GEN|U_CD|Equal0~2_combout\,
	combout => \U_CLK_GEN|U_CD|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y19_N16
\U_CLK_GEN|U_CD|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~16_combout\ = (\U_CLK_GEN|U_CD|count\(8) & (\U_CLK_GEN|U_CD|Add0~15\ $ (GND))) # (!\U_CLK_GEN|U_CD|count\(8) & (!\U_CLK_GEN|U_CD|Add0~15\ & VCC))
-- \U_CLK_GEN|U_CD|Add0~17\ = CARRY((\U_CLK_GEN|U_CD|count\(8) & !\U_CLK_GEN|U_CD|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(8),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~15\,
	combout => \U_CLK_GEN|U_CD|Add0~16_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~17\);

-- Location: LCCOMB_X22_Y19_N30
\U_CLK_GEN|U_CD|count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|count~2_combout\ = (\U_CLK_GEN|U_CD|Add0~16_combout\ & (((!\U_CLK_GEN|U_CD|Equal0~3_combout\) # (!\U_CLK_GEN|U_CD|Equal0~1_combout\)) # (!\U_CLK_GEN|U_CD|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|Equal0~0_combout\,
	datab => \U_CLK_GEN|U_CD|Equal0~1_combout\,
	datac => \U_CLK_GEN|U_CD|Equal0~3_combout\,
	datad => \U_CLK_GEN|U_CD|Add0~16_combout\,
	combout => \U_CLK_GEN|U_CD|count~2_combout\);

-- Location: FF_X22_Y19_N31
\U_CLK_GEN|U_CD|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|count~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(8));

-- Location: LCCOMB_X23_Y19_N18
\U_CLK_GEN|U_CD|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~18_combout\ = (\U_CLK_GEN|U_CD|count\(9) & (!\U_CLK_GEN|U_CD|Add0~17\)) # (!\U_CLK_GEN|U_CD|count\(9) & ((\U_CLK_GEN|U_CD|Add0~17\) # (GND)))
-- \U_CLK_GEN|U_CD|Add0~19\ = CARRY((!\U_CLK_GEN|U_CD|Add0~17\) # (!\U_CLK_GEN|U_CD|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(9),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~17\,
	combout => \U_CLK_GEN|U_CD|Add0~18_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~19\);

-- Location: FF_X23_Y19_N19
\U_CLK_GEN|U_CD|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|Add0~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(9));

-- Location: LCCOMB_X23_Y19_N20
\U_CLK_GEN|U_CD|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~20_combout\ = (\U_CLK_GEN|U_CD|count\(10) & (\U_CLK_GEN|U_CD|Add0~19\ $ (GND))) # (!\U_CLK_GEN|U_CD|count\(10) & (!\U_CLK_GEN|U_CD|Add0~19\ & VCC))
-- \U_CLK_GEN|U_CD|Add0~21\ = CARRY((\U_CLK_GEN|U_CD|count\(10) & !\U_CLK_GEN|U_CD|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(10),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~19\,
	combout => \U_CLK_GEN|U_CD|Add0~20_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~21\);

-- Location: FF_X23_Y19_N21
\U_CLK_GEN|U_CD|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|Add0~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(10));

-- Location: LCCOMB_X23_Y19_N22
\U_CLK_GEN|U_CD|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~22_combout\ = (\U_CLK_GEN|U_CD|count\(11) & (!\U_CLK_GEN|U_CD|Add0~21\)) # (!\U_CLK_GEN|U_CD|count\(11) & ((\U_CLK_GEN|U_CD|Add0~21\) # (GND)))
-- \U_CLK_GEN|U_CD|Add0~23\ = CARRY((!\U_CLK_GEN|U_CD|Add0~21\) # (!\U_CLK_GEN|U_CD|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(11),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~21\,
	combout => \U_CLK_GEN|U_CD|Add0~22_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~23\);

-- Location: FF_X23_Y19_N23
\U_CLK_GEN|U_CD|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|Add0~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(11));

-- Location: LCCOMB_X22_Y19_N26
\U_CLK_GEN|U_CD|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Equal0~1_combout\ = (\U_CLK_GEN|U_CD|count\(8) & (!\U_CLK_GEN|U_CD|count\(11) & (!\U_CLK_GEN|U_CD|count\(10) & !\U_CLK_GEN|U_CD|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(8),
	datab => \U_CLK_GEN|U_CD|count\(11),
	datac => \U_CLK_GEN|U_CD|count\(10),
	datad => \U_CLK_GEN|U_CD|count\(9),
	combout => \U_CLK_GEN|U_CD|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y19_N24
\U_CLK_GEN|U_CD|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~24_combout\ = (\U_CLK_GEN|U_CD|count\(12) & (\U_CLK_GEN|U_CD|Add0~23\ $ (GND))) # (!\U_CLK_GEN|U_CD|count\(12) & (!\U_CLK_GEN|U_CD|Add0~23\ & VCC))
-- \U_CLK_GEN|U_CD|Add0~25\ = CARRY((\U_CLK_GEN|U_CD|count\(12) & !\U_CLK_GEN|U_CD|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CD|count\(12),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~23\,
	combout => \U_CLK_GEN|U_CD|Add0~24_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~25\);

-- Location: FF_X23_Y19_N25
\U_CLK_GEN|U_CD|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|Add0~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(12));

-- Location: LCCOMB_X23_Y19_N26
\U_CLK_GEN|U_CD|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~26_combout\ = (\U_CLK_GEN|U_CD|count\(13) & (!\U_CLK_GEN|U_CD|Add0~25\)) # (!\U_CLK_GEN|U_CD|count\(13) & ((\U_CLK_GEN|U_CD|Add0~25\) # (GND)))
-- \U_CLK_GEN|U_CD|Add0~27\ = CARRY((!\U_CLK_GEN|U_CD|Add0~25\) # (!\U_CLK_GEN|U_CD|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(13),
	datad => VCC,
	cin => \U_CLK_GEN|U_CD|Add0~25\,
	combout => \U_CLK_GEN|U_CD|Add0~26_combout\,
	cout => \U_CLK_GEN|U_CD|Add0~27\);

-- Location: LCCOMB_X22_Y19_N24
\U_CLK_GEN|U_CD|count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|count~1_combout\ = (\U_CLK_GEN|U_CD|Add0~26_combout\ & (((!\U_CLK_GEN|U_CD|Equal0~1_combout\) # (!\U_CLK_GEN|U_CD|Equal0~3_combout\)) # (!\U_CLK_GEN|U_CD|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|Equal0~0_combout\,
	datab => \U_CLK_GEN|U_CD|Equal0~3_combout\,
	datac => \U_CLK_GEN|U_CD|Equal0~1_combout\,
	datad => \U_CLK_GEN|U_CD|Add0~26_combout\,
	combout => \U_CLK_GEN|U_CD|count~1_combout\);

-- Location: FF_X22_Y19_N25
\U_CLK_GEN|U_CD|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|count~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(13));

-- Location: LCCOMB_X23_Y19_N28
\U_CLK_GEN|U_CD|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Add0~28_combout\ = \U_CLK_GEN|U_CD|Add0~27\ $ (!\U_CLK_GEN|U_CD|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_CLK_GEN|U_CD|count\(14),
	cin => \U_CLK_GEN|U_CD|Add0~27\,
	combout => \U_CLK_GEN|U_CD|Add0~28_combout\);

-- Location: LCCOMB_X22_Y19_N22
\U_CLK_GEN|U_CD|count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|count~0_combout\ = (\U_CLK_GEN|U_CD|Add0~28_combout\ & (((!\U_CLK_GEN|U_CD|Equal0~3_combout\) # (!\U_CLK_GEN|U_CD|Equal0~1_combout\)) # (!\U_CLK_GEN|U_CD|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|Equal0~0_combout\,
	datab => \U_CLK_GEN|U_CD|Equal0~1_combout\,
	datac => \U_CLK_GEN|U_CD|Equal0~3_combout\,
	datad => \U_CLK_GEN|U_CD|Add0~28_combout\,
	combout => \U_CLK_GEN|U_CD|count~0_combout\);

-- Location: FF_X22_Y19_N23
\U_CLK_GEN|U_CD|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|count~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|count\(14));

-- Location: LCCOMB_X22_Y19_N20
\U_CLK_GEN|U_CD|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|Equal0~0_combout\ = (\U_CLK_GEN|U_CD|count\(14) & (\U_CLK_GEN|U_CD|count\(13) & (\U_CLK_GEN|U_CD|count\(0) & !\U_CLK_GEN|U_CD|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|count\(14),
	datab => \U_CLK_GEN|U_CD|count\(13),
	datac => \U_CLK_GEN|U_CD|count\(0),
	datad => \U_CLK_GEN|U_CD|count\(12),
	combout => \U_CLK_GEN|U_CD|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y19_N16
\U_CLK_GEN|U_CD|clk_hz~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|clk_hz~0_combout\ = \U_CLK_GEN|U_CD|clk_hz~q\ $ (((\U_CLK_GEN|U_CD|Equal0~0_combout\ & (\U_CLK_GEN|U_CD|Equal0~1_combout\ & \U_CLK_GEN|U_CD|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CD|clk_hz~q\,
	datab => \U_CLK_GEN|U_CD|Equal0~0_combout\,
	datac => \U_CLK_GEN|U_CD|Equal0~1_combout\,
	datad => \U_CLK_GEN|U_CD|Equal0~3_combout\,
	combout => \U_CLK_GEN|U_CD|clk_hz~0_combout\);

-- Location: LCCOMB_X22_Y19_N12
\U_CLK_GEN|U_CD|clk_hz~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CD|clk_hz~feeder_combout\ = \U_CLK_GEN|U_CD|clk_hz~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK_GEN|U_CD|clk_hz~0_combout\,
	combout => \U_CLK_GEN|U_CD|clk_hz~feeder_combout\);

-- Location: FF_X22_Y19_N13
\U_CLK_GEN|U_CD|clk_hz\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CD|clk_hz~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CD|clk_hz~q\);

-- Location: CLKCTRL_G10
\U_CLK_GEN|U_CD|clk_hz~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_CLK_GEN|U_CD|clk_hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_CLK_GEN|U_CD|clk_hz~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y27_N12
\U_CLK_GEN|count[0]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|count[0]~9_combout\ = \U_CLK_GEN|count\(0) $ (VCC)
-- \U_CLK_GEN|count[0]~10\ = CARRY(\U_CLK_GEN|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(0),
	datad => VCC,
	combout => \U_CLK_GEN|count[0]~9_combout\,
	cout => \U_CLK_GEN|count[0]~10\);

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

-- Location: LCCOMB_X19_Y27_N4
\button[2]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \button[2]~_wirecell_combout\ = !\button[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button[2]~input_o\,
	combout => \button[2]~_wirecell_combout\);

-- Location: LCCOMB_X19_Y27_N22
\U_CLK_GEN|count[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|count[5]~20_combout\ = (\U_CLK_GEN|count\(5) & (!\U_CLK_GEN|count[4]~19\)) # (!\U_CLK_GEN|count\(5) & ((\U_CLK_GEN|count[4]~19\) # (GND)))
-- \U_CLK_GEN|count[5]~21\ = CARRY((!\U_CLK_GEN|count[4]~19\) # (!\U_CLK_GEN|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(5),
	datad => VCC,
	cin => \U_CLK_GEN|count[4]~19\,
	combout => \U_CLK_GEN|count[5]~20_combout\,
	cout => \U_CLK_GEN|count[5]~21\);

-- Location: LCCOMB_X19_Y27_N24
\U_CLK_GEN|count[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|count[6]~22_combout\ = (\U_CLK_GEN|count\(6) & (\U_CLK_GEN|count[5]~21\ $ (GND))) # (!\U_CLK_GEN|count\(6) & (!\U_CLK_GEN|count[5]~21\ & VCC))
-- \U_CLK_GEN|count[6]~23\ = CARRY((\U_CLK_GEN|count\(6) & !\U_CLK_GEN|count[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(6),
	datad => VCC,
	cin => \U_CLK_GEN|count[5]~21\,
	combout => \U_CLK_GEN|count[6]~22_combout\,
	cout => \U_CLK_GEN|count[6]~23\);

-- Location: LCCOMB_X19_Y27_N10
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

-- Location: FF_X19_Y27_N25
\U_CLK_GEN|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|clk_hz~clkctrl_outclk\,
	d => \U_CLK_GEN|count[6]~22_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \U_CLK_GEN|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(6));

-- Location: LCCOMB_X19_Y27_N26
\U_CLK_GEN|count[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|count[7]~24_combout\ = (\U_CLK_GEN|count\(7) & (!\U_CLK_GEN|count[6]~23\)) # (!\U_CLK_GEN|count\(7) & ((\U_CLK_GEN|count[6]~23\) # (GND)))
-- \U_CLK_GEN|count[7]~25\ = CARRY((!\U_CLK_GEN|count[6]~23\) # (!\U_CLK_GEN|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(7),
	datad => VCC,
	cin => \U_CLK_GEN|count[6]~23\,
	combout => \U_CLK_GEN|count[7]~24_combout\,
	cout => \U_CLK_GEN|count[7]~25\);

-- Location: FF_X19_Y27_N27
\U_CLK_GEN|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|clk_hz~clkctrl_outclk\,
	d => \U_CLK_GEN|count[7]~24_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \U_CLK_GEN|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(7));

-- Location: LCCOMB_X19_Y27_N28
\U_CLK_GEN|count[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|count[8]~26_combout\ = \U_CLK_GEN|count[7]~25\ $ (!\U_CLK_GEN|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_CLK_GEN|count\(8),
	cin => \U_CLK_GEN|count[7]~25\,
	combout => \U_CLK_GEN|count[8]~26_combout\);

-- Location: FF_X19_Y27_N29
\U_CLK_GEN|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|clk_hz~clkctrl_outclk\,
	d => \U_CLK_GEN|count[8]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \U_CLK_GEN|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(8));

-- Location: LCCOMB_X19_Y27_N6
\U_CLK_GEN|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~0_combout\ = (\U_CLK_GEN|count\(0)) # ((\U_CLK_GEN|count\(3)) # ((\U_CLK_GEN|count\(1)) # (!\U_CLK_GEN|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(0),
	datab => \U_CLK_GEN|count\(3),
	datac => \U_CLK_GEN|count\(1),
	datad => \U_CLK_GEN|count\(2),
	combout => \U_CLK_GEN|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y27_N0
\U_CLK_GEN|count[8]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|count[8]~11_combout\ = (\button[2]~input_o\) # ((\U_CLK_GEN|count\(8) & (!\U_CLK_GEN|Equal0~1_combout\ & !\U_CLK_GEN|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[2]~input_o\,
	datab => \U_CLK_GEN|count\(8),
	datac => \U_CLK_GEN|Equal0~1_combout\,
	datad => \U_CLK_GEN|Equal0~0_combout\,
	combout => \U_CLK_GEN|count[8]~11_combout\);

-- Location: FF_X19_Y27_N13
\U_CLK_GEN|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|clk_hz~clkctrl_outclk\,
	d => \U_CLK_GEN|count[0]~9_combout\,
	asdata => \button[2]~_wirecell_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \U_CLK_GEN|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(0));

-- Location: LCCOMB_X19_Y27_N14
\U_CLK_GEN|count[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|count[1]~12_combout\ = (\U_CLK_GEN|count\(1) & (!\U_CLK_GEN|count[0]~10\)) # (!\U_CLK_GEN|count\(1) & ((\U_CLK_GEN|count[0]~10\) # (GND)))
-- \U_CLK_GEN|count[1]~13\ = CARRY((!\U_CLK_GEN|count[0]~10\) # (!\U_CLK_GEN|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(1),
	datad => VCC,
	cin => \U_CLK_GEN|count[0]~10\,
	combout => \U_CLK_GEN|count[1]~12_combout\,
	cout => \U_CLK_GEN|count[1]~13\);

-- Location: FF_X19_Y27_N15
\U_CLK_GEN|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|clk_hz~clkctrl_outclk\,
	d => \U_CLK_GEN|count[1]~12_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \U_CLK_GEN|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(1));

-- Location: LCCOMB_X19_Y27_N16
\U_CLK_GEN|count[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|count[2]~14_combout\ = (\U_CLK_GEN|count\(2) & (\U_CLK_GEN|count[1]~13\ $ (GND))) # (!\U_CLK_GEN|count\(2) & (!\U_CLK_GEN|count[1]~13\ & VCC))
-- \U_CLK_GEN|count[2]~15\ = CARRY((\U_CLK_GEN|count\(2) & !\U_CLK_GEN|count[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(2),
	datad => VCC,
	cin => \U_CLK_GEN|count[1]~13\,
	combout => \U_CLK_GEN|count[2]~14_combout\,
	cout => \U_CLK_GEN|count[2]~15\);

-- Location: FF_X19_Y27_N17
\U_CLK_GEN|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|clk_hz~clkctrl_outclk\,
	d => \U_CLK_GEN|count[2]~14_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \U_CLK_GEN|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(2));

-- Location: LCCOMB_X19_Y27_N18
\U_CLK_GEN|count[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|count[3]~16_combout\ = (\U_CLK_GEN|count\(3) & (!\U_CLK_GEN|count[2]~15\)) # (!\U_CLK_GEN|count\(3) & ((\U_CLK_GEN|count[2]~15\) # (GND)))
-- \U_CLK_GEN|count[3]~17\ = CARRY((!\U_CLK_GEN|count[2]~15\) # (!\U_CLK_GEN|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(3),
	datad => VCC,
	cin => \U_CLK_GEN|count[2]~15\,
	combout => \U_CLK_GEN|count[3]~16_combout\,
	cout => \U_CLK_GEN|count[3]~17\);

-- Location: FF_X19_Y27_N19
\U_CLK_GEN|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|clk_hz~clkctrl_outclk\,
	d => \U_CLK_GEN|count[3]~16_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \U_CLK_GEN|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(3));

-- Location: LCCOMB_X19_Y27_N20
\U_CLK_GEN|count[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|count[4]~18_combout\ = (\U_CLK_GEN|count\(4) & (\U_CLK_GEN|count[3]~17\ $ (GND))) # (!\U_CLK_GEN|count\(4) & (!\U_CLK_GEN|count[3]~17\ & VCC))
-- \U_CLK_GEN|count[4]~19\ = CARRY((\U_CLK_GEN|count\(4) & !\U_CLK_GEN|count[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(4),
	datad => VCC,
	cin => \U_CLK_GEN|count[3]~17\,
	combout => \U_CLK_GEN|count[4]~18_combout\,
	cout => \U_CLK_GEN|count[4]~19\);

-- Location: FF_X19_Y27_N21
\U_CLK_GEN|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|clk_hz~clkctrl_outclk\,
	d => \U_CLK_GEN|count[4]~18_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \U_CLK_GEN|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(4));

-- Location: FF_X19_Y27_N23
\U_CLK_GEN|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|clk_hz~clkctrl_outclk\,
	d => \U_CLK_GEN|count[5]~20_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \U_CLK_GEN|count[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(5));

-- Location: LCCOMB_X19_Y27_N30
\U_CLK_GEN|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~1_combout\ = (((!\U_CLK_GEN|count\(4)) # (!\U_CLK_GEN|count\(7))) # (!\U_CLK_GEN|count\(6))) # (!\U_CLK_GEN|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(5),
	datab => \U_CLK_GEN|count\(6),
	datac => \U_CLK_GEN|count\(7),
	datad => \U_CLK_GEN|count\(4),
	combout => \U_CLK_GEN|Equal0~1_combout\);

-- Location: LCCOMB_X19_Y27_N2
\U_CLK_GEN|temp_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|temp_out~0_combout\ = (!\U_CLK_GEN|Equal0~1_combout\ & (!\U_CLK_GEN|Equal0~0_combout\ & (!\button[2]~input_o\ & \U_CLK_GEN|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~1_combout\,
	datab => \U_CLK_GEN|Equal0~0_combout\,
	datac => \button[2]~input_o\,
	datad => \U_CLK_GEN|count\(8),
	combout => \U_CLK_GEN|temp_out~0_combout\);

-- Location: FF_X19_Y27_N3
\U_CLK_GEN|temp_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CD|clk_hz~clkctrl_outclk\,
	d => \U_CLK_GEN|temp_out~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|temp_out~q\);

-- Location: CLKCTRL_G14
\U_CLK_GEN|temp_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_CLK_GEN|temp_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_CLK_GEN|temp_out~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y28_N2
\U_QUIZ|state.STATE0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_QUIZ|state.STATE0~0_combout\ = !\U_QUIZ|state.STATE3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_QUIZ|state.STATE3~q\,
	combout => \U_QUIZ|state.STATE0~0_combout\);

-- Location: FF_X26_Y28_N3
\U_QUIZ|state.STATE0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_QUIZ|state.STATE0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_QUIZ|state.STATE0~q\);

-- Location: LCCOMB_X26_Y28_N18
\U_QUIZ|state.STATE1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_QUIZ|state.STATE1~0_combout\ = !\U_QUIZ|state.STATE0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_QUIZ|state.STATE0~q\,
	combout => \U_QUIZ|state.STATE1~0_combout\);

-- Location: FF_X26_Y28_N19
\U_QUIZ|state.STATE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_QUIZ|state.STATE1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_QUIZ|state.STATE1~q\);

-- Location: LCCOMB_X26_Y28_N6
\U_QUIZ|state.STATE2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_QUIZ|state.STATE2~feeder_combout\ = \U_QUIZ|state.STATE1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_QUIZ|state.STATE1~q\,
	combout => \U_QUIZ|state.STATE2~feeder_combout\);

-- Location: FF_X26_Y28_N7
\U_QUIZ|state.STATE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_QUIZ|state.STATE2~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_QUIZ|state.STATE2~q\);

-- Location: LCCOMB_X26_Y28_N0
\U_QUIZ|state.STATE3~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_QUIZ|state.STATE3~feeder_combout\ = \U_QUIZ|state.STATE2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_QUIZ|state.STATE2~q\,
	combout => \U_QUIZ|state.STATE3~feeder_combout\);

-- Location: FF_X26_Y28_N1
\U_QUIZ|state.STATE3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_QUIZ|state.STATE3~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_QUIZ|state.STATE3~q\);

-- Location: LCCOMB_X26_Y28_N4
\U_LED1|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux5~0_combout\ = (\U_QUIZ|state.STATE3~q\) # (\U_QUIZ|state.STATE2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_QUIZ|state.STATE3~q\,
	datad => \U_QUIZ|state.STATE2~q\,
	combout => \U_LED1|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y28_N12
\U_LED1|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED1|Mux4~0_combout\ = (\U_QUIZ|state.STATE1~q\) # (\U_QUIZ|state.STATE3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_QUIZ|state.STATE1~q\,
	datac => \U_QUIZ|state.STATE3~q\,
	combout => \U_LED1|Mux4~0_combout\);

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

-- Location: LCCOMB_X30_Y26_N12
\U_COUNTER|count~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_COUNTER|count~3_combout\ = (\button[0]~input_o\ & (!\U_COUNTER|count\(0))) # (!\button[0]~input_o\ & ((\switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button[0]~input_o\,
	datac => \U_COUNTER|count\(0),
	datad => \switch[6]~input_o\,
	combout => \U_COUNTER|count~3_combout\);

-- Location: FF_X30_Y26_N13
\U_COUNTER|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_COUNTER|count~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|count\(0));

-- Location: LCCOMB_X30_Y26_N16
\U_COUNTER|count[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_COUNTER|count[1]~5_cout\ = CARRY(\U_COUNTER|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|count\(0),
	datad => VCC,
	cout => \U_COUNTER|count[1]~5_cout\);

-- Location: LCCOMB_X30_Y26_N18
\U_COUNTER|count[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_COUNTER|count[1]~6_combout\ = (\button[1]~input_o\ & ((\U_COUNTER|count\(1) & (\U_COUNTER|count[1]~5_cout\ & VCC)) # (!\U_COUNTER|count\(1) & (!\U_COUNTER|count[1]~5_cout\)))) # (!\button[1]~input_o\ & ((\U_COUNTER|count\(1) & 
-- (!\U_COUNTER|count[1]~5_cout\)) # (!\U_COUNTER|count\(1) & ((\U_COUNTER|count[1]~5_cout\) # (GND)))))
-- \U_COUNTER|count[1]~7\ = CARRY((\button[1]~input_o\ & (!\U_COUNTER|count\(1) & !\U_COUNTER|count[1]~5_cout\)) # (!\button[1]~input_o\ & ((!\U_COUNTER|count[1]~5_cout\) # (!\U_COUNTER|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_COUNTER|count\(1),
	datad => VCC,
	cin => \U_COUNTER|count[1]~5_cout\,
	combout => \U_COUNTER|count[1]~6_combout\,
	cout => \U_COUNTER|count[1]~7\);

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

-- Location: FF_X30_Y26_N19
\U_COUNTER|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_COUNTER|count[1]~6_combout\,
	asdata => \switch[7]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|count\(1));

-- Location: LCCOMB_X30_Y26_N20
\U_COUNTER|count[2]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_COUNTER|count[2]~8_combout\ = ((\button[1]~input_o\ $ (\U_COUNTER|count\(2) $ (!\U_COUNTER|count[1]~7\)))) # (GND)
-- \U_COUNTER|count[2]~9\ = CARRY((\button[1]~input_o\ & ((\U_COUNTER|count\(2)) # (!\U_COUNTER|count[1]~7\))) # (!\button[1]~input_o\ & (\U_COUNTER|count\(2) & !\U_COUNTER|count[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_COUNTER|count\(2),
	datad => VCC,
	cin => \U_COUNTER|count[1]~7\,
	combout => \U_COUNTER|count[2]~8_combout\,
	cout => \U_COUNTER|count[2]~9\);

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

-- Location: FF_X30_Y26_N21
\U_COUNTER|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_COUNTER|count[2]~8_combout\,
	asdata => \switch[8]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|count\(2));

-- Location: LCCOMB_X30_Y26_N22
\U_COUNTER|count[3]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_COUNTER|count[3]~10_combout\ = \U_COUNTER|count\(3) $ (\button[1]~input_o\ $ (\U_COUNTER|count[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|count\(3),
	datab => \button[1]~input_o\,
	cin => \U_COUNTER|count[2]~9\,
	combout => \U_COUNTER|count[3]~10_combout\);

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

-- Location: FF_X30_Y26_N23
\U_COUNTER|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_COUNTER|count[3]~10_combout\,
	asdata => \switch[9]~input_o\,
	clrn => \ALT_INV_rst~input_o\,
	sload => \ALT_INV_button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|count\(3));

-- Location: LCCOMB_X30_Y26_N14
\U_LED2|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux6~0_combout\ = (\U_COUNTER|count\(0) & ((\U_COUNTER|count\(3)) # (\U_COUNTER|count\(1) $ (\U_COUNTER|count\(2))))) # (!\U_COUNTER|count\(0) & ((\U_COUNTER|count\(1)) # (\U_COUNTER|count\(3) $ (\U_COUNTER|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|count\(1),
	datab => \U_COUNTER|count\(0),
	datac => \U_COUNTER|count\(3),
	datad => \U_COUNTER|count\(2),
	combout => \U_LED2|Mux6~0_combout\);

-- Location: LCCOMB_X30_Y26_N0
\U_LED2|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux5~0_combout\ = (\U_COUNTER|count\(1) & (!\U_COUNTER|count\(3) & ((\U_COUNTER|count\(0)) # (!\U_COUNTER|count\(2))))) # (!\U_COUNTER|count\(1) & (\U_COUNTER|count\(0) & (\U_COUNTER|count\(3) $ (!\U_COUNTER|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|count\(1),
	datab => \U_COUNTER|count\(0),
	datac => \U_COUNTER|count\(3),
	datad => \U_COUNTER|count\(2),
	combout => \U_LED2|Mux5~0_combout\);

-- Location: LCCOMB_X30_Y26_N2
\U_LED2|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux4~0_combout\ = (\U_COUNTER|count\(1) & (\U_COUNTER|count\(0) & (!\U_COUNTER|count\(3)))) # (!\U_COUNTER|count\(1) & ((\U_COUNTER|count\(2) & ((!\U_COUNTER|count\(3)))) # (!\U_COUNTER|count\(2) & (\U_COUNTER|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|count\(1),
	datab => \U_COUNTER|count\(0),
	datac => \U_COUNTER|count\(3),
	datad => \U_COUNTER|count\(2),
	combout => \U_LED2|Mux4~0_combout\);

-- Location: LCCOMB_X30_Y26_N8
\U_LED2|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux3~0_combout\ = (\U_COUNTER|count\(0) & (\U_COUNTER|count\(1) $ (((!\U_COUNTER|count\(2)))))) # (!\U_COUNTER|count\(0) & ((\U_COUNTER|count\(1) & (\U_COUNTER|count\(3) & !\U_COUNTER|count\(2))) # (!\U_COUNTER|count\(1) & (!\U_COUNTER|count\(3) & 
-- \U_COUNTER|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|count\(1),
	datab => \U_COUNTER|count\(0),
	datac => \U_COUNTER|count\(3),
	datad => \U_COUNTER|count\(2),
	combout => \U_LED2|Mux3~0_combout\);

-- Location: LCCOMB_X30_Y26_N6
\U_LED2|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux2~0_combout\ = (\U_COUNTER|count\(3) & (\U_COUNTER|count\(2) & ((\U_COUNTER|count\(1)) # (!\U_COUNTER|count\(0))))) # (!\U_COUNTER|count\(3) & (\U_COUNTER|count\(1) & (!\U_COUNTER|count\(0) & !\U_COUNTER|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|count\(1),
	datab => \U_COUNTER|count\(0),
	datac => \U_COUNTER|count\(3),
	datad => \U_COUNTER|count\(2),
	combout => \U_LED2|Mux2~0_combout\);

-- Location: LCCOMB_X30_Y26_N24
\U_LED2|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux1~0_combout\ = (\U_COUNTER|count\(1) & ((\U_COUNTER|count\(0) & (\U_COUNTER|count\(3))) # (!\U_COUNTER|count\(0) & ((\U_COUNTER|count\(2)))))) # (!\U_COUNTER|count\(1) & (\U_COUNTER|count\(2) & (\U_COUNTER|count\(0) $ (\U_COUNTER|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|count\(1),
	datab => \U_COUNTER|count\(0),
	datac => \U_COUNTER|count\(3),
	datad => \U_COUNTER|count\(2),
	combout => \U_LED2|Mux1~0_combout\);

-- Location: LCCOMB_X30_Y26_N26
\U_LED2|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED2|Mux0~0_combout\ = (\U_COUNTER|count\(3) & (\U_COUNTER|count\(0) & (\U_COUNTER|count\(1) $ (\U_COUNTER|count\(2))))) # (!\U_COUNTER|count\(3) & (!\U_COUNTER|count\(1) & (\U_COUNTER|count\(0) $ (\U_COUNTER|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|count\(1),
	datab => \U_COUNTER|count\(0),
	datac => \U_COUNTER|count\(3),
	datad => \U_COUNTER|count\(2),
	combout => \U_LED2|Mux0~0_combout\);

-- Location: FF_X35_Y28_N21
\U_GRAY|state.STATE3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE1~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE3~q\);

-- Location: FF_X35_Y28_N25
\U_GRAY|state.STATE2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE3~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE2~q\);

-- Location: LCCOMB_X35_Y28_N8
\U_GRAY|state.STATE6~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|state.STATE6~feeder_combout\ = \U_GRAY|state.STATE2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|state.STATE2~q\,
	combout => \U_GRAY|state.STATE6~feeder_combout\);

-- Location: FF_X35_Y28_N9
\U_GRAY|state.STATE6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_GRAY|state.STATE6~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE6~q\);

-- Location: FF_X35_Y28_N31
\U_GRAY|state.STATE7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE6~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE7~q\);

-- Location: FF_X35_Y28_N17
\U_GRAY|state.STATE5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE7~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE5~q\);

-- Location: LCCOMB_X35_Y28_N12
\U_GRAY|state.STATE4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|state.STATE4~feeder_combout\ = \U_GRAY|state.STATE5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|state.STATE5~q\,
	combout => \U_GRAY|state.STATE4~feeder_combout\);

-- Location: FF_X35_Y28_N13
\U_GRAY|state.STATE4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_GRAY|state.STATE4~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE4~q\);

-- Location: FF_X35_Y28_N23
\U_GRAY|state.STATEC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE4~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATEC~q\);

-- Location: FF_X35_Y28_N15
\U_GRAY|state.STATED\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATEC~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATED~q\);

-- Location: FF_X35_Y28_N5
\U_GRAY|state.STATEF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATED~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATEF~q\);

-- Location: FF_X35_Y28_N19
\U_GRAY|state.STATEE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATEF~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATEE~q\);

-- Location: LCCOMB_X35_Y28_N6
\U_GRAY|state.STATEA~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|state.STATEA~feeder_combout\ = \U_GRAY|state.STATEE~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|state.STATEE~q\,
	combout => \U_GRAY|state.STATEA~feeder_combout\);

-- Location: FF_X35_Y28_N7
\U_GRAY|state.STATEA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_GRAY|state.STATEA~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATEA~q\);

-- Location: FF_X35_Y28_N29
\U_GRAY|state.STATEB\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATEA~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATEB~q\);

-- Location: FF_X35_Y28_N3
\U_GRAY|state.STATE9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATEB~q\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE9~q\);

-- Location: LCCOMB_X35_Y28_N10
\U_GRAY|state.STATE8~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|state.STATE8~feeder_combout\ = \U_GRAY|state.STATE9~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|state.STATE9~q\,
	combout => \U_GRAY|state.STATE8~feeder_combout\);

-- Location: FF_X35_Y28_N11
\U_GRAY|state.STATE8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_GRAY|state.STATE8~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE8~q\);

-- Location: LCCOMB_X35_Y28_N0
\U_GRAY|state.STATE0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|state.STATE0~0_combout\ = !\U_GRAY|state.STATE8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|state.STATE8~q\,
	combout => \U_GRAY|state.STATE0~0_combout\);

-- Location: FF_X35_Y28_N1
\U_GRAY|state.STATE0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_GRAY|state.STATE0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE0~q\);

-- Location: LCCOMB_X35_Y28_N26
\U_GRAY|state.STATE1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|state.STATE1~0_combout\ = !\U_GRAY|state.STATE0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|state.STATE0~q\,
	combout => \U_GRAY|state.STATE1~0_combout\);

-- Location: FF_X35_Y28_N27
\U_GRAY|state.STATE1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|temp_out~clkctrl_outclk\,
	d => \U_GRAY|state.STATE1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE1~q\);

-- Location: LCCOMB_X35_Y28_N20
\U_GRAY|WideOr0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr0~0_combout\ = (!\U_GRAY|state.STATE1~q\ & (!\U_GRAY|state.STATE2~q\ & (!\U_GRAY|state.STATE3~q\ & \U_GRAY|state.STATE0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|state.STATE1~q\,
	datab => \U_GRAY|state.STATE2~q\,
	datac => \U_GRAY|state.STATE3~q\,
	datad => \U_GRAY|state.STATE0~q\,
	combout => \U_GRAY|WideOr0~0_combout\);

-- Location: LCCOMB_X35_Y28_N30
\U_GRAY|WideOr0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr0~1_combout\ = (\U_GRAY|state.STATE6~q\) # ((\U_GRAY|state.STATE4~q\) # ((\U_GRAY|state.STATE7~q\) # (\U_GRAY|state.STATE5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|state.STATE6~q\,
	datab => \U_GRAY|state.STATE4~q\,
	datac => \U_GRAY|state.STATE7~q\,
	datad => \U_GRAY|state.STATE5~q\,
	combout => \U_GRAY|WideOr0~1_combout\);

-- Location: LCCOMB_X35_Y28_N24
\U_GRAY|WideOr0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr0~combout\ = (\U_GRAY|WideOr0~1_combout\) # (!\U_GRAY|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GRAY|WideOr0~0_combout\,
	datad => \U_GRAY|WideOr0~1_combout\,
	combout => \U_GRAY|WideOr0~combout\);

-- Location: LCCOMB_X35_Y28_N14
\U_GRAY|WideOr2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr2~1_combout\ = (\U_GRAY|state.STATE1~q\) # ((\U_GRAY|state.STATE9~q\) # ((\U_GRAY|state.STATED~q\) # (\U_GRAY|state.STATE5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|state.STATE1~q\,
	datab => \U_GRAY|state.STATE9~q\,
	datac => \U_GRAY|state.STATED~q\,
	datad => \U_GRAY|state.STATE5~q\,
	combout => \U_GRAY|WideOr2~1_combout\);

-- Location: LCCOMB_X35_Y28_N22
\U_GRAY|WideOr2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr2~0_combout\ = (!\U_GRAY|state.STATE8~q\ & (!\U_GRAY|state.STATE4~q\ & (!\U_GRAY|state.STATEC~q\ & \U_GRAY|state.STATE0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|state.STATE8~q\,
	datab => \U_GRAY|state.STATE4~q\,
	datac => \U_GRAY|state.STATEC~q\,
	datad => \U_GRAY|state.STATE0~q\,
	combout => \U_GRAY|WideOr2~0_combout\);

-- Location: LCCOMB_X35_Y28_N4
\U_GRAY|WideOr2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr2~combout\ = (\U_GRAY|WideOr2~1_combout\) # (!\U_GRAY|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr2~1_combout\,
	datad => \U_GRAY|WideOr2~0_combout\,
	combout => \U_GRAY|WideOr2~combout\);

-- Location: LCCOMB_X35_Y28_N28
\U_GRAY|WideOr1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr1~0_combout\ = (\U_GRAY|state.STATE8~q\) # ((\U_GRAY|state.STATEA~q\) # ((\U_GRAY|state.STATEB~q\) # (\U_GRAY|state.STATE9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|state.STATE8~q\,
	datab => \U_GRAY|state.STATEA~q\,
	datac => \U_GRAY|state.STATEB~q\,
	datad => \U_GRAY|state.STATE9~q\,
	combout => \U_GRAY|WideOr1~0_combout\);

-- Location: LCCOMB_X35_Y28_N16
\U_GRAY|WideOr1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr1~combout\ = (\U_GRAY|WideOr1~0_combout\) # (!\U_GRAY|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GRAY|WideOr0~0_combout\,
	datad => \U_GRAY|WideOr1~0_combout\,
	combout => \U_GRAY|WideOr1~combout\);

-- Location: LCCOMB_X35_Y28_N18
\U_GRAY|WideOr3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr3~0_combout\ = (\U_GRAY|state.STATE6~q\) # ((\U_GRAY|state.STATE2~q\) # ((\U_GRAY|state.STATEE~q\) # (\U_GRAY|state.STATEA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|state.STATE6~q\,
	datab => \U_GRAY|state.STATE2~q\,
	datac => \U_GRAY|state.STATEE~q\,
	datad => \U_GRAY|state.STATEA~q\,
	combout => \U_GRAY|WideOr3~0_combout\);

-- Location: LCCOMB_X35_Y28_N2
\U_GRAY|WideOr3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr3~combout\ = (\U_GRAY|WideOr3~0_combout\) # (!\U_GRAY|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr3~0_combout\,
	datad => \U_GRAY|WideOr2~0_combout\,
	combout => \U_GRAY|WideOr3~combout\);

-- Location: LCCOMB_X36_Y28_N12
\U_LED3|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux6~0_combout\ = (\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr2~combout\ & (\U_GRAY|WideOr0~combout\ $ (!\U_GRAY|WideOr1~combout\)))) # (!\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr0~combout\ & (\U_GRAY|WideOr2~combout\ $ 
-- (!\U_GRAY|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr0~combout\,
	datab => \U_GRAY|WideOr2~combout\,
	datac => \U_GRAY|WideOr1~combout\,
	datad => \U_GRAY|WideOr3~combout\,
	combout => \U_LED3|Mux6~0_combout\);

-- Location: LCCOMB_X36_Y28_N2
\U_LED3|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux5~0_combout\ = (\U_GRAY|WideOr2~combout\ & (!\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr0~combout\ $ (!\U_GRAY|WideOr1~combout\)))) # (!\U_GRAY|WideOr2~combout\ & (\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr1~combout\) # 
-- (!\U_GRAY|WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr0~combout\,
	datab => \U_GRAY|WideOr2~combout\,
	datac => \U_GRAY|WideOr1~combout\,
	datad => \U_GRAY|WideOr3~combout\,
	combout => \U_LED3|Mux5~0_combout\);

-- Location: LCCOMB_X36_Y28_N8
\U_LED3|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux4~0_combout\ = (\U_GRAY|WideOr2~combout\ & ((\U_GRAY|WideOr1~combout\ & ((!\U_GRAY|WideOr3~combout\))) # (!\U_GRAY|WideOr1~combout\ & (\U_GRAY|WideOr0~combout\)))) # (!\U_GRAY|WideOr2~combout\ & (\U_GRAY|WideOr0~combout\ & 
-- ((!\U_GRAY|WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr0~combout\,
	datab => \U_GRAY|WideOr2~combout\,
	datac => \U_GRAY|WideOr1~combout\,
	datad => \U_GRAY|WideOr3~combout\,
	combout => \U_LED3|Mux4~0_combout\);

-- Location: LCCOMB_X36_Y28_N22
\U_LED3|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux3~0_combout\ = (\U_GRAY|WideOr3~combout\ & ((\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr1~combout\) # (!\U_GRAY|WideOr2~combout\))) # (!\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr2~combout\) # (!\U_GRAY|WideOr1~combout\))))) # 
-- (!\U_GRAY|WideOr3~combout\ & ((\U_GRAY|WideOr2~combout\ $ (\U_GRAY|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr0~combout\,
	datab => \U_GRAY|WideOr2~combout\,
	datac => \U_GRAY|WideOr1~combout\,
	datad => \U_GRAY|WideOr3~combout\,
	combout => \U_LED3|Mux3~0_combout\);

-- Location: LCCOMB_X36_Y28_N4
\U_LED3|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux2~0_combout\ = (\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr2~combout\) # ((!\U_GRAY|WideOr3~combout\) # (!\U_GRAY|WideOr1~combout\)))) # (!\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr1~combout\) # ((\U_GRAY|WideOr2~combout\ & 
-- !\U_GRAY|WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr0~combout\,
	datab => \U_GRAY|WideOr2~combout\,
	datac => \U_GRAY|WideOr1~combout\,
	datad => \U_GRAY|WideOr3~combout\,
	combout => \U_LED3|Mux2~0_combout\);

-- Location: LCCOMB_X36_Y28_N26
\U_LED3|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux1~0_combout\ = (\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr1~combout\) # (\U_GRAY|WideOr2~combout\ $ (!\U_GRAY|WideOr3~combout\)))) # (!\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr3~combout\ & ((\U_GRAY|WideOr1~combout\))) # 
-- (!\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr0~combout\,
	datab => \U_GRAY|WideOr2~combout\,
	datac => \U_GRAY|WideOr1~combout\,
	datad => \U_GRAY|WideOr3~combout\,
	combout => \U_LED3|Mux1~0_combout\);

-- Location: LCCOMB_X36_Y28_N20
\U_LED3|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \U_LED3|Mux0~0_combout\ = (\U_GRAY|WideOr0~combout\ & (\U_GRAY|WideOr2~combout\ & (\U_GRAY|WideOr1~combout\ $ (\U_GRAY|WideOr3~combout\)))) # (!\U_GRAY|WideOr0~combout\ & (!\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr2~combout\ $ 
-- (\U_GRAY|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr0~combout\,
	datab => \U_GRAY|WideOr2~combout\,
	datac => \U_GRAY|WideOr1~combout\,
	datad => \U_GRAY|WideOr3~combout\,
	combout => \U_LED3|Mux0~0_combout\);

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


