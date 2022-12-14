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

-- DATE "02/11/2022 15:38:52"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab2_top IS
    PORT (
	pb : IN std_logic_vector(6 DOWNTO 0);
	sw : IN std_logic_vector(15 DOWNTO 0);
	leds : OUT std_logic_vector(5 DOWNTO 0)
	);
END LogicalStep_Lab2_top;

ARCHITECTURE structure OF LogicalStep_Lab2_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_pb : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(5 DOWNTO 0);
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \sw[8]~input_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \mux2|Mux3~0_combout\ : std_logic;
SIGNAL \sw[12]~input_o\ : std_logic;
SIGNAL \mux2|Mux3~1_combout\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \mux1|Mux3~0_combout\ : std_logic;
SIGNAL \mux1|Mux3~1_combout\ : std_logic;
SIGNAL \pb[4]~input_o\ : std_logic;
SIGNAL \pb[5]~input_o\ : std_logic;
SIGNAL \inst3|Mux3~9_combout\ : std_logic;
SIGNAL \pb[6]~input_o\ : std_logic;
SIGNAL \inst3|Mux3~10_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[9]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \mux1|Mux2~0_combout\ : std_logic;
SIGNAL \sw[13]~input_o\ : std_logic;
SIGNAL \mux1|Mux2~1_combout\ : std_logic;
SIGNAL \mux2|Mux2~0_combout\ : std_logic;
SIGNAL \mux2|Mux2~1_combout\ : std_logic;
SIGNAL \inst3|logic_out~0_combout\ : std_logic;
SIGNAL \inst4|mux_out_final[1]~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~6_combout\ : std_logic;
SIGNAL \inst4|mux_out_final[1]~1_combout\ : std_logic;
SIGNAL \inst3|Mux3~8_combout\ : std_logic;
SIGNAL \inst4|mux_out_final[1]~2_combout\ : std_logic;
SIGNAL \inst3|Mux3~7_combout\ : std_logic;
SIGNAL \inst4|mux_out_final[1]~3_combout\ : std_logic;
SIGNAL \sw[10]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \mux1|Mux1~0_combout\ : std_logic;
SIGNAL \sw[14]~input_o\ : std_logic;
SIGNAL \mux1|Mux1~1_combout\ : std_logic;
SIGNAL \mux2|Mux1~0_combout\ : std_logic;
SIGNAL \mux2|Mux1~1_combout\ : std_logic;
SIGNAL \inst4|mux_out_final[2]~4_combout\ : std_logic;
SIGNAL \inst4|mux_out_final[2]~5_combout\ : std_logic;
SIGNAL \inst2|adder1|carry_out_bit~0_combout\ : std_logic;
SIGNAL \inst2|adder2|bit_sum~combout\ : std_logic;
SIGNAL \inst4|mux_out_final[2]~6_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[11]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \mux1|Mux0~0_combout\ : std_logic;
SIGNAL \sw[15]~input_o\ : std_logic;
SIGNAL \mux1|Mux0~1_combout\ : std_logic;
SIGNAL \mux2|Mux0~0_combout\ : std_logic;
SIGNAL \mux2|Mux0~1_combout\ : std_logic;
SIGNAL \inst4|mux_out_final[3]~7_combout\ : std_logic;
SIGNAL \inst2|adder2|carry_out_bit~0_combout\ : std_logic;
SIGNAL \inst3|logic_out~1_combout\ : std_logic;
SIGNAL \inst4|mux_out_final[3]~8_combout\ : std_logic;
SIGNAL \inst4|mux_out_final[4]~9_combout\ : std_logic;

BEGIN

ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux3~10_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|mux_out_final[1]~3_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|mux_out_final[2]~6_combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|mux_out_final[3]~8_combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|mux_out_final[4]~9_combout\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pb[6]~input_o\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\sw[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(8),
	o => \sw[8]~input_o\);

\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

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

\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

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

\mux2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux3~0_combout\ = (\pb[3]~input_o\ & (((\pb[2]~input_o\)))) # (!\pb[3]~input_o\ & ((\pb[2]~input_o\ & (\sw[4]~input_o\)) # (!\pb[2]~input_o\ & ((\sw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \sw[4]~input_o\,
	datac => \pb[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \mux2|Mux3~0_combout\);

