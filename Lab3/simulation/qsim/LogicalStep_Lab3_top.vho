-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "03/11/2022 16:21:17"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab3_top IS
    PORT (
	clkin_50 : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	HVAC_temp : OUT std_logic_vector(3 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab3_top;

ARCHITECTURE structure OF LogicalStep_Lab3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HVAC_temp : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \HVAC_temp[0]~output_o\ : std_logic;
SIGNAL \HVAC_temp[1]~output_o\ : std_logic;
SIGNAL \HVAC_temp[2]~output_o\ : std_logic;
SIGNAL \HVAC_temp[3]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \instmux|hex_out[0]~3_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \instmux|hex_out[1]~2_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \instmux|hex_out[2]~1_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \instmux|hex_out[3]~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \instHVAC|Add1~1_cout\ : std_logic;
SIGNAL \instHVAC|Add1~2_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[1]~0_combout\ : std_logic;
SIGNAL \instCompx4|A_1|AEQB_n~0_combout\ : std_logic;
SIGNAL \instHVAC|Add1~3\ : std_logic;
SIGNAL \instHVAC|Add1~4_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[2]~0_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[2]~q\ : std_logic;
SIGNAL \instHVAC|Add1~5\ : std_logic;
SIGNAL \instHVAC|Add1~6_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[3]~q\ : std_logic;
SIGNAL \instCompx4|AGTB~2_combout\ : std_logic;
SIGNAL \instCompx4|AEQB~0_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[0]~0_combout\ : std_logic;
SIGNAL \instCompx4|ALTB~0_combout\ : std_logic;
SIGNAL \instCompx4|ALTB~1_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[0]~1_combout\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \instEM|blower~1_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[0]~3_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[1]~q\ : std_logic;
SIGNAL \instHVAC|counter~0_combout\ : std_logic;
SIGNAL \instCompx4|AGTB~0_combout\ : std_logic;
SIGNAL \instCompx4|AGTB~1_combout\ : std_logic;
SIGNAL \instHVAC|counter~1_combout\ : std_logic;
SIGNAL \instEM|blower~0_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[0]~2_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[0]~q\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \inst3|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \instCompx4|AGTB~3_combout\ : std_logic;
SIGNAL \instCompx4|ALTB~2_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~0_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~1_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~2_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~3_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~4_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~5_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~6_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~7_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~8_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~9_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~10_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \instEM|ALT_INV_blower~0_combout\ : std_logic;
SIGNAL \instCompx4|ALT_INV_AEQB~0_combout\ : std_logic;
SIGNAL \instHVAC|ALT_INV_counter:cnt[2]~q\ : std_logic;
SIGNAL \instHVAC|ALT_INV_counter:cnt[1]~q\ : std_logic;
SIGNAL \instHVAC|ALT_INV_counter:cnt[0]~q\ : std_logic;
SIGNAL \inst3|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \ALT_INV_pb_n[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[3]~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[2]~2_combout\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_pb_n <= pb_n;
ww_sw <= sw;
HVAC_temp <= ww_HVAC_temp;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst3|ALT_INV_DOUT[0]~0_combout\ <= NOT \inst3|DOUT[0]~0_combout\;
\instEM|ALT_INV_blower~0_combout\ <= NOT \instEM|blower~0_combout\;
\instCompx4|ALT_INV_AEQB~0_combout\ <= NOT \instCompx4|AEQB~0_combout\;
\instHVAC|ALT_INV_counter:cnt[2]~q\ <= NOT \instHVAC|counter:cnt[2]~q\;
\instHVAC|ALT_INV_counter:cnt[1]~q\ <= NOT \instHVAC|counter:cnt[1]~q\;
\instHVAC|ALT_INV_counter:cnt[0]~q\ <= NOT \instHVAC|counter:cnt[0]~q\;
\inst3|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \inst3|clk_proc:COUNT[10]~q\;
\ALT_INV_pb_n[1]~input_o\ <= NOT \pb_n[1]~input_o\;
\ALT_INV_pb_n[0]~input_o\ <= NOT \pb_n[0]~input_o\;
\ALT_INV_pb_n[3]~input_o\ <= NOT \pb_n[3]~input_o\;
\inst3|ALT_INV_DOUT[4]~4_combout\ <= NOT \inst3|DOUT[4]~4_combout\;
\inst3|ALT_INV_DOUT[3]~3_combout\ <= NOT \inst3|DOUT[3]~3_combout\;
\inst3|ALT_INV_DOUT[2]~2_combout\ <= NOT \inst3|DOUT[2]~2_combout\;

\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst3|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

\HVAC_temp[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instHVAC|ALT_INV_counter:cnt[0]~q\,
	devoe => ww_devoe,
	o => \HVAC_temp[0]~output_o\);

\HVAC_temp[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instHVAC|ALT_INV_counter:cnt[1]~q\,
	devoe => ww_devoe,
	o => \HVAC_temp[1]~output_o\);

\HVAC_temp[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instHVAC|ALT_INV_counter:cnt[2]~q\,
	devoe => ww_devoe,
	o => \HVAC_temp[2]~output_o\);

\HVAC_temp[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instHVAC|counter:cnt[3]~q\,
	devoe => ww_devoe,
	o => \HVAC_temp[3]~output_o\);

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instCompx4|AGTB~3_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instCompx4|ALT_INV_AEQB~0_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instCompx4|ALTB~2_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \instEM|ALT_INV_blower~0_combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[1]~input_o\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[0]~input_o\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \insttester|TEST_PASS~10_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb_n[3]~input_o\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

\pb_n[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(3),
	o => \pb_n[3]~input_o\);

\instmux|hex_out[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instmux|hex_out[0]~3_combout\ = (\pb_n[3]~input_o\ & (\sw[0]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[4]~input_o\,
	datad => \pb_n[3]~input_o\,
	combout => \instmux|hex_out[0]~3_combout\);

\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

\instmux|hex_out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instmux|hex_out[1]~2_combout\ = (\pb_n[3]~input_o\ & (\sw[1]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[5]~input_o\,
	datad => \pb_n[3]~input_o\,
	combout => \instmux|hex_out[1]~2_combout\);

\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

\instmux|hex_out[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instmux|hex_out[2]~1_combout\ = (\pb_n[3]~input_o\ & (\sw[2]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[6]~input_o\,
	datad => \pb_n[3]~input_o\,
	combout => \instmux|hex_out[2]~1_combout\);

\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

\instmux|hex_out[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instmux|hex_out[3]~0_combout\ = (\pb_n[3]~input_o\ & (\sw[3]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[7]~input_o\,
	datad => \pb_n[3]~input_o\,
	combout => \instmux|hex_out[3]~0_combout\);

\inst1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\instmux|hex_out[1]~2_combout\ & ((\instmux|hex_out[0]~3_combout\ & ((\instmux|hex_out[3]~0_combout\))) # (!\instmux|hex_out[0]~3_combout\ & (\instmux|hex_out[2]~1_combout\)))) # (!\instmux|hex_out[1]~2_combout\ & 
-- (\instmux|hex_out[2]~1_combout\ & (\instmux|hex_out[0]~3_combout\ $ (\instmux|hex_out[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[0]~3_combout\,
	datab => \instmux|hex_out[1]~2_combout\,
	datac => \instmux|hex_out[2]~1_combout\,
	datad => \instmux|hex_out[3]~0_combout\,
	combout => \inst1|Mux5~0_combout\);

\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

\instHVAC|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|Add1~1_cout\ = CARRY(!\instHVAC|counter:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datad => VCC,
	cout => \instHVAC|Add1~1_cout\);

\instHVAC|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|Add1~2_combout\ = (\instHVAC|counter~1_combout\ & ((\instHVAC|counter:cnt[1]~q\ & ((\instHVAC|Add1~1_cout\) # (GND))) # (!\instHVAC|counter:cnt[1]~q\ & (!\instHVAC|Add1~1_cout\)))) # (!\instHVAC|counter~1_combout\ & ((\instHVAC|counter:cnt[1]~q\ 
-- & (!\instHVAC|Add1~1_cout\)) # (!\instHVAC|counter:cnt[1]~q\ & (\instHVAC|Add1~1_cout\ & VCC))))
-- \instHVAC|Add1~3\ = CARRY((\instHVAC|counter~1_combout\ & ((\instHVAC|counter:cnt[1]~q\) # (!\instHVAC|Add1~1_cout\))) # (!\instHVAC|counter~1_combout\ & (\instHVAC|counter:cnt[1]~q\ & !\instHVAC|Add1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter~1_combout\,
	datab => \instHVAC|counter:cnt[1]~q\,
	datad => VCC,
	cin => \instHVAC|Add1~1_cout\,
	combout => \instHVAC|Add1~2_combout\,
	cout => \instHVAC|Add1~3\);

\instHVAC|counter:cnt[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter:cnt[1]~0_combout\ = !\instHVAC|Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|Add1~2_combout\,
	combout => \instHVAC|counter:cnt[1]~0_combout\);

\instCompx4|A_1|AEQB_n~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|A_1|AEQB_n~0_combout\ = \instHVAC|counter:cnt[1]~q\ $ (((\pb_n[3]~input_o\ & (!\sw[1]~input_o\)) # (!\pb_n[3]~input_o\ & ((!\sw[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[1]~q\,
	datab => \sw[1]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \pb_n[3]~input_o\,
	combout => \instCompx4|A_1|AEQB_n~0_combout\);

\instHVAC|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|Add1~4_combout\ = ((\instHVAC|counter~1_combout\ $ (\instHVAC|counter:cnt[2]~q\ $ (!\instHVAC|Add1~3\)))) # (GND)
-- \instHVAC|Add1~5\ = CARRY((\instHVAC|counter~1_combout\ & (!\instHVAC|counter:cnt[2]~q\ & !\instHVAC|Add1~3\)) # (!\instHVAC|counter~1_combout\ & ((!\instHVAC|Add1~3\) # (!\instHVAC|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter~1_combout\,
	datab => \instHVAC|counter:cnt[2]~q\,
	datad => VCC,
	cin => \instHVAC|Add1~3\,
	combout => \instHVAC|Add1~4_combout\,
	cout => \instHVAC|Add1~5\);

\instHVAC|counter:cnt[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter:cnt[2]~0_combout\ = !\instHVAC|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|Add1~4_combout\,
	combout => \instHVAC|counter:cnt[2]~0_combout\);

\instHVAC|counter:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \instHVAC|counter:cnt[2]~0_combout\,
	ena => \instHVAC|counter:cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|counter:cnt[2]~q\);

\instHVAC|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|Add1~6_combout\ = \instHVAC|counter~1_combout\ $ (\instHVAC|counter:cnt[3]~q\ $ (!\instHVAC|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter~1_combout\,
	datab => \instHVAC|counter:cnt[3]~q\,
	cin => \instHVAC|Add1~5\,
	combout => \instHVAC|Add1~6_combout\);

\instHVAC|counter:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \instHVAC|Add1~6_combout\,
	ena => \instHVAC|counter:cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|counter:cnt[3]~q\);

\instCompx4|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|AGTB~2_combout\ = (\instHVAC|counter:cnt[3]~q\ & (\instmux|hex_out[3]~0_combout\ & (\instHVAC|counter:cnt[2]~q\ $ (\instmux|hex_out[2]~1_combout\)))) # (!\instHVAC|counter:cnt[3]~q\ & (!\instmux|hex_out[3]~0_combout\ & 
-- (\instHVAC|counter:cnt[2]~q\ $ (\instmux|hex_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[3]~q\,
	datab => \instmux|hex_out[3]~0_combout\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \instmux|hex_out[2]~1_combout\,
	combout => \instCompx4|AGTB~2_combout\);

\instCompx4|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|AEQB~0_combout\ = (\instCompx4|A_1|AEQB_n~0_combout\) # ((\instHVAC|counter:cnt[0]~q\ $ (!\instmux|hex_out[0]~3_combout\)) # (!\instCompx4|AGTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instCompx4|A_1|AEQB_n~0_combout\,
	datab => \instHVAC|counter:cnt[0]~q\,
	datac => \instmux|hex_out[0]~3_combout\,
	datad => \instCompx4|AGTB~2_combout\,
	combout => \instCompx4|AEQB~0_combout\);

\instHVAC|counter:cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter:cnt[0]~0_combout\ = (\instHVAC|counter:cnt[3]~q\) # (((!\instHVAC|counter:cnt[2]~q\) # (!\instHVAC|counter:cnt[1]~q\)) # (!\instHVAC|counter:cnt[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[3]~q\,
	datab => \instHVAC|counter:cnt[0]~q\,
	datac => \instHVAC|counter:cnt[1]~q\,
	datad => \instHVAC|counter:cnt[2]~q\,
	combout => \instHVAC|counter:cnt[0]~0_combout\);

\instCompx4|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|ALTB~0_combout\ = (\instHVAC|counter:cnt[3]~q\ & (((!\instHVAC|counter:cnt[2]~q\ & !\instmux|hex_out[2]~1_combout\)) # (!\instmux|hex_out[3]~0_combout\))) # (!\instHVAC|counter:cnt[3]~q\ & (!\instHVAC|counter:cnt[2]~q\ & 
-- (!\instmux|hex_out[2]~1_combout\ & !\instmux|hex_out[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[3]~q\,
	datab => \instHVAC|counter:cnt[2]~q\,
	datac => \instmux|hex_out[2]~1_combout\,
	datad => \instmux|hex_out[3]~0_combout\,
	combout => \instCompx4|ALTB~0_combout\);

\instCompx4|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|ALTB~1_combout\ = (\instHVAC|counter:cnt[1]~q\ & (!\instHVAC|counter:cnt[0]~q\ & (!\instmux|hex_out[0]~3_combout\ & !\instmux|hex_out[1]~2_combout\))) # (!\instHVAC|counter:cnt[1]~q\ & (((!\instHVAC|counter:cnt[0]~q\ & 
-- !\instmux|hex_out[0]~3_combout\)) # (!\instmux|hex_out[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \instmux|hex_out[0]~3_combout\,
	datac => \instHVAC|counter:cnt[1]~q\,
	datad => \instmux|hex_out[1]~2_combout\,
	combout => \instCompx4|ALTB~1_combout\);

\instHVAC|counter:cnt[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter:cnt[0]~1_combout\ = (\instHVAC|counter:cnt[0]~0_combout\ & ((\instCompx4|ALTB~0_combout\) # ((\instCompx4|AGTB~2_combout\ & \instCompx4|ALTB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~0_combout\,
	datab => \instCompx4|ALTB~0_combout\,
	datac => \instCompx4|AGTB~2_combout\,
	datad => \instCompx4|ALTB~1_combout\,
	combout => \instHVAC|counter:cnt[0]~1_combout\);

\pb_n[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(0),
	o => \pb_n[0]~input_o\);

\pb_n[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(1),
	o => \pb_n[1]~input_o\);

\pb_n[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb_n(2),
	o => \pb_n[2]~input_o\);

\instEM|blower~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instEM|blower~1_combout\ = ((!\pb_n[2]~input_o\) # (!\pb_n[1]~input_o\)) # (!\pb_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[0]~input_o\,
	datac => \pb_n[1]~input_o\,
	datad => \pb_n[2]~input_o\,
	combout => \instEM|blower~1_combout\);

\instHVAC|counter:cnt[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter:cnt[0]~3_combout\ = (\instCompx4|AEQB~0_combout\ & (!\instEM|blower~1_combout\ & ((\instHVAC|counter~1_combout\) # (\instHVAC|counter:cnt[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instCompx4|AEQB~0_combout\,
	datab => \instHVAC|counter~1_combout\,
	datac => \instHVAC|counter:cnt[0]~1_combout\,
	datad => \instEM|blower~1_combout\,
	combout => \instHVAC|counter:cnt[0]~3_combout\);

\instHVAC|counter:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \instHVAC|counter:cnt[1]~0_combout\,
	ena => \instHVAC|counter:cnt[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|counter:cnt[1]~q\);

\instHVAC|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter~0_combout\ = (\instHVAC|counter:cnt[0]~q\) # ((\instHVAC|counter:cnt[1]~q\) # ((\instHVAC|counter:cnt[2]~q\) # (!\instHVAC|counter:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \instHVAC|counter:cnt[1]~q\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \instHVAC|counter:cnt[3]~q\,
	combout => \instHVAC|counter~0_combout\);

\instCompx4|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|AGTB~0_combout\ = (\instmux|hex_out[3]~0_combout\ & (((\instHVAC|counter:cnt[2]~q\ & \instmux|hex_out[2]~1_combout\)) # (!\instHVAC|counter:cnt[3]~q\))) # (!\instmux|hex_out[3]~0_combout\ & (\instHVAC|counter:cnt[2]~q\ & 
-- (\instmux|hex_out[2]~1_combout\ & !\instHVAC|counter:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[3]~0_combout\,
	datab => \instHVAC|counter:cnt[2]~q\,
	datac => \instmux|hex_out[2]~1_combout\,
	datad => \instHVAC|counter:cnt[3]~q\,
	combout => \instCompx4|AGTB~0_combout\);

\instCompx4|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|AGTB~1_combout\ = (\instHVAC|counter:cnt[1]~q\ & ((\instmux|hex_out[1]~2_combout\) # ((\instHVAC|counter:cnt[0]~q\ & \instmux|hex_out[0]~3_combout\)))) # (!\instHVAC|counter:cnt[1]~q\ & (\instmux|hex_out[1]~2_combout\ & 
-- (\instHVAC|counter:cnt[0]~q\ & \instmux|hex_out[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[1]~q\,
	datab => \instmux|hex_out[1]~2_combout\,
	datac => \instHVAC|counter:cnt[0]~q\,
	datad => \instmux|hex_out[0]~3_combout\,
	combout => \instCompx4|AGTB~1_combout\);

\instHVAC|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter~1_combout\ = (\instHVAC|counter~0_combout\ & ((\instCompx4|AGTB~0_combout\) # ((\instCompx4|AGTB~1_combout\ & \instCompx4|AGTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter~0_combout\,
	datab => \instCompx4|AGTB~0_combout\,
	datac => \instCompx4|AGTB~1_combout\,
	datad => \instCompx4|AGTB~2_combout\,
	combout => \instHVAC|counter~1_combout\);

\instEM|blower~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instEM|blower~0_combout\ = (((!\pb_n[2]~input_o\) # (!\pb_n[1]~input_o\)) # (!\pb_n[0]~input_o\)) # (!\instCompx4|AEQB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instCompx4|AEQB~0_combout\,
	datab => \pb_n[0]~input_o\,
	datac => \pb_n[1]~input_o\,
	datad => \pb_n[2]~input_o\,
	combout => \instEM|blower~0_combout\);

\instHVAC|counter:cnt[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter:cnt[0]~2_combout\ = \instHVAC|counter:cnt[0]~q\ $ (((!\instEM|blower~0_combout\ & ((\instHVAC|counter~1_combout\) # (\instHVAC|counter:cnt[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter~1_combout\,
	datab => \instHVAC|counter:cnt[0]~1_combout\,
	datac => \instEM|blower~0_combout\,
	datad => \instHVAC|counter:cnt[0]~q\,
	combout => \instHVAC|counter:cnt[0]~2_combout\);

\instHVAC|counter:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \instHVAC|counter:cnt[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|counter:cnt[0]~q\);

\inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\instHVAC|counter:cnt[1]~q\ & (!\instHVAC|counter:cnt[2]~q\ & (\instHVAC|counter:cnt[0]~q\ $ (!\instHVAC|counter:cnt[3]~q\)))) # (!\instHVAC|counter:cnt[1]~q\ & ((\instHVAC|counter:cnt[0]~q\ & (!\instHVAC|counter:cnt[2]~q\)) # 
-- (!\instHVAC|counter:cnt[0]~q\ & ((\instHVAC|counter:cnt[3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \instHVAC|counter:cnt[1]~q\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \instHVAC|counter:cnt[3]~q\,
	combout => \inst2|Mux5~0_combout\);

\inst3|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[0]~0_combout\ = !\inst3|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[0]~q\,
	combout => \inst3|clk_proc:COUNT[0]~0_combout\);

\inst3|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \inst3|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[0]~q\);

\inst3|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[1]~1_combout\ = (\inst3|clk_proc:COUNT[1]~q\ & (\inst3|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\inst3|clk_proc:COUNT[1]~q\ & (\inst3|clk_proc:COUNT[0]~q\ & VCC))
-- \inst3|clk_proc:COUNT[1]~2\ = CARRY((\inst3|clk_proc:COUNT[1]~q\ & \inst3|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[1]~q\,
	datab => \inst3|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \inst3|clk_proc:COUNT[1]~1_combout\,
	cout => \inst3|clk_proc:COUNT[1]~2\);

\inst3|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \inst3|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[1]~q\);

\inst3|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[2]~1_combout\ = (\inst3|clk_proc:COUNT[2]~q\ & (!\inst3|clk_proc:COUNT[1]~2\)) # (!\inst3|clk_proc:COUNT[2]~q\ & ((\inst3|clk_proc:COUNT[1]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[2]~2\ = CARRY((!\inst3|clk_proc:COUNT[1]~2\) # (!\inst3|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[1]~2\,
	combout => \inst3|clk_proc:COUNT[2]~1_combout\,
	cout => \inst3|clk_proc:COUNT[2]~2\);

\inst3|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \inst3|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[2]~q\);

\inst3|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[3]~1_combout\ = (\inst3|clk_proc:COUNT[3]~q\ & (\inst3|clk_proc:COUNT[2]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[3]~q\ & (!\inst3|clk_proc:COUNT[2]~2\ & VCC))
-- \inst3|clk_proc:COUNT[3]~2\ = CARRY((\inst3|clk_proc:COUNT[3]~q\ & !\inst3|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[2]~2\,
	combout => \inst3|clk_proc:COUNT[3]~1_combout\,
	cout => \inst3|clk_proc:COUNT[3]~2\);

\inst3|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \inst3|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[3]~q\);

\inst3|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[4]~1_combout\ = (\inst3|clk_proc:COUNT[4]~q\ & (!\inst3|clk_proc:COUNT[3]~2\)) # (!\inst3|clk_proc:COUNT[4]~q\ & ((\inst3|clk_proc:COUNT[3]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[4]~2\ = CARRY((!\inst3|clk_proc:COUNT[3]~2\) # (!\inst3|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[3]~2\,
	combout => \inst3|clk_proc:COUNT[4]~1_combout\,
	cout => \inst3|clk_proc:COUNT[4]~2\);

\inst3|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \inst3|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[4]~q\);

\inst3|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[5]~1_combout\ = (\inst3|clk_proc:COUNT[5]~q\ & (\inst3|clk_proc:COUNT[4]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[5]~q\ & (!\inst3|clk_proc:COUNT[4]~2\ & VCC))
-- \inst3|clk_proc:COUNT[5]~2\ = CARRY((\inst3|clk_proc:COUNT[5]~q\ & !\inst3|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[4]~2\,
	combout => \inst3|clk_proc:COUNT[5]~1_combout\,
	cout => \inst3|clk_proc:COUNT[5]~2\);

\inst3|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \inst3|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[5]~q\);

\inst3|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[6]~1_combout\ = (\inst3|clk_proc:COUNT[6]~q\ & (!\inst3|clk_proc:COUNT[5]~2\)) # (!\inst3|clk_proc:COUNT[6]~q\ & ((\inst3|clk_proc:COUNT[5]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[6]~2\ = CARRY((!\inst3|clk_proc:COUNT[5]~2\) # (!\inst3|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[5]~2\,
	combout => \inst3|clk_proc:COUNT[6]~1_combout\,
	cout => \inst3|clk_proc:COUNT[6]~2\);

\inst3|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \inst3|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[6]~q\);

\inst3|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[7]~1_combout\ = (\inst3|clk_proc:COUNT[7]~q\ & (\inst3|clk_proc:COUNT[6]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[7]~q\ & (!\inst3|clk_proc:COUNT[6]~2\ & VCC))
-- \inst3|clk_proc:COUNT[7]~2\ = CARRY((\inst3|clk_proc:COUNT[7]~q\ & !\inst3|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[6]~2\,
	combout => \inst3|clk_proc:COUNT[7]~1_combout\,
	cout => \inst3|clk_proc:COUNT[7]~2\);

\inst3|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \inst3|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[7]~q\);

\inst3|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[8]~1_combout\ = (\inst3|clk_proc:COUNT[8]~q\ & (!\inst3|clk_proc:COUNT[7]~2\)) # (!\inst3|clk_proc:COUNT[8]~q\ & ((\inst3|clk_proc:COUNT[7]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[8]~2\ = CARRY((!\inst3|clk_proc:COUNT[7]~2\) # (!\inst3|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[7]~2\,
	combout => \inst3|clk_proc:COUNT[8]~1_combout\,
	cout => \inst3|clk_proc:COUNT[8]~2\);

\inst3|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \inst3|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[8]~q\);

\inst3|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[9]~1_combout\ = (\inst3|clk_proc:COUNT[9]~q\ & (\inst3|clk_proc:COUNT[8]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[9]~q\ & (!\inst3|clk_proc:COUNT[8]~2\ & VCC))
-- \inst3|clk_proc:COUNT[9]~2\ = CARRY((\inst3|clk_proc:COUNT[9]~q\ & !\inst3|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[8]~2\,
	combout => \inst3|clk_proc:COUNT[9]~1_combout\,
	cout => \inst3|clk_proc:COUNT[9]~2\);

\inst3|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \inst3|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[9]~q\);

\inst3|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~1_combout\ = \inst3|clk_proc:COUNT[10]~q\ $ (\inst3|clk_proc:COUNT[9]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[10]~q\,
	cin => \inst3|clk_proc:COUNT[9]~2\,
	combout => \inst3|clk_proc:COUNT[10]~1_combout\);

\inst3|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~input_o\,
	d => \inst3|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[10]~q\);

\inst3|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[1]~0_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (!\inst1|Mux5~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((!\inst2|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux5~0_combout\,
	datab => \inst2|Mux5~0_combout\,
	datad => \inst3|clk_proc:COUNT[10]~q\,
	combout => \inst3|DOUT_TEMP[1]~0_combout\);

\inst1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\instmux|hex_out[0]~3_combout\ & (\instmux|hex_out[3]~0_combout\ $ (((\instmux|hex_out[1]~2_combout\) # (!\instmux|hex_out[2]~1_combout\))))) # (!\instmux|hex_out[0]~3_combout\ & (\instmux|hex_out[1]~2_combout\ & 
-- (!\instmux|hex_out[2]~1_combout\ & !\instmux|hex_out[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[0]~3_combout\,
	datab => \instmux|hex_out[1]~2_combout\,
	datac => \instmux|hex_out[2]~1_combout\,
	datad => \instmux|hex_out[3]~0_combout\,
	combout => \inst1|Mux1~0_combout\);

\inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\instHVAC|counter:cnt[0]~q\ & (!\instHVAC|counter:cnt[1]~q\ & (\instHVAC|counter:cnt[2]~q\ & !\instHVAC|counter:cnt[3]~q\))) # (!\instHVAC|counter:cnt[0]~q\ & (\instHVAC|counter:cnt[3]~q\ $ (((\instHVAC|counter:cnt[2]~q\) # 
-- (!\instHVAC|counter:cnt[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \instHVAC|counter:cnt[1]~q\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \instHVAC|counter:cnt[3]~q\,
	combout => \inst2|Mux1~0_combout\);

\inst3|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[5]~1_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (!\inst1|Mux1~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((!\inst2|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux1~0_combout\,
	datab => \inst2|Mux1~0_combout\,
	datad => \inst3|clk_proc:COUNT[10]~q\,
	combout => \inst3|DOUT_TEMP[5]~1_combout\);

\inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\instmux|hex_out[0]~3_combout\ & ((\instmux|hex_out[3]~0_combout\) # (\instmux|hex_out[1]~2_combout\ $ (\instmux|hex_out[2]~1_combout\)))) # (!\instmux|hex_out[0]~3_combout\ & ((\instmux|hex_out[1]~2_combout\) # 
-- (\instmux|hex_out[2]~1_combout\ $ (\instmux|hex_out[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[0]~3_combout\,
	datab => \instmux|hex_out[1]~2_combout\,
	datac => \instmux|hex_out[2]~1_combout\,
	datad => \instmux|hex_out[3]~0_combout\,
	combout => \inst1|Mux0~0_combout\);

\inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\instHVAC|counter:cnt[0]~q\ & ((\instHVAC|counter:cnt[2]~q\ $ (!\instHVAC|counter:cnt[3]~q\)) # (!\instHVAC|counter:cnt[1]~q\))) # (!\instHVAC|counter:cnt[0]~q\ & ((\instHVAC|counter:cnt[3]~q\) # (\instHVAC|counter:cnt[1]~q\ $ 
-- (\instHVAC|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \instHVAC|counter:cnt[1]~q\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \instHVAC|counter:cnt[3]~q\,
	combout => \inst2|Mux0~0_combout\);

\inst3|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[6]~2_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst1|Mux0~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst2|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux0~0_combout\,
	datab => \inst2|Mux0~0_combout\,
	datad => \inst3|clk_proc:COUNT[10]~q\,
	combout => \inst3|DOUT_TEMP[6]~2_combout\);

\instCompx4|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|AGTB~3_combout\ = (\instCompx4|AGTB~0_combout\) # ((\instCompx4|AGTB~1_combout\ & \instCompx4|AGTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instCompx4|AGTB~0_combout\,
	datab => \instCompx4|AGTB~1_combout\,
	datac => \instCompx4|AGTB~2_combout\,
	combout => \instCompx4|AGTB~3_combout\);

\instCompx4|ALTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|ALTB~2_combout\ = (\instCompx4|ALTB~0_combout\) # ((\instCompx4|AGTB~2_combout\ & \instCompx4|ALTB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instCompx4|ALTB~0_combout\,
	datab => \instCompx4|AGTB~2_combout\,
	datac => \instCompx4|ALTB~1_combout\,
	combout => \instCompx4|ALTB~2_combout\);

\insttester|TEST_PASS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~0_combout\ = (\instHVAC|counter:cnt[1]~q\ & ((\instHVAC|counter:cnt[0]~q\) # ((\sw[0]~input_o\) # (\sw[1]~input_o\)))) # (!\instHVAC|counter:cnt[1]~q\ & (\sw[1]~input_o\ & ((\instHVAC|counter:cnt[0]~q\) # (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \sw[0]~input_o\,
	datac => \instHVAC|counter:cnt[1]~q\,
	datad => \sw[1]~input_o\,
	combout => \insttester|TEST_PASS~0_combout\);

\insttester|TEST_PASS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~1_combout\ = (\instHVAC|counter:cnt[2]~q\ & ((\sw[2]~input_o\) # (\insttester|TEST_PASS~0_combout\))) # (!\instHVAC|counter:cnt[2]~q\ & (\sw[2]~input_o\ & \insttester|TEST_PASS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[2]~q\,
	datab => \sw[2]~input_o\,
	datac => \insttester|TEST_PASS~0_combout\,
	combout => \insttester|TEST_PASS~1_combout\);

\insttester|TEST_PASS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~2_combout\ = (\instCompx4|ALTB~2_combout\ & ((\instHVAC|counter:cnt[3]~q\ & ((!\insttester|TEST_PASS~1_combout\) # (!\sw[3]~input_o\))) # (!\instHVAC|counter:cnt[3]~q\ & (!\sw[3]~input_o\ & !\insttester|TEST_PASS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[3]~q\,
	datab => \sw[3]~input_o\,
	datac => \instCompx4|ALTB~2_combout\,
	datad => \insttester|TEST_PASS~1_combout\,
	combout => \insttester|TEST_PASS~2_combout\);

\insttester|TEST_PASS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~3_combout\ = (\instHVAC|counter:cnt[1]~q\ & ((\sw[1]~input_o\) # ((\instHVAC|counter:cnt[0]~q\ & \sw[0]~input_o\)))) # (!\instHVAC|counter:cnt[1]~q\ & (\sw[1]~input_o\ & (\instHVAC|counter:cnt[0]~q\ & \sw[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[1]~q\,
	datab => \sw[1]~input_o\,
	datac => \instHVAC|counter:cnt[0]~q\,
	datad => \sw[0]~input_o\,
	combout => \insttester|TEST_PASS~3_combout\);

\insttester|TEST_PASS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~4_combout\ = (\instHVAC|counter:cnt[2]~q\ & ((\sw[2]~input_o\) # (\insttester|TEST_PASS~3_combout\))) # (!\instHVAC|counter:cnt[2]~q\ & (\sw[2]~input_o\ & \insttester|TEST_PASS~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[2]~q\,
	datab => \sw[2]~input_o\,
	datac => \insttester|TEST_PASS~3_combout\,
	combout => \insttester|TEST_PASS~4_combout\);

\insttester|TEST_PASS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~5_combout\ = (\sw[3]~input_o\ & ((\insttester|TEST_PASS~4_combout\) # (!\instHVAC|counter:cnt[3]~q\))) # (!\sw[3]~input_o\ & (!\instHVAC|counter:cnt[3]~q\ & \insttester|TEST_PASS~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \instHVAC|counter:cnt[3]~q\,
	datac => \insttester|TEST_PASS~4_combout\,
	combout => \insttester|TEST_PASS~5_combout\);

\insttester|TEST_PASS~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~6_combout\ = (\insttester|TEST_PASS~5_combout\ & ((\instCompx4|AGTB~0_combout\) # ((\instCompx4|AGTB~1_combout\ & \instCompx4|AGTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insttester|TEST_PASS~5_combout\,
	datab => \instCompx4|AGTB~0_combout\,
	datac => \instCompx4|AGTB~1_combout\,
	datad => \instCompx4|AGTB~2_combout\,
	combout => \insttester|TEST_PASS~6_combout\);

\insttester|TEST_PASS~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~7_combout\ = (\instHVAC|counter:cnt[3]~q\ & (\sw[3]~input_o\ & (\instHVAC|counter:cnt[2]~q\ $ (\sw[2]~input_o\)))) # (!\instHVAC|counter:cnt[3]~q\ & (!\sw[3]~input_o\ & (\instHVAC|counter:cnt[2]~q\ $ (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[3]~q\,
	datab => \sw[3]~input_o\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \sw[2]~input_o\,
	combout => \insttester|TEST_PASS~7_combout\);

\insttester|TEST_PASS~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~8_combout\ = (\instHVAC|counter:cnt[0]~q\ & (!\sw[0]~input_o\ & (\instHVAC|counter:cnt[1]~q\ $ (\sw[1]~input_o\)))) # (!\instHVAC|counter:cnt[0]~q\ & (\sw[0]~input_o\ & (\instHVAC|counter:cnt[1]~q\ $ (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \sw[0]~input_o\,
	datac => \instHVAC|counter:cnt[1]~q\,
	datad => \sw[1]~input_o\,
	combout => \insttester|TEST_PASS~8_combout\);

\insttester|TEST_PASS~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~9_combout\ = (\insttester|TEST_PASS~6_combout\) # ((\insttester|TEST_PASS~7_combout\ & (\insttester|TEST_PASS~8_combout\ & !\instCompx4|AEQB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insttester|TEST_PASS~6_combout\,
	datab => \insttester|TEST_PASS~7_combout\,
	datac => \insttester|TEST_PASS~8_combout\,
	datad => \instCompx4|AEQB~0_combout\,
	combout => \insttester|TEST_PASS~9_combout\);

\insttester|TEST_PASS~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~10_combout\ = (!\pb_n[2]~input_o\ & ((\insttester|TEST_PASS~2_combout\) # (\insttester|TEST_PASS~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insttester|TEST_PASS~2_combout\,
	datab => \insttester|TEST_PASS~9_combout\,
	datad => \pb_n[2]~input_o\,
	combout => \insttester|TEST_PASS~10_combout\);

\inst1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\instmux|hex_out[2]~1_combout\ & (!\instmux|hex_out[1]~2_combout\ & (\instmux|hex_out[0]~3_combout\ $ (!\instmux|hex_out[3]~0_combout\)))) # (!\instmux|hex_out[2]~1_combout\ & (\instmux|hex_out[0]~3_combout\ & 
-- (\instmux|hex_out[1]~2_combout\ $ (!\instmux|hex_out[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[0]~3_combout\,
	datab => \instmux|hex_out[1]~2_combout\,
	datac => \instmux|hex_out[2]~1_combout\,
	datad => \instmux|hex_out[3]~0_combout\,
	combout => \inst1|Mux6~0_combout\);

\inst2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\instHVAC|counter:cnt[2]~q\ & (!\instHVAC|counter:cnt[0]~q\ & (\instHVAC|counter:cnt[1]~q\ $ (\instHVAC|counter:cnt[3]~q\)))) # (!\instHVAC|counter:cnt[2]~q\ & (\instHVAC|counter:cnt[1]~q\ & (\instHVAC|counter:cnt[0]~q\ $ 
-- (\instHVAC|counter:cnt[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \instHVAC|counter:cnt[1]~q\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \instHVAC|counter:cnt[3]~q\,
	combout => \inst2|Mux6~0_combout\);

\inst3|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[0]~0_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst1|Mux6~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst2|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux6~0_combout\,
	datab => \inst2|Mux6~0_combout\,
	datad => \inst3|clk_proc:COUNT[10]~q\,
	combout => \inst3|DOUT[0]~0_combout\);

\inst1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\instmux|hex_out[2]~1_combout\ & (\instmux|hex_out[3]~0_combout\ & ((\instmux|hex_out[1]~2_combout\) # (!\instmux|hex_out[0]~3_combout\)))) # (!\instmux|hex_out[2]~1_combout\ & (!\instmux|hex_out[0]~3_combout\ & 
-- (\instmux|hex_out[1]~2_combout\ & !\instmux|hex_out[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[0]~3_combout\,
	datab => \instmux|hex_out[1]~2_combout\,
	datac => \instmux|hex_out[2]~1_combout\,
	datad => \instmux|hex_out[3]~0_combout\,
	combout => \inst1|Mux4~0_combout\);

\inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\instHVAC|counter:cnt[2]~q\ & (\instHVAC|counter:cnt[0]~q\ & (!\instHVAC|counter:cnt[1]~q\ & !\instHVAC|counter:cnt[3]~q\))) # (!\instHVAC|counter:cnt[2]~q\ & (\instHVAC|counter:cnt[3]~q\ & ((\instHVAC|counter:cnt[0]~q\) # 
-- (!\instHVAC|counter:cnt[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \instHVAC|counter:cnt[1]~q\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \instHVAC|counter:cnt[3]~q\,
	combout => \inst2|Mux4~0_combout\);

\inst3|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[2]~2_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst1|Mux4~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst2|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux4~0_combout\,
	datab => \inst2|Mux4~0_combout\,
	datad => \inst3|clk_proc:COUNT[10]~q\,
	combout => \inst3|DOUT[2]~2_combout\);

\inst1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\instmux|hex_out[1]~2_combout\ & ((\instmux|hex_out[0]~3_combout\ & (\instmux|hex_out[2]~1_combout\)) # (!\instmux|hex_out[0]~3_combout\ & (!\instmux|hex_out[2]~1_combout\ & \instmux|hex_out[3]~0_combout\)))) # 
-- (!\instmux|hex_out[1]~2_combout\ & (!\instmux|hex_out[3]~0_combout\ & (\instmux|hex_out[0]~3_combout\ $ (\instmux|hex_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[0]~3_combout\,
	datab => \instmux|hex_out[1]~2_combout\,
	datac => \instmux|hex_out[2]~1_combout\,
	datad => \instmux|hex_out[3]~0_combout\,
	combout => \inst1|Mux3~0_combout\);

\inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\instHVAC|counter:cnt[1]~q\ & (!\instHVAC|counter:cnt[3]~q\ & (\instHVAC|counter:cnt[0]~q\ $ (\instHVAC|counter:cnt[2]~q\)))) # (!\instHVAC|counter:cnt[1]~q\ & ((\instHVAC|counter:cnt[0]~q\ & (\instHVAC|counter:cnt[2]~q\ & 
-- \instHVAC|counter:cnt[3]~q\)) # (!\instHVAC|counter:cnt[0]~q\ & (!\instHVAC|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \instHVAC|counter:cnt[1]~q\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \instHVAC|counter:cnt[3]~q\,
	combout => \inst2|Mux3~0_combout\);

\inst3|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[3]~3_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst1|Mux3~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst2|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux3~0_combout\,
	datab => \inst2|Mux3~0_combout\,
	datad => \inst3|clk_proc:COUNT[10]~q\,
	combout => \inst3|DOUT[3]~3_combout\);

\inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\instmux|hex_out[1]~2_combout\ & (\instmux|hex_out[0]~3_combout\ & ((!\instmux|hex_out[3]~0_combout\)))) # (!\instmux|hex_out[1]~2_combout\ & ((\instmux|hex_out[2]~1_combout\ & ((!\instmux|hex_out[3]~0_combout\))) # 
-- (!\instmux|hex_out[2]~1_combout\ & (\instmux|hex_out[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[0]~3_combout\,
	datab => \instmux|hex_out[1]~2_combout\,
	datac => \instmux|hex_out[2]~1_combout\,
	datad => \instmux|hex_out[3]~0_combout\,
	combout => \inst1|Mux2~0_combout\);

\inst2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\instHVAC|counter:cnt[1]~q\ & ((\instHVAC|counter:cnt[2]~q\ & (!\instHVAC|counter:cnt[0]~q\)) # (!\instHVAC|counter:cnt[2]~q\ & ((!\instHVAC|counter:cnt[3]~q\))))) # (!\instHVAC|counter:cnt[1]~q\ & (!\instHVAC|counter:cnt[0]~q\ & 
-- ((!\instHVAC|counter:cnt[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \instHVAC|counter:cnt[1]~q\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \instHVAC|counter:cnt[3]~q\,
	combout => \inst2|Mux2~0_combout\);

\inst3|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[4]~4_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst1|Mux2~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst2|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux2~0_combout\,
	datab => \inst2|Mux2~0_combout\,
	datad => \inst3|clk_proc:COUNT[10]~q\,
	combout => \inst3|DOUT[4]~4_combout\);

ww_HVAC_temp(0) <= \HVAC_temp[0]~output_o\;

ww_HVAC_temp(1) <= \HVAC_temp[1]~output_o\;

ww_HVAC_temp(2) <= \HVAC_temp[2]~output_o\;

ww_HVAC_temp(3) <= \HVAC_temp[3]~output_o\;

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