\sw[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(12),
	o => \sw[12]~input_o\);

\mux2|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux3~1_combout\ = (\pb[3]~input_o\ & ((\mux2|Mux3~0_combout\ & ((\sw[12]~input_o\))) # (!\mux2|Mux3~0_combout\ & (\sw[8]~input_o\)))) # (!\pb[3]~input_o\ & (((\mux2|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[8]~input_o\,
	datab => \pb[3]~input_o\,
	datac => \mux2|Mux3~0_combout\,
	datad => \sw[12]~input_o\,
	combout => \mux2|Mux3~1_combout\);

\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

\mux1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux3~0_combout\ = (\pb[1]~input_o\ & (((\pb[0]~input_o\)))) # (!\pb[1]~input_o\ & ((\pb[0]~input_o\ & (\sw[4]~input_o\)) # (!\pb[0]~input_o\ & ((\sw[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \sw[4]~input_o\,
	datac => \pb[0]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \mux1|Mux3~0_combout\);

\mux1|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux3~1_combout\ = (\pb[1]~input_o\ & ((\mux1|Mux3~0_combout\ & ((\sw[12]~input_o\))) # (!\mux1|Mux3~0_combout\ & (\sw[8]~input_o\)))) # (!\pb[1]~input_o\ & (((\mux1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[8]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \mux1|Mux3~0_combout\,
	datad => \sw[12]~input_o\,
	combout => \mux1|Mux3~1_combout\);

\pb[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(4),
	o => \pb[4]~input_o\);

\pb[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(5),
	o => \pb[5]~input_o\);

\inst3|Mux3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux3~9_combout\ = (\pb[5]~input_o\ & (\mux2|Mux3~1_combout\ $ (\mux1|Mux3~1_combout\ $ (\pb[4]~input_o\)))) # (!\pb[5]~input_o\ & ((\mux2|Mux3~1_combout\ & ((\mux1|Mux3~1_combout\) # (\pb[4]~input_o\))) # (!\mux2|Mux3~1_combout\ & 
-- (\mux1|Mux3~1_combout\ & \pb[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|Mux3~1_combout\,
	datab => \mux1|Mux3~1_combout\,
	datac => \pb[4]~input_o\,
	datad => \pb[5]~input_o\,
	combout => \inst3|Mux3~9_combout\);

\pb[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(6),
	o => \pb[6]~input_o\);

\inst3|Mux3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux3~10_combout\ = (\pb[6]~input_o\ & (\mux2|Mux3~1_combout\ $ (((\mux1|Mux3~1_combout\))))) # (!\pb[6]~input_o\ & (((\inst3|Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|Mux3~1_combout\,
	datab => \inst3|Mux3~9_combout\,
	datac => \mux1|Mux3~1_combout\,
	datad => \pb[6]~input_o\,
	combout => \inst3|Mux3~10_combout\);

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

\sw[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(9),
	o => \sw[9]~input_o\);

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

\mux1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux2~0_combout\ = (\pb[0]~input_o\ & (((\pb[1]~input_o\)))) # (!\pb[0]~input_o\ & ((\pb[1]~input_o\ & (\sw[9]~input_o\)) # (!\pb[1]~input_o\ & ((\sw[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \mux1|Mux2~0_combout\);

\sw[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(13),
	o => \sw[13]~input_o\);

\mux1|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux2~1_combout\ = (\pb[0]~input_o\ & ((\mux1|Mux2~0_combout\ & ((\sw[13]~input_o\))) # (!\mux1|Mux2~0_combout\ & (\sw[5]~input_o\)))) # (!\pb[0]~input_o\ & (((\mux1|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \mux1|Mux2~0_combout\,
	datad => \sw[13]~input_o\,
	combout => \mux1|Mux2~1_combout\);

\mux2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux2~0_combout\ = (\pb[2]~input_o\ & (((\pb[3]~input_o\)))) # (!\pb[2]~input_o\ & ((\pb[3]~input_o\ & (\sw[9]~input_o\)) # (!\pb[3]~input_o\ & ((\sw[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datab => \sw[9]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \mux2|Mux2~0_combout\);

\mux2|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux2~1_combout\ = (\pb[2]~input_o\ & ((\mux2|Mux2~0_combout\ & ((\sw[13]~input_o\))) # (!\mux2|Mux2~0_combout\ & (\sw[5]~input_o\)))) # (!\pb[2]~input_o\ & (((\mux2|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \pb[2]~input_o\,
	datac => \mux2|Mux2~0_combout\,
	datad => \sw[13]~input_o\,
	combout => \mux2|Mux2~1_combout\);

\inst3|logic_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|logic_out~0_combout\ = \mux1|Mux2~1_combout\ $ (\mux2|Mux2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|Mux2~1_combout\,
	datad => \mux2|Mux2~1_combout\,
	combout => \inst3|logic_out~0_combout\);

\inst4|mux_out_final[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|mux_out_final[1]~0_combout\ = (\pb[6]~input_o\ & (\inst3|logic_out~0_combout\ $ (((\mux1|Mux3~1_combout\ & \mux2|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[6]~input_o\,
	datab => \inst3|logic_out~0_combout\,
	datac => \mux1|Mux3~1_combout\,
	datad => \mux2|Mux3~1_combout\,
	combout => \inst4|mux_out_final[1]~0_combout\);

\inst3|Mux3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux3~6_combout\ = (!\pb[5]~input_o\ & !\pb[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb[5]~input_o\,
	datad => \pb[6]~input_o\,
	combout => \inst3|Mux3~6_combout\);

\inst4|mux_out_final[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|mux_out_final[1]~1_combout\ = (\inst3|Mux3~6_combout\ & ((\pb[4]~input_o\ & ((\mux1|Mux2~1_combout\) # (\mux2|Mux2~1_combout\))) # (!\pb[4]~input_o\ & (\mux1|Mux2~1_combout\ & \mux2|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux3~6_combout\,
	datab => \pb[4]~input_o\,
	datac => \mux1|Mux2~1_combout\,
	datad => \mux2|Mux2~1_combout\,
	combout => \inst4|mux_out_final[1]~1_combout\);

\inst3|Mux3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux3~8_combout\ = (\pb[5]~input_o\ & !\pb[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[5]~input_o\,
	datad => \pb[6]~input_o\,
	combout => \inst3|Mux3~8_combout\);

\inst4|mux_out_final[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|mux_out_final[1]~2_combout\ = (\inst4|mux_out_final[1]~1_combout\) # ((\inst3|Mux3~8_combout\ & (\inst3|logic_out~0_combout\ & !\pb[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mux_out_final[1]~1_combout\,
	datab => \inst3|Mux3~8_combout\,
	datac => \inst3|logic_out~0_combout\,
	datad => \pb[4]~input_o\,
	combout => \inst4|mux_out_final[1]~2_combout\);

\inst3|Mux3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|Mux3~7_combout\ = (\pb[4]~input_o\ & (\pb[5]~input_o\ & !\pb[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[4]~input_o\,
	datab => \pb[5]~input_o\,
	datad => \pb[6]~input_o\,
	combout => \inst3|Mux3~7_combout\);

\inst4|mux_out_final[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|mux_out_final[1]~3_combout\ = (\inst4|mux_out_final[1]~0_combout\) # ((\inst4|mux_out_final[1]~2_combout\) # ((\inst3|Mux3~7_combout\ & !\inst3|logic_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mux_out_final[1]~0_combout\,
	datab => \inst4|mux_out_final[1]~2_combout\,
	datac => \inst3|Mux3~7_combout\,
	datad => \inst3|logic_out~0_combout\,
	combout => \inst4|mux_out_final[1]~3_combout\);

\sw[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(10),
	o => \sw[10]~input_o\);

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

\mux1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux1~0_combout\ = (\pb[1]~input_o\ & (((\pb[0]~input_o\)))) # (!\pb[1]~input_o\ & ((\pb[0]~input_o\ & (\sw[6]~input_o\)) # (!\pb[0]~input_o\ & ((\sw[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \pb[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \mux1|Mux1~0_combout\);

\sw[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(14),
	o => \sw[14]~input_o\);

\mux1|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux1~1_combout\ = (\pb[1]~input_o\ & ((\mux1|Mux1~0_combout\ & ((\sw[14]~input_o\))) # (!\mux1|Mux1~0_combout\ & (\sw[10]~input_o\)))) # (!\pb[1]~input_o\ & (((\mux1|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \mux1|Mux1~0_combout\,
	datad => \sw[14]~input_o\,
	combout => \mux1|Mux1~1_combout\);

\mux2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux1~0_combout\ = (\pb[3]~input_o\ & (((\pb[2]~input_o\)))) # (!\pb[3]~input_o\ & ((\pb[2]~input_o\ & (\sw[6]~input_o\)) # (!\pb[2]~input_o\ & ((\sw[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \pb[2]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \mux2|Mux1~0_combout\);

\mux2|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux1~1_combout\ = (\pb[3]~input_o\ & ((\mux2|Mux1~0_combout\ & ((\sw[14]~input_o\))) # (!\mux2|Mux1~0_combout\ & (\sw[10]~input_o\)))) # (!\pb[3]~input_o\ & (((\mux2|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[10]~input_o\,
	datab => \pb[3]~input_o\,
	datac => \mux2|Mux1~0_combout\,
	datad => \sw[14]~input_o\,
	combout => \mux2|Mux1~1_combout\);

\inst4|mux_out_final[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|mux_out_final[2]~4_combout\ = (\inst3|Mux3~6_combout\ & ((\pb[4]~input_o\ & ((\mux1|Mux1~1_combout\) # (\mux2|Mux1~1_combout\))) # (!\pb[4]~input_o\ & (\mux1|Mux1~1_combout\ & \mux2|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux3~6_combout\,
	datab => \pb[4]~input_o\,
	datac => \mux1|Mux1~1_combout\,
	datad => \mux2|Mux1~1_combout\,
	combout => \inst4|mux_out_final[2]~4_combout\);

\inst4|mux_out_final[2]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|mux_out_final[2]~5_combout\ = (\inst3|Mux3~8_combout\ & (\pb[4]~input_o\ $ (\mux1|Mux1~1_combout\ $ (\mux2|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux3~8_combout\,
	datab => \pb[4]~input_o\,
	datac => \mux1|Mux1~1_combout\,
	datad => \mux2|Mux1~1_combout\,
	combout => \inst4|mux_out_final[2]~5_combout\);

\inst2|adder1|carry_out_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|adder1|carry_out_bit~0_combout\ = (\mux1|Mux2~1_combout\ & ((\mux2|Mux2~1_combout\) # ((\mux2|Mux3~1_combout\ & \mux1|Mux3~1_combout\)))) # (!\mux1|Mux2~1_combout\ & (\mux2|Mux3~1_combout\ & (\mux1|Mux3~1_combout\ & \mux2|Mux2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux2|Mux3~1_combout\,
	datab => \mux1|Mux3~1_combout\,
	datac => \mux1|Mux2~1_combout\,
	datad => \mux2|Mux2~1_combout\,
	combout => \inst2|adder1|carry_out_bit~0_combout\);

\inst2|adder2|bit_sum\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|adder2|bit_sum~combout\ = \inst2|adder1|carry_out_bit~0_combout\ $ (\mux1|Mux1~1_combout\ $ (\mux2|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|adder1|carry_out_bit~0_combout\,
	datab => \mux1|Mux1~1_combout\,
	datac => \mux2|Mux1~1_combout\,
	combout => \inst2|adder2|bit_sum~combout\);

\inst4|mux_out_final[2]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|mux_out_final[2]~6_combout\ = (\inst4|mux_out_final[2]~4_combout\) # ((\inst4|mux_out_final[2]~5_combout\) # ((\pb[6]~input_o\ & \inst2|adder2|bit_sum~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mux_out_final[2]~4_combout\,
	datab => \inst4|mux_out_final[2]~5_combout\,
	datac => \pb[6]~input_o\,
	datad => \inst2|adder2|bit_sum~combout\,
	combout => \inst4|mux_out_final[2]~6_combout\);

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

\sw[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(11),
	o => \sw[11]~input_o\);

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

\mux1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux0~0_combout\ = (\pb[0]~input_o\ & (((\pb[1]~input_o\)))) # (!\pb[0]~input_o\ & ((\pb[1]~input_o\ & (\sw[11]~input_o\)) # (!\pb[1]~input_o\ & ((\sw[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \sw[11]~input_o\,
	datac => \pb[1]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \mux1|Mux0~0_combout\);

\sw[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(15),
	o => \sw[15]~input_o\);

\mux1|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux1|Mux0~1_combout\ = (\pb[0]~input_o\ & ((\mux1|Mux0~0_combout\ & ((\sw[15]~input_o\))) # (!\mux1|Mux0~0_combout\ & (\sw[7]~input_o\)))) # (!\pb[0]~input_o\ & (((\mux1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \pb[0]~input_o\,
	datac => \mux1|Mux0~0_combout\,
	datad => \sw[15]~input_o\,
	combout => \mux1|Mux0~1_combout\);

\mux2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux0~0_combout\ = (\pb[2]~input_o\ & (((\pb[3]~input_o\)))) # (!\pb[2]~input_o\ & ((\pb[3]~input_o\ & (\sw[11]~input_o\)) # (!\pb[3]~input_o\ & ((\sw[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datab => \sw[11]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \mux2|Mux0~0_combout\);

\mux2|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mux2|Mux0~1_combout\ = (\pb[2]~input_o\ & ((\mux2|Mux0~0_combout\ & ((\sw[15]~input_o\))) # (!\mux2|Mux0~0_combout\ & (\sw[7]~input_o\)))) # (!\pb[2]~input_o\ & (((\mux2|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \pb[2]~input_o\,
	datac => \mux2|Mux0~0_combout\,
	datad => \sw[15]~input_o\,
	combout => \mux2|Mux0~1_combout\);

\inst4|mux_out_final[3]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|mux_out_final[3]~7_combout\ = (\pb[5]~input_o\ & (\pb[4]~input_o\ $ (\mux1|Mux0~1_combout\ $ (\mux2|Mux0~1_combout\)))) # (!\pb[5]~input_o\ & ((\pb[4]~input_o\ & ((\mux1|Mux0~1_combout\) # (\mux2|Mux0~1_combout\))) # (!\pb[4]~input_o\ & 
-- (\mux1|Mux0~1_combout\ & \mux2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[4]~input_o\,
	datab => \mux1|Mux0~1_combout\,
	datac => \mux2|Mux0~1_combout\,
	datad => \pb[5]~input_o\,
	combout => \inst4|mux_out_final[3]~7_combout\);

\inst2|adder2|carry_out_bit~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|adder2|carry_out_bit~0_combout\ = (\inst2|adder1|carry_out_bit~0_combout\ & ((\mux1|Mux1~1_combout\) # (\mux2|Mux1~1_combout\))) # (!\inst2|adder1|carry_out_bit~0_combout\ & (\mux1|Mux1~1_combout\ & \mux2|Mux1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|adder1|carry_out_bit~0_combout\,
	datab => \mux1|Mux1~1_combout\,
	datac => \mux2|Mux1~1_combout\,
	combout => \inst2|adder2|carry_out_bit~0_combout\);

\inst3|logic_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|logic_out~1_combout\ = \mux1|Mux0~1_combout\ $ (\mux2|Mux0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mux1|Mux0~1_combout\,
	datad => \mux2|Mux0~1_combout\,
	combout => \inst3|logic_out~1_combout\);

\inst4|mux_out_final[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|mux_out_final[3]~8_combout\ = (\pb[6]~input_o\ & ((\inst2|adder2|carry_out_bit~0_combout\ $ (\inst3|logic_out~1_combout\)))) # (!\pb[6]~input_o\ & (\inst4|mux_out_final[3]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|mux_out_final[3]~7_combout\,
	datab => \pb[6]~input_o\,
	datac => \inst2|adder2|carry_out_bit~0_combout\,
	datad => \inst3|logic_out~1_combout\,
	combout => \inst4|mux_out_final[3]~8_combout\);

\inst4|mux_out_final[4]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|mux_out_final[4]~9_combout\ = (\pb[6]~input_o\ & ((\inst2|adder2|carry_out_bit~0_combout\ & ((\mux1|Mux0~1_combout\) # (\mux2|Mux0~1_combout\))) # (!\inst2|adder2|carry_out_bit~0_combout\ & (\mux1|Mux0~1_combout\ & \mux2|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[6]~input_o\,
	datab => \inst2|adder2|carry_out_bit~0_combout\,
	datac => \mux1|Mux0~1_combout\,
	datad => \mux2|Mux0~1_combout\,
	combout => \inst4|mux_out_final[4]~9_combout\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;
END structure;


