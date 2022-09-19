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

-- DATE "03/30/2022 17:33:13"

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

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	Clk : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	xreg : OUT std_logic_vector(3 DOWNTO 0);
	yreg : OUT std_logic_vector(3 DOWNTO 0);
	xPOS : OUT std_logic_vector(3 DOWNTO 0);
	yPOS : OUT std_logic_vector(3 DOWNTO 0);
	extender_en_out : OUT std_logic;
	extender_out_out : OUT std_logic;
	left_right_out : OUT std_logic;
	clk_ext_out : OUT std_logic;
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab4_top;

ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_pb_n : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_xreg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_yreg : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_xPOS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_yPOS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_extender_en_out : std_logic;
SIGNAL ww_extender_out_out : std_logic;
SIGNAL ww_left_right_out : std_logic;
SIGNAL ww_clk_ext_out : std_logic;
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \xreg[0]~output_o\ : std_logic;
SIGNAL \xreg[1]~output_o\ : std_logic;
SIGNAL \xreg[2]~output_o\ : std_logic;
SIGNAL \xreg[3]~output_o\ : std_logic;
SIGNAL \yreg[0]~output_o\ : std_logic;
SIGNAL \yreg[1]~output_o\ : std_logic;
SIGNAL \yreg[2]~output_o\ : std_logic;
SIGNAL \yreg[3]~output_o\ : std_logic;
SIGNAL \xPOS[0]~output_o\ : std_logic;
SIGNAL \xPOS[1]~output_o\ : std_logic;
SIGNAL \xPOS[2]~output_o\ : std_logic;
SIGNAL \xPOS[3]~output_o\ : std_logic;
SIGNAL \yPOS[0]~output_o\ : std_logic;
SIGNAL \yPOS[1]~output_o\ : std_logic;
SIGNAL \yPOS[2]~output_o\ : std_logic;
SIGNAL \yPOS[3]~output_o\ : std_logic;
SIGNAL \extender_en_out~output_o\ : std_logic;
SIGNAL \extender_out_out~output_o\ : std_logic;
SIGNAL \left_right_out~output_o\ : std_logic;
SIGNAL \clk_ext_out~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \inst_extender|Selector2~0_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[1]~4_cout\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[1]~5_combout\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[1]~6\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[2]~7_combout\ : std_logic;
SIGNAL \inst_compx|AGTB~0_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[0]~11_combout\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[1]~4_cout\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[1]~5_combout\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[1]~6\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[2]~8\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[3]~9_combout\ : std_logic;
SIGNAL \inst_compy|ALTB~1_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \inst_compy|ALTB~2_combout\ : std_logic;
SIGNAL \inst_compy|ALTB~3_combout\ : std_logic;
SIGNAL \inst_compy|AGTB~0_combout\ : std_logic;
SIGNAL \inst_compy|AGTB~1_combout\ : std_logic;
SIGNAL \inst_compy|AGTB~2_combout\ : std_logic;
SIGNAL \inst_compy|AEQB~0_combout\ : std_logic;
SIGNAL \inst_compy|AEQB~combout\ : std_logic;
SIGNAL \inst_XY|comb~1_combout\ : std_logic;
SIGNAL \inst_XY|clk_eny~2_combout\ : std_logic;
SIGNAL \inst_XY|clk_eny~combout\ : std_logic;
SIGNAL \inst_XY|up_downy~2_combout\ : std_logic;
SIGNAL \inst_XY|process_0~1_combout\ : std_logic;
SIGNAL \inst_XY|up_downy~combout\ : std_logic;
SIGNAL \inst_countery|process_0~0_combout\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[2]~7_combout\ : std_logic;
SIGNAL \inst_compy|ALTB~0_combout\ : std_logic;
SIGNAL \inst_XY|Capture_XY~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector3~1_combout\ : std_logic;
SIGNAL \inst_extender|Selector3~2_combout\ : std_logic;
SIGNAL \inst_extender|current_state.left_shift~q\ : std_logic;
SIGNAL \inst_extender|Selector0~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector0~1_combout\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \inst_extender|Selector0~2_combout\ : std_logic;
SIGNAL \inst_extender|current_state.Idle~q\ : std_logic;
SIGNAL \inst_extender|Selector1~0_combout\ : std_logic;
SIGNAL \inst_extender|current_state.Pressed~q\ : std_logic;
SIGNAL \inst_extender|Selector3~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector2~1_combout\ : std_logic;
SIGNAL \inst_extender|current_state.Right_shift~q\ : std_logic;
SIGNAL \inst_Bi_shift_reg|sreg~3_combout\ : std_logic;
SIGNAL \inst_extender|clk_en~0_combout\ : std_logic;
SIGNAL \inst_Bi_shift_reg|sreg~2_combout\ : std_logic;
SIGNAL \inst_Bi_shift_reg|sreg~1_combout\ : std_logic;
SIGNAL \inst_Bi_shift_reg|sreg~0_combout\ : std_logic;
SIGNAL \inst_extender|Equal2~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector4~0_combout\ : std_logic;
SIGNAL \inst_XY|Capture_XY~combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \inst_compx|AEQB~0_combout\ : std_logic;
SIGNAL \inst_XY|up_downx~2_combout\ : std_logic;
SIGNAL \inst_compx|ALTB~0_combout\ : std_logic;
SIGNAL \inst_compx|ALTB~1_combout\ : std_logic;
SIGNAL \inst_XY|process_0~0_combout\ : std_logic;
SIGNAL \inst_XY|up_downx~combout\ : std_logic;
SIGNAL \inst_counterx|process_0~0_combout\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[2]~8\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[3]~9_combout\ : std_logic;
SIGNAL \inst_compx|AGTB~1_combout\ : std_logic;
SIGNAL \inst_compx|AGTB~2_combout\ : std_logic;
SIGNAL \inst_compx|AGTB~3_combout\ : std_logic;
SIGNAL \inst_compx|ALTB~2_combout\ : std_logic;
SIGNAL \inst_compx|AEQB~combout\ : std_logic;
SIGNAL \inst_XY|comb~0_combout\ : std_logic;
SIGNAL \inst_XY|clk_enx~2_combout\ : std_logic;
SIGNAL \inst_XY|clk_enx~combout\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[0]~11_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux5~0_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux5~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \inst_sev_mux|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux1~0_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux1~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux0~0_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux0~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \inst_XY|error~combout\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \inst_grappler|next_state.Opening~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector5~0_combout\ : std_logic;
SIGNAL \inst_grappler|current_state.Opening~q\ : std_logic;
SIGNAL \inst_grappler|Selector1~0_combout\ : std_logic;
SIGNAL \inst_grappler|current_state.close~q\ : std_logic;
SIGNAL \inst_grappler|Selector0~0_combout\ : std_logic;
SIGNAL \inst_grappler|current_state.Start~q\ : std_logic;
SIGNAL \inst_grappler|next_state.Closing~0_combout\ : std_logic;
SIGNAL \inst_grappler|current_state.Closing~q\ : std_logic;
SIGNAL \inst_grappler|Grappler_on~0_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux6~0_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux6~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux4~0_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux4~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux3~0_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux3~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux2~0_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux2~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_countery|un_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_Bi_shift_reg|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_registerx|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_registery|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_grappler|ALT_INV_Grappler_on~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
xreg <= ww_xreg;
yreg <= ww_yreg;
xPOS <= ww_xPOS;
yPOS <= ww_yPOS;
extender_en_out <= ww_extender_en_out;
extender_out_out <= ww_extender_out_out;
left_right_out <= ww_left_right_out;
clk_ext_out <= ww_clk_ext_out;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst_grappler|ALT_INV_Grappler_on~0_combout\ <= NOT \inst_grappler|Grappler_on~0_combout\;
\inst_sev_mux|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \inst_sev_mux|clk_proc:COUNT[10]~q\;

\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_XY|error~combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_grappler|ALT_INV_Grappler_on~0_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_Bi_shift_reg|sreg\(0),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_Bi_shift_reg|sreg\(1),
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_Bi_shift_reg|sreg\(2),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_Bi_shift_reg|sreg\(3),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_XY|Capture_XY~combout\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\xreg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_registerx|output\(0),
	devoe => ww_devoe,
	o => \xreg[0]~output_o\);

\xreg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_registerx|output\(1),
	devoe => ww_devoe,
	o => \xreg[1]~output_o\);

\xreg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_registerx|output\(2),
	devoe => ww_devoe,
	o => \xreg[2]~output_o\);

\xreg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_registerx|output\(3),
	devoe => ww_devoe,
	o => \xreg[3]~output_o\);

\yreg[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_registery|output\(0),
	devoe => ww_devoe,
	o => \yreg[0]~output_o\);

\yreg[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_registery|output\(1),
	devoe => ww_devoe,
	o => \yreg[1]~output_o\);

\yreg[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_registery|output\(2),
	devoe => ww_devoe,
	o => \yreg[2]~output_o\);

\yreg[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_registery|output\(3),
	devoe => ww_devoe,
	o => \yreg[3]~output_o\);

\xPOS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_counterx|un_bin_counter\(0),
	devoe => ww_devoe,
	o => \xPOS[0]~output_o\);

\xPOS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_counterx|un_bin_counter\(1),
	devoe => ww_devoe,
	o => \xPOS[1]~output_o\);

\xPOS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_counterx|un_bin_counter\(2),
	devoe => ww_devoe,
	o => \xPOS[2]~output_o\);

\xPOS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_counterx|un_bin_counter\(3),
	devoe => ww_devoe,
	o => \xPOS[3]~output_o\);

\yPOS[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_countery|un_bin_counter\(0),
	devoe => ww_devoe,
	o => \yPOS[0]~output_o\);

\yPOS[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_countery|un_bin_counter\(1),
	devoe => ww_devoe,
	o => \yPOS[1]~output_o\);

\yPOS[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_countery|un_bin_counter\(2),
	devoe => ww_devoe,
	o => \yPOS[2]~output_o\);

\yPOS[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_countery|un_bin_counter\(3),
	devoe => ww_devoe,
	o => \yPOS[3]~output_o\);

\extender_en_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_XY|Capture_XY~0_combout\,
	devoe => ww_devoe,
	o => \extender_en_out~output_o\);

\extender_out_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_extender|Selector4~0_combout\,
	devoe => ww_devoe,
	o => \extender_out_out~output_o\);

\left_right_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_extender|current_state.Right_shift~q\,
	devoe => ww_devoe,
	o => \left_right_out~output_o\);

\clk_ext_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_extender|clk_en~0_combout\,
	devoe => ww_devoe,
	o => \clk_ext_out~output_o\);

\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

\Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

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

\inst_extender|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector2~0_combout\ = (\inst_Bi_shift_reg|sreg\(0)) # (((!\inst_Bi_shift_reg|sreg\(3)) # (!\inst_Bi_shift_reg|sreg\(2))) # (!\inst_Bi_shift_reg|sreg\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(0),
	datab => \inst_Bi_shift_reg|sreg\(1),
	datac => \inst_Bi_shift_reg|sreg\(2),
	datad => \inst_Bi_shift_reg|sreg\(3),
	combout => \inst_extender|Selector2~0_combout\);

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

\inst_registerx|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[7]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registerx|output\(3));

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

\inst_registerx|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[6]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registerx|output\(2));

\inst_counterx|un_bin_counter[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counterx|un_bin_counter[1]~4_cout\ = CARRY(\inst_counterx|un_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(0),
	datad => VCC,
	cout => \inst_counterx|un_bin_counter[1]~4_cout\);

\inst_counterx|un_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counterx|un_bin_counter[1]~5_combout\ = (\inst_counterx|un_bin_counter\(1) & ((\inst_counterx|process_0~0_combout\ & (!\inst_counterx|un_bin_counter[1]~4_cout\)) # (!\inst_counterx|process_0~0_combout\ & (\inst_counterx|un_bin_counter[1]~4_cout\ & 
-- VCC)))) # (!\inst_counterx|un_bin_counter\(1) & ((\inst_counterx|process_0~0_combout\ & ((\inst_counterx|un_bin_counter[1]~4_cout\) # (GND))) # (!\inst_counterx|process_0~0_combout\ & (!\inst_counterx|un_bin_counter[1]~4_cout\))))
-- \inst_counterx|un_bin_counter[1]~6\ = CARRY((\inst_counterx|un_bin_counter\(1) & (\inst_counterx|process_0~0_combout\ & !\inst_counterx|un_bin_counter[1]~4_cout\)) # (!\inst_counterx|un_bin_counter\(1) & ((\inst_counterx|process_0~0_combout\) # 
-- (!\inst_counterx|un_bin_counter[1]~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(1),
	datab => \inst_counterx|process_0~0_combout\,
	datad => VCC,
	cin => \inst_counterx|un_bin_counter[1]~4_cout\,
	combout => \inst_counterx|un_bin_counter[1]~5_combout\,
	cout => \inst_counterx|un_bin_counter[1]~6\);

\inst_counterx|un_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_counterx|un_bin_counter[1]~5_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|clk_enx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counterx|un_bin_counter\(1));

\inst_counterx|un_bin_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counterx|un_bin_counter[2]~7_combout\ = ((\inst_counterx|un_bin_counter\(2) $ (\inst_counterx|process_0~0_combout\ $ (\inst_counterx|un_bin_counter[1]~6\)))) # (GND)
-- \inst_counterx|un_bin_counter[2]~8\ = CARRY((\inst_counterx|un_bin_counter\(2) & ((!\inst_counterx|un_bin_counter[1]~6\) # (!\inst_counterx|process_0~0_combout\))) # (!\inst_counterx|un_bin_counter\(2) & (!\inst_counterx|process_0~0_combout\ & 
-- !\inst_counterx|un_bin_counter[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(2),
	datab => \inst_counterx|process_0~0_combout\,
	datad => VCC,
	cin => \inst_counterx|un_bin_counter[1]~6\,
	combout => \inst_counterx|un_bin_counter[2]~7_combout\,
	cout => \inst_counterx|un_bin_counter[2]~8\);

\inst_counterx|un_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_counterx|un_bin_counter[2]~7_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|clk_enx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counterx|un_bin_counter\(2));

\inst_compx|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|AGTB~0_combout\ = (\inst_registerx|output\(3) & (\inst_counterx|un_bin_counter\(3) & (\inst_registerx|output\(2) $ (!\inst_counterx|un_bin_counter\(2))))) # (!\inst_registerx|output\(3) & (!\inst_counterx|un_bin_counter\(3) & 
-- (\inst_registerx|output\(2) $ (!\inst_counterx|un_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registerx|output\(3),
	datab => \inst_registerx|output\(2),
	datac => \inst_counterx|un_bin_counter\(2),
	datad => \inst_counterx|un_bin_counter\(3),
	combout => \inst_compx|AGTB~0_combout\);

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

\inst_registery|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[3]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registery|output\(3));

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

\inst_registery|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[2]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registery|output\(2));

\inst_countery|un_bin_counter[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_countery|un_bin_counter[0]~11_combout\ = \inst_countery|un_bin_counter\(0) $ (\inst_XY|clk_eny~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_countery|un_bin_counter\(0),
	datad => \inst_XY|clk_eny~combout\,
	combout => \inst_countery|un_bin_counter[0]~11_combout\);

\inst_countery|un_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_countery|un_bin_counter[0]~11_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_countery|un_bin_counter\(0));

\inst_countery|un_bin_counter[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_countery|un_bin_counter[1]~4_cout\ = CARRY(\inst_countery|un_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(0),
	datad => VCC,
	cout => \inst_countery|un_bin_counter[1]~4_cout\);

\inst_countery|un_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_countery|un_bin_counter[1]~5_combout\ = (\inst_countery|un_bin_counter\(1) & ((\inst_countery|process_0~0_combout\ & (!\inst_countery|un_bin_counter[1]~4_cout\)) # (!\inst_countery|process_0~0_combout\ & (\inst_countery|un_bin_counter[1]~4_cout\ & 
-- VCC)))) # (!\inst_countery|un_bin_counter\(1) & ((\inst_countery|process_0~0_combout\ & ((\inst_countery|un_bin_counter[1]~4_cout\) # (GND))) # (!\inst_countery|process_0~0_combout\ & (!\inst_countery|un_bin_counter[1]~4_cout\))))
-- \inst_countery|un_bin_counter[1]~6\ = CARRY((\inst_countery|un_bin_counter\(1) & (\inst_countery|process_0~0_combout\ & !\inst_countery|un_bin_counter[1]~4_cout\)) # (!\inst_countery|un_bin_counter\(1) & ((\inst_countery|process_0~0_combout\) # 
-- (!\inst_countery|un_bin_counter[1]~4_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(1),
	datab => \inst_countery|process_0~0_combout\,
	datad => VCC,
	cin => \inst_countery|un_bin_counter[1]~4_cout\,
	combout => \inst_countery|un_bin_counter[1]~5_combout\,
	cout => \inst_countery|un_bin_counter[1]~6\);

\inst_countery|un_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_countery|un_bin_counter[1]~5_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|clk_eny~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_countery|un_bin_counter\(1));

\inst_countery|un_bin_counter[2]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_countery|un_bin_counter[2]~7_combout\ = ((\inst_countery|un_bin_counter\(2) $ (\inst_countery|process_0~0_combout\ $ (\inst_countery|un_bin_counter[1]~6\)))) # (GND)
-- \inst_countery|un_bin_counter[2]~8\ = CARRY((\inst_countery|un_bin_counter\(2) & ((!\inst_countery|un_bin_counter[1]~6\) # (!\inst_countery|process_0~0_combout\))) # (!\inst_countery|un_bin_counter\(2) & (!\inst_countery|process_0~0_combout\ & 
-- !\inst_countery|un_bin_counter[1]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(2),
	datab => \inst_countery|process_0~0_combout\,
	datad => VCC,
	cin => \inst_countery|un_bin_counter[1]~6\,
	combout => \inst_countery|un_bin_counter[2]~7_combout\,
	cout => \inst_countery|un_bin_counter[2]~8\);

\inst_countery|un_bin_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_countery|un_bin_counter[3]~9_combout\ = \inst_countery|un_bin_counter\(3) $ (\inst_countery|process_0~0_combout\ $ (!\inst_countery|un_bin_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(3),
	datab => \inst_countery|process_0~0_combout\,
	cin => \inst_countery|un_bin_counter[2]~8\,
	combout => \inst_countery|un_bin_counter[3]~9_combout\);

\inst_countery|un_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_countery|un_bin_counter[3]~9_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|clk_eny~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_countery|un_bin_counter\(3));

\inst_compy|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|ALTB~1_combout\ = (\inst_registery|output\(3) & (((\inst_registery|output\(2) & !\inst_countery|un_bin_counter\(2))) # (!\inst_countery|un_bin_counter\(3)))) # (!\inst_registery|output\(3) & (\inst_registery|output\(2) & 
-- (!\inst_countery|un_bin_counter\(2) & !\inst_countery|un_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registery|output\(3),
	datab => \inst_registery|output\(2),
	datac => \inst_countery|un_bin_counter\(2),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_compy|ALTB~1_combout\);

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

\inst_registery|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[1]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registery|output\(1));

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

\inst_registery|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[0]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registery|output\(0));

\inst_compy|ALTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|ALTB~2_combout\ = (\inst_registery|output\(1) & (((\inst_registery|output\(0) & !\inst_countery|un_bin_counter\(0))) # (!\inst_countery|un_bin_counter\(1)))) # (!\inst_registery|output\(1) & (\inst_registery|output\(0) & 
-- (!\inst_countery|un_bin_counter\(0) & !\inst_countery|un_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registery|output\(1),
	datab => \inst_registery|output\(0),
	datac => \inst_countery|un_bin_counter\(0),
	datad => \inst_countery|un_bin_counter\(1),
	combout => \inst_compy|ALTB~2_combout\);

\inst_compy|ALTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|ALTB~3_combout\ = (\inst_compy|ALTB~1_combout\) # ((\inst_compy|ALTB~0_combout\ & \inst_compy|ALTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compy|ALTB~1_combout\,
	datab => \inst_compy|ALTB~0_combout\,
	datac => \inst_compy|ALTB~2_combout\,
	combout => \inst_compy|ALTB~3_combout\);

\inst_compy|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|AGTB~0_combout\ = (\inst_countery|un_bin_counter\(3) & (((\inst_countery|un_bin_counter\(2) & !\inst_registery|output\(2))) # (!\inst_registery|output\(3)))) # (!\inst_countery|un_bin_counter\(3) & (\inst_countery|un_bin_counter\(2) & 
-- (!\inst_registery|output\(2) & !\inst_registery|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(3),
	datab => \inst_countery|un_bin_counter\(2),
	datac => \inst_registery|output\(2),
	datad => \inst_registery|output\(3),
	combout => \inst_compy|AGTB~0_combout\);

\inst_compy|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|AGTB~1_combout\ = (\inst_countery|un_bin_counter\(1) & (((\inst_countery|un_bin_counter\(0) & !\inst_registery|output\(0))) # (!\inst_registery|output\(1)))) # (!\inst_countery|un_bin_counter\(1) & (\inst_countery|un_bin_counter\(0) & 
-- (!\inst_registery|output\(0) & !\inst_registery|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(1),
	datab => \inst_countery|un_bin_counter\(0),
	datac => \inst_registery|output\(0),
	datad => \inst_registery|output\(1),
	combout => \inst_compy|AGTB~1_combout\);

\inst_compy|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|AGTB~2_combout\ = (\inst_compy|AGTB~0_combout\) # ((\inst_compy|ALTB~0_combout\ & \inst_compy|AGTB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compy|AGTB~0_combout\,
	datab => \inst_compy|ALTB~0_combout\,
	datac => \inst_compy|AGTB~1_combout\,
	combout => \inst_compy|AGTB~2_combout\);

\inst_compy|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|AEQB~0_combout\ = (\inst_registery|output\(1) & ((\inst_registery|output\(0) $ (\inst_countery|un_bin_counter\(0))) # (!\inst_countery|un_bin_counter\(1)))) # (!\inst_registery|output\(1) & ((\inst_countery|un_bin_counter\(1)) # 
-- (\inst_registery|output\(0) $ (\inst_countery|un_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registery|output\(1),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_registery|output\(0),
	datad => \inst_countery|un_bin_counter\(0),
	combout => \inst_compy|AEQB~0_combout\);

\inst_compy|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|AEQB~combout\ = (\inst_compy|AEQB~0_combout\) # (!\inst_compy|ALTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compy|AEQB~0_combout\,
	datad => \inst_compy|ALTB~0_combout\,
	combout => \inst_compy|AEQB~combout\);

\inst_XY|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|comb~1_combout\ = (\pb_n[2]~input_o\ & ((\inst_compy|ALTB~3_combout\) # ((\inst_compy|AGTB~2_combout\) # (!\inst_compy|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \inst_compy|ALTB~3_combout\,
	datac => \inst_compy|AGTB~2_combout\,
	datad => \inst_compy|AEQB~combout\,
	combout => \inst_XY|comb~1_combout\);

\inst_XY|clk_eny~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|clk_eny~2_combout\ = (\inst_compy|AEQB~0_combout\) # (((\inst_compy|ALTB~3_combout\) # (!\pb_n[2]~input_o\)) # (!\inst_compy|ALTB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compy|AEQB~0_combout\,
	datab => \inst_compy|ALTB~0_combout\,
	datac => \inst_compy|ALTB~3_combout\,
	datad => \pb_n[2]~input_o\,
	combout => \inst_XY|clk_eny~2_combout\);

\inst_XY|clk_eny\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|clk_eny~combout\ = (\inst_XY|clk_eny~2_combout\ & ((\inst_XY|clk_eny~combout\) # (\inst_XY|comb~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|clk_eny~combout\,
	datac => \inst_XY|comb~1_combout\,
	datad => \inst_XY|clk_eny~2_combout\,
	combout => \inst_XY|clk_eny~combout\);

\inst_XY|up_downy~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|up_downy~2_combout\ = (((!\inst_compy|AEQB~0_combout\ & \inst_compy|ALTB~0_combout\)) # (!\inst_compy|AGTB~2_combout\)) # (!\pb_n[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compy|AEQB~0_combout\,
	datab => \inst_compy|ALTB~0_combout\,
	datac => \pb_n[2]~input_o\,
	datad => \inst_compy|AGTB~2_combout\,
	combout => \inst_XY|up_downy~2_combout\);

\inst_XY|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|process_0~1_combout\ = (\pb_n[2]~input_o\ & ((\inst_compy|ALTB~1_combout\) # ((\inst_compy|ALTB~0_combout\ & \inst_compy|ALTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \inst_compy|ALTB~1_combout\,
	datac => \inst_compy|ALTB~0_combout\,
	datad => \inst_compy|ALTB~2_combout\,
	combout => \inst_XY|process_0~1_combout\);

\inst_XY|up_downy\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|up_downy~combout\ = (\inst_XY|process_0~1_combout\) # ((\inst_XY|up_downy~combout\ & \inst_XY|up_downy~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|up_downy~combout\,
	datac => \inst_XY|up_downy~2_combout\,
	datad => \inst_XY|process_0~1_combout\,
	combout => \inst_XY|up_downy~combout\);

\inst_countery|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_countery|process_0~0_combout\ = (\inst_XY|clk_eny~combout\ & \inst_XY|up_downy~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|clk_eny~combout\,
	datab => \inst_XY|up_downy~combout\,
	combout => \inst_countery|process_0~0_combout\);

\inst_countery|un_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_countery|un_bin_counter[2]~7_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|clk_eny~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_countery|un_bin_counter\(2));

\inst_compy|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|ALTB~0_combout\ = (\inst_registery|output\(3) & (\inst_countery|un_bin_counter\(3) & (\inst_registery|output\(2) $ (!\inst_countery|un_bin_counter\(2))))) # (!\inst_registery|output\(3) & (!\inst_countery|un_bin_counter\(3) & 
-- (\inst_registery|output\(2) $ (!\inst_countery|un_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registery|output\(3),
	datab => \inst_registery|output\(2),
	datac => \inst_countery|un_bin_counter\(2),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_compy|ALTB~0_combout\);

\inst_XY|Capture_XY~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Capture_XY~0_combout\ = (\inst_compx|AGTB~0_combout\ & (\inst_compy|ALTB~0_combout\ & (!\inst_compx|AEQB~0_combout\ & !\inst_compy|AEQB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|AGTB~0_combout\,
	datab => \inst_compy|ALTB~0_combout\,
	datac => \inst_compx|AEQB~0_combout\,
	datad => \inst_compy|AEQB~0_combout\,
	combout => \inst_XY|Capture_XY~0_combout\);

\inst_extender|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector3~1_combout\ = (\inst_Bi_shift_reg|sreg\(0)) # ((\inst_Bi_shift_reg|sreg\(1)) # ((\inst_Bi_shift_reg|sreg\(2)) # (!\inst_Bi_shift_reg|sreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(0),
	datab => \inst_Bi_shift_reg|sreg\(1),
	datac => \inst_Bi_shift_reg|sreg\(2),
	datad => \inst_Bi_shift_reg|sreg\(3),
	combout => \inst_extender|Selector3~1_combout\);

\inst_extender|Selector3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector3~2_combout\ = (\inst_extender|Equal2~0_combout\ & ((\inst_extender|Selector3~0_combout\) # ((\inst_extender|current_state.left_shift~q\ & \inst_extender|Selector3~1_combout\)))) # (!\inst_extender|Equal2~0_combout\ & 
-- (\inst_extender|current_state.left_shift~q\ & (\inst_extender|Selector3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|Equal2~0_combout\,
	datab => \inst_extender|current_state.left_shift~q\,
	datac => \inst_extender|Selector3~1_combout\,
	datad => \inst_extender|Selector3~0_combout\,
	combout => \inst_extender|Selector3~2_combout\);

\inst_extender|current_state.left_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_extender|Selector3~2_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.left_shift~q\);

\inst_extender|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector0~0_combout\ = (\inst_Bi_shift_reg|sreg\(1) & (\inst_extender|current_state.Right_shift~q\ & (\inst_Bi_shift_reg|sreg\(2)))) # (!\inst_Bi_shift_reg|sreg\(1) & (((!\inst_Bi_shift_reg|sreg\(2) & 
-- \inst_extender|current_state.left_shift~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|current_state.Right_shift~q\,
	datab => \inst_Bi_shift_reg|sreg\(1),
	datac => \inst_Bi_shift_reg|sreg\(2),
	datad => \inst_extender|current_state.left_shift~q\,
	combout => \inst_extender|Selector0~0_combout\);

\inst_extender|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector0~1_combout\ = (\inst_Bi_shift_reg|sreg\(3) & (\inst_extender|Selector0~0_combout\ & !\inst_Bi_shift_reg|sreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(3),
	datab => \inst_extender|Selector0~0_combout\,
	datad => \inst_Bi_shift_reg|sreg\(0),
	combout => \inst_extender|Selector0~1_combout\);

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

\inst_extender|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector0~2_combout\ = (!\inst_extender|Selector0~1_combout\ & ((\inst_extender|current_state.Idle~q\) # ((!\pb_n[1]~input_o\ & \inst_XY|Capture_XY~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|Selector0~1_combout\,
	datab => \pb_n[1]~input_o\,
	datac => \inst_XY|Capture_XY~0_combout\,
	datad => \inst_extender|current_state.Idle~q\,
	combout => \inst_extender|Selector0~2_combout\);

\inst_extender|current_state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_extender|Selector0~2_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.Idle~q\);

\inst_extender|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector1~0_combout\ = (\inst_XY|Capture_XY~0_combout\ & (!\pb_n[1]~input_o\ & ((\inst_extender|current_state.Pressed~q\) # (!\inst_extender|current_state.Idle~q\)))) # (!\inst_XY|Capture_XY~0_combout\ & 
-- (\inst_extender|current_state.Pressed~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|current_state.Pressed~q\,
	datab => \inst_extender|current_state.Idle~q\,
	datac => \inst_XY|Capture_XY~0_combout\,
	datad => \pb_n[1]~input_o\,
	combout => \inst_extender|Selector1~0_combout\);

\inst_extender|current_state.Pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_extender|Selector1~0_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.Pressed~q\);

\inst_extender|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector3~0_combout\ = (\inst_XY|Capture_XY~0_combout\ & (\inst_extender|current_state.Pressed~q\ & \pb_n[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|Capture_XY~0_combout\,
	datab => \inst_extender|current_state.Pressed~q\,
	datac => \pb_n[1]~input_o\,
	combout => \inst_extender|Selector3~0_combout\);

\inst_extender|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector2~1_combout\ = (\inst_extender|current_state.Right_shift~q\ & ((\inst_extender|Selector2~0_combout\) # ((\inst_extender|Selector3~0_combout\ & !\inst_extender|Equal2~0_combout\)))) # (!\inst_extender|current_state.Right_shift~q\ & 
-- (((\inst_extender|Selector3~0_combout\ & !\inst_extender|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|current_state.Right_shift~q\,
	datab => \inst_extender|Selector2~0_combout\,
	datac => \inst_extender|Selector3~0_combout\,
	datad => \inst_extender|Equal2~0_combout\,
	combout => \inst_extender|Selector2~1_combout\);

\inst_extender|current_state.Right_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_extender|Selector2~1_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.Right_shift~q\);

\inst_Bi_shift_reg|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_Bi_shift_reg|sreg~3_combout\ = (\inst_Bi_shift_reg|sreg\(2)) # (\inst_extender|current_state.Right_shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(2),
	datab => \inst_extender|current_state.Right_shift~q\,
	combout => \inst_Bi_shift_reg|sreg~3_combout\);

\inst_extender|clk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|clk_en~0_combout\ = (!\inst_extender|current_state.Pressed~q\ & \inst_extender|current_state.Idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|current_state.Pressed~q\,
	datad => \inst_extender|current_state.Idle~q\,
	combout => \inst_extender|clk_en~0_combout\);

\inst_Bi_shift_reg|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_Bi_shift_reg|sreg~3_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_extender|clk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_Bi_shift_reg|sreg\(3));

\inst_Bi_shift_reg|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_Bi_shift_reg|sreg~2_combout\ = (\inst_extender|current_state.Right_shift~q\ & (\inst_Bi_shift_reg|sreg\(3))) # (!\inst_extender|current_state.Right_shift~q\ & ((\inst_Bi_shift_reg|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(3),
	datab => \inst_Bi_shift_reg|sreg\(1),
	datad => \inst_extender|current_state.Right_shift~q\,
	combout => \inst_Bi_shift_reg|sreg~2_combout\);

\inst_Bi_shift_reg|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_Bi_shift_reg|sreg~2_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_extender|clk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_Bi_shift_reg|sreg\(2));

\inst_Bi_shift_reg|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_Bi_shift_reg|sreg~1_combout\ = (\inst_extender|current_state.Right_shift~q\ & (\inst_Bi_shift_reg|sreg\(2))) # (!\inst_extender|current_state.Right_shift~q\ & ((\inst_Bi_shift_reg|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(2),
	datab => \inst_Bi_shift_reg|sreg\(0),
	datad => \inst_extender|current_state.Right_shift~q\,
	combout => \inst_Bi_shift_reg|sreg~1_combout\);

\inst_Bi_shift_reg|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_Bi_shift_reg|sreg~1_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_extender|clk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_Bi_shift_reg|sreg\(1));

\inst_Bi_shift_reg|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_Bi_shift_reg|sreg~0_combout\ = (\inst_Bi_shift_reg|sreg\(1) & \inst_extender|current_state.Right_shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(1),
	datab => \inst_extender|current_state.Right_shift~q\,
	combout => \inst_Bi_shift_reg|sreg~0_combout\);

\inst_Bi_shift_reg|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_Bi_shift_reg|sreg~0_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_extender|clk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_Bi_shift_reg|sreg\(0));

\inst_extender|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Equal2~0_combout\ = (\inst_Bi_shift_reg|sreg\(0)) # ((\inst_Bi_shift_reg|sreg\(1)) # ((\inst_Bi_shift_reg|sreg\(2)) # (\inst_Bi_shift_reg|sreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(0),
	datab => \inst_Bi_shift_reg|sreg\(1),
	datac => \inst_Bi_shift_reg|sreg\(2),
	datad => \inst_Bi_shift_reg|sreg\(3),
	combout => \inst_extender|Equal2~0_combout\);

\inst_extender|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector4~0_combout\ = (\inst_extender|Equal2~0_combout\) # ((\inst_extender|current_state.Right_shift~q\) # (\inst_extender|current_state.left_shift~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|Equal2~0_combout\,
	datab => \inst_extender|current_state.Right_shift~q\,
	datac => \inst_extender|current_state.left_shift~q\,
	combout => \inst_extender|Selector4~0_combout\);

\inst_XY|Capture_XY\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Capture_XY~combout\ = (!\pb_n[2]~input_o\ & (!\inst_extender|Selector4~0_combout\ & \inst_XY|Capture_XY~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \inst_extender|Selector4~0_combout\,
	datad => \inst_XY|Capture_XY~0_combout\,
	combout => \inst_XY|Capture_XY~combout\);

\inst_registerx|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[5]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registerx|output\(1));

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

\inst_registerx|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \sw[4]~input_o\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registerx|output\(0));

\inst_compx|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|AEQB~0_combout\ = (\inst_registerx|output\(1) & ((\inst_registerx|output\(0) $ (\inst_counterx|un_bin_counter\(0))) # (!\inst_counterx|un_bin_counter\(1)))) # (!\inst_registerx|output\(1) & ((\inst_counterx|un_bin_counter\(1)) # 
-- (\inst_registerx|output\(0) $ (\inst_counterx|un_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registerx|output\(1),
	datab => \inst_counterx|un_bin_counter\(1),
	datac => \inst_registerx|output\(0),
	datad => \inst_counterx|un_bin_counter\(0),
	combout => \inst_compx|AEQB~0_combout\);

\inst_XY|up_downx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|up_downx~2_combout\ = (((!\inst_compx|AEQB~0_combout\ & \inst_compx|AGTB~0_combout\)) # (!\inst_compx|AGTB~3_combout\)) # (!\pb_n[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|AEQB~0_combout\,
	datab => \inst_compx|AGTB~0_combout\,
	datac => \pb_n[2]~input_o\,
	datad => \inst_compx|AGTB~3_combout\,
	combout => \inst_XY|up_downx~2_combout\);

\inst_compx|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|ALTB~0_combout\ = (\inst_registerx|output\(3) & (((\inst_registerx|output\(2) & !\inst_counterx|un_bin_counter\(2))) # (!\inst_counterx|un_bin_counter\(3)))) # (!\inst_registerx|output\(3) & (\inst_registerx|output\(2) & 
-- (!\inst_counterx|un_bin_counter\(2) & !\inst_counterx|un_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registerx|output\(3),
	datab => \inst_registerx|output\(2),
	datac => \inst_counterx|un_bin_counter\(2),
	datad => \inst_counterx|un_bin_counter\(3),
	combout => \inst_compx|ALTB~0_combout\);

\inst_compx|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|ALTB~1_combout\ = (\inst_registerx|output\(1) & (((\inst_registerx|output\(0) & !\inst_counterx|un_bin_counter\(0))) # (!\inst_counterx|un_bin_counter\(1)))) # (!\inst_registerx|output\(1) & (\inst_registerx|output\(0) & 
-- (!\inst_counterx|un_bin_counter\(0) & !\inst_counterx|un_bin_counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registerx|output\(1),
	datab => \inst_registerx|output\(0),
	datac => \inst_counterx|un_bin_counter\(0),
	datad => \inst_counterx|un_bin_counter\(1),
	combout => \inst_compx|ALTB~1_combout\);

\inst_XY|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|process_0~0_combout\ = (\pb_n[2]~input_o\ & ((\inst_compx|ALTB~0_combout\) # ((\inst_compx|AGTB~0_combout\ & \inst_compx|ALTB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \inst_compx|ALTB~0_combout\,
	datac => \inst_compx|AGTB~0_combout\,
	datad => \inst_compx|ALTB~1_combout\,
	combout => \inst_XY|process_0~0_combout\);

\inst_XY|up_downx\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|up_downx~combout\ = (\inst_XY|process_0~0_combout\) # ((\inst_XY|up_downx~combout\ & \inst_XY|up_downx~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|up_downx~combout\,
	datac => \inst_XY|up_downx~2_combout\,
	datad => \inst_XY|process_0~0_combout\,
	combout => \inst_XY|up_downx~combout\);

\inst_counterx|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counterx|process_0~0_combout\ = (\inst_XY|up_downx~combout\ & \inst_XY|clk_enx~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|up_downx~combout\,
	datab => \inst_XY|clk_enx~combout\,
	combout => \inst_counterx|process_0~0_combout\);

\inst_counterx|un_bin_counter[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counterx|un_bin_counter[3]~9_combout\ = \inst_counterx|un_bin_counter\(3) $ (\inst_counterx|process_0~0_combout\ $ (!\inst_counterx|un_bin_counter[2]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(3),
	datab => \inst_counterx|process_0~0_combout\,
	cin => \inst_counterx|un_bin_counter[2]~8\,
	combout => \inst_counterx|un_bin_counter[3]~9_combout\);

\inst_counterx|un_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_counterx|un_bin_counter[3]~9_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_XY|clk_enx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counterx|un_bin_counter\(3));

\inst_compx|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|AGTB~1_combout\ = (\inst_counterx|un_bin_counter\(3) & (((\inst_counterx|un_bin_counter\(2) & !\inst_registerx|output\(2))) # (!\inst_registerx|output\(3)))) # (!\inst_counterx|un_bin_counter\(3) & (\inst_counterx|un_bin_counter\(2) & 
-- (!\inst_registerx|output\(2) & !\inst_registerx|output\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(3),
	datab => \inst_counterx|un_bin_counter\(2),
	datac => \inst_registerx|output\(2),
	datad => \inst_registerx|output\(3),
	combout => \inst_compx|AGTB~1_combout\);

\inst_compx|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|AGTB~2_combout\ = (\inst_counterx|un_bin_counter\(1) & (((\inst_counterx|un_bin_counter\(0) & !\inst_registerx|output\(0))) # (!\inst_registerx|output\(1)))) # (!\inst_counterx|un_bin_counter\(1) & (\inst_counterx|un_bin_counter\(0) & 
-- (!\inst_registerx|output\(0) & !\inst_registerx|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(1),
	datab => \inst_counterx|un_bin_counter\(0),
	datac => \inst_registerx|output\(0),
	datad => \inst_registerx|output\(1),
	combout => \inst_compx|AGTB~2_combout\);

\inst_compx|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|AGTB~3_combout\ = (\inst_compx|AGTB~1_combout\) # ((\inst_compx|AGTB~0_combout\ & \inst_compx|AGTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|AGTB~1_combout\,
	datab => \inst_compx|AGTB~0_combout\,
	datac => \inst_compx|AGTB~2_combout\,
	combout => \inst_compx|AGTB~3_combout\);

\inst_compx|ALTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|ALTB~2_combout\ = (\inst_compx|ALTB~0_combout\) # ((\inst_compx|AGTB~0_combout\ & \inst_compx|ALTB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|ALTB~0_combout\,
	datab => \inst_compx|AGTB~0_combout\,
	datac => \inst_compx|ALTB~1_combout\,
	combout => \inst_compx|ALTB~2_combout\);

\inst_compx|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|AEQB~combout\ = (\inst_compx|AEQB~0_combout\) # (!\inst_compx|AGTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|AEQB~0_combout\,
	datad => \inst_compx|AGTB~0_combout\,
	combout => \inst_compx|AEQB~combout\);

\inst_XY|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|comb~0_combout\ = (\pb_n[2]~input_o\ & ((\inst_compx|AGTB~3_combout\) # ((\inst_compx|ALTB~2_combout\) # (!\inst_compx|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \inst_compx|AGTB~3_combout\,
	datac => \inst_compx|ALTB~2_combout\,
	datad => \inst_compx|AEQB~combout\,
	combout => \inst_XY|comb~0_combout\);

\inst_XY|clk_enx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|clk_enx~2_combout\ = (\inst_compx|AEQB~0_combout\) # (((\inst_compx|ALTB~2_combout\) # (!\pb_n[2]~input_o\)) # (!\inst_compx|AGTB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|AEQB~0_combout\,
	datab => \inst_compx|AGTB~0_combout\,
	datac => \inst_compx|ALTB~2_combout\,
	datad => \pb_n[2]~input_o\,
	combout => \inst_XY|clk_enx~2_combout\);

\inst_XY|clk_enx\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|clk_enx~combout\ = (\inst_XY|clk_enx~2_combout\ & ((\inst_XY|clk_enx~combout\) # (\inst_XY|comb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|clk_enx~combout\,
	datac => \inst_XY|comb~0_combout\,
	datad => \inst_XY|clk_enx~2_combout\,
	combout => \inst_XY|clk_enx~combout\);

\inst_counterx|un_bin_counter[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counterx|un_bin_counter[0]~11_combout\ = \inst_counterx|un_bin_counter\(0) $ (\inst_XY|clk_enx~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_counterx|un_bin_counter\(0),
	datad => \inst_XY|clk_enx~combout\,
	combout => \inst_counterx|un_bin_counter[0]~11_combout\);

\inst_counterx|un_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_counterx|un_bin_counter[0]~11_combout\,
	clrn => \pb_n[3]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counterx|un_bin_counter\(0));

\inst_sev_secx|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux5~0_combout\ = (\inst_counterx|un_bin_counter\(0) & ((\inst_counterx|un_bin_counter\(1) & ((!\inst_counterx|un_bin_counter\(3)))) # (!\inst_counterx|un_bin_counter\(1) & (!\inst_counterx|un_bin_counter\(2))))) # 
-- (!\inst_counterx|un_bin_counter\(0) & ((\inst_counterx|un_bin_counter\(1) & (!\inst_counterx|un_bin_counter\(2))) # (!\inst_counterx|un_bin_counter\(1) & ((\inst_counterx|un_bin_counter\(2)) # (\inst_counterx|un_bin_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(0),
	datab => \inst_counterx|un_bin_counter\(1),
	datac => \inst_counterx|un_bin_counter\(2),
	datad => \inst_counterx|un_bin_counter\(3),
	combout => \inst_sev_secx|Mux5~0_combout\);

\inst_sev_secy|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux5~0_combout\ = (\inst_countery|un_bin_counter\(0) & ((\inst_countery|un_bin_counter\(1) & ((!\inst_countery|un_bin_counter\(3)))) # (!\inst_countery|un_bin_counter\(1) & (!\inst_countery|un_bin_counter\(2))))) # 
-- (!\inst_countery|un_bin_counter\(0) & ((\inst_countery|un_bin_counter\(1) & (!\inst_countery|un_bin_counter\(2))) # (!\inst_countery|un_bin_counter\(1) & ((\inst_countery|un_bin_counter\(2)) # (\inst_countery|un_bin_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(0),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(2),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux5~0_combout\);

\inst_sev_mux|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[0]~0_combout\ = !\inst_sev_mux|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[0]~q\,
	combout => \inst_sev_mux|clk_proc:COUNT[0]~0_combout\);

\inst_sev_mux|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_sev_mux|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[0]~q\);

\inst_sev_mux|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[1]~1_combout\ = (\inst_sev_mux|clk_proc:COUNT[1]~q\ & (\inst_sev_mux|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\inst_sev_mux|clk_proc:COUNT[1]~q\ & (\inst_sev_mux|clk_proc:COUNT[0]~q\ & VCC))
-- \inst_sev_mux|clk_proc:COUNT[1]~2\ = CARRY((\inst_sev_mux|clk_proc:COUNT[1]~q\ & \inst_sev_mux|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[1]~q\,
	datab => \inst_sev_mux|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \inst_sev_mux|clk_proc:COUNT[1]~1_combout\,
	cout => \inst_sev_mux|clk_proc:COUNT[1]~2\);

\inst_sev_mux|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_sev_mux|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[1]~q\);

\inst_sev_mux|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[2]~1_combout\ = (\inst_sev_mux|clk_proc:COUNT[2]~q\ & (!\inst_sev_mux|clk_proc:COUNT[1]~2\)) # (!\inst_sev_mux|clk_proc:COUNT[2]~q\ & ((\inst_sev_mux|clk_proc:COUNT[1]~2\) # (GND)))
-- \inst_sev_mux|clk_proc:COUNT[2]~2\ = CARRY((!\inst_sev_mux|clk_proc:COUNT[1]~2\) # (!\inst_sev_mux|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[1]~2\,
	combout => \inst_sev_mux|clk_proc:COUNT[2]~1_combout\,
	cout => \inst_sev_mux|clk_proc:COUNT[2]~2\);

\inst_sev_mux|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_sev_mux|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[2]~q\);

\inst_sev_mux|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[3]~1_combout\ = (\inst_sev_mux|clk_proc:COUNT[3]~q\ & (\inst_sev_mux|clk_proc:COUNT[2]~2\ $ (GND))) # (!\inst_sev_mux|clk_proc:COUNT[3]~q\ & (!\inst_sev_mux|clk_proc:COUNT[2]~2\ & VCC))
-- \inst_sev_mux|clk_proc:COUNT[3]~2\ = CARRY((\inst_sev_mux|clk_proc:COUNT[3]~q\ & !\inst_sev_mux|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[2]~2\,
	combout => \inst_sev_mux|clk_proc:COUNT[3]~1_combout\,
	cout => \inst_sev_mux|clk_proc:COUNT[3]~2\);

\inst_sev_mux|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_sev_mux|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[3]~q\);

\inst_sev_mux|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[4]~1_combout\ = (\inst_sev_mux|clk_proc:COUNT[4]~q\ & (!\inst_sev_mux|clk_proc:COUNT[3]~2\)) # (!\inst_sev_mux|clk_proc:COUNT[4]~q\ & ((\inst_sev_mux|clk_proc:COUNT[3]~2\) # (GND)))
-- \inst_sev_mux|clk_proc:COUNT[4]~2\ = CARRY((!\inst_sev_mux|clk_proc:COUNT[3]~2\) # (!\inst_sev_mux|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[3]~2\,
	combout => \inst_sev_mux|clk_proc:COUNT[4]~1_combout\,
	cout => \inst_sev_mux|clk_proc:COUNT[4]~2\);

\inst_sev_mux|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_sev_mux|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[4]~q\);

\inst_sev_mux|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[5]~1_combout\ = (\inst_sev_mux|clk_proc:COUNT[5]~q\ & (\inst_sev_mux|clk_proc:COUNT[4]~2\ $ (GND))) # (!\inst_sev_mux|clk_proc:COUNT[5]~q\ & (!\inst_sev_mux|clk_proc:COUNT[4]~2\ & VCC))
-- \inst_sev_mux|clk_proc:COUNT[5]~2\ = CARRY((\inst_sev_mux|clk_proc:COUNT[5]~q\ & !\inst_sev_mux|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[4]~2\,
	combout => \inst_sev_mux|clk_proc:COUNT[5]~1_combout\,
	cout => \inst_sev_mux|clk_proc:COUNT[5]~2\);

\inst_sev_mux|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_sev_mux|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[5]~q\);

\inst_sev_mux|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[6]~1_combout\ = (\inst_sev_mux|clk_proc:COUNT[6]~q\ & (!\inst_sev_mux|clk_proc:COUNT[5]~2\)) # (!\inst_sev_mux|clk_proc:COUNT[6]~q\ & ((\inst_sev_mux|clk_proc:COUNT[5]~2\) # (GND)))
-- \inst_sev_mux|clk_proc:COUNT[6]~2\ = CARRY((!\inst_sev_mux|clk_proc:COUNT[5]~2\) # (!\inst_sev_mux|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[5]~2\,
	combout => \inst_sev_mux|clk_proc:COUNT[6]~1_combout\,
	cout => \inst_sev_mux|clk_proc:COUNT[6]~2\);

\inst_sev_mux|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_sev_mux|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[6]~q\);

\inst_sev_mux|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[7]~1_combout\ = (\inst_sev_mux|clk_proc:COUNT[7]~q\ & (\inst_sev_mux|clk_proc:COUNT[6]~2\ $ (GND))) # (!\inst_sev_mux|clk_proc:COUNT[7]~q\ & (!\inst_sev_mux|clk_proc:COUNT[6]~2\ & VCC))
-- \inst_sev_mux|clk_proc:COUNT[7]~2\ = CARRY((\inst_sev_mux|clk_proc:COUNT[7]~q\ & !\inst_sev_mux|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[6]~2\,
	combout => \inst_sev_mux|clk_proc:COUNT[7]~1_combout\,
	cout => \inst_sev_mux|clk_proc:COUNT[7]~2\);

\inst_sev_mux|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_sev_mux|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[7]~q\);

\inst_sev_mux|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[8]~1_combout\ = (\inst_sev_mux|clk_proc:COUNT[8]~q\ & (!\inst_sev_mux|clk_proc:COUNT[7]~2\)) # (!\inst_sev_mux|clk_proc:COUNT[8]~q\ & ((\inst_sev_mux|clk_proc:COUNT[7]~2\) # (GND)))
-- \inst_sev_mux|clk_proc:COUNT[8]~2\ = CARRY((!\inst_sev_mux|clk_proc:COUNT[7]~2\) # (!\inst_sev_mux|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[7]~2\,
	combout => \inst_sev_mux|clk_proc:COUNT[8]~1_combout\,
	cout => \inst_sev_mux|clk_proc:COUNT[8]~2\);

\inst_sev_mux|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_sev_mux|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[8]~q\);

\inst_sev_mux|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[9]~1_combout\ = (\inst_sev_mux|clk_proc:COUNT[9]~q\ & (\inst_sev_mux|clk_proc:COUNT[8]~2\ $ (GND))) # (!\inst_sev_mux|clk_proc:COUNT[9]~q\ & (!\inst_sev_mux|clk_proc:COUNT[8]~2\ & VCC))
-- \inst_sev_mux|clk_proc:COUNT[9]~2\ = CARRY((\inst_sev_mux|clk_proc:COUNT[9]~q\ & !\inst_sev_mux|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[8]~2\,
	combout => \inst_sev_mux|clk_proc:COUNT[9]~1_combout\,
	cout => \inst_sev_mux|clk_proc:COUNT[9]~2\);

\inst_sev_mux|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_sev_mux|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[9]~q\);

\inst_sev_mux|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[10]~1_combout\ = \inst_sev_mux|clk_proc:COUNT[10]~q\ $ (\inst_sev_mux|clk_proc:COUNT[9]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	cin => \inst_sev_mux|clk_proc:COUNT[9]~2\,
	combout => \inst_sev_mux|clk_proc:COUNT[10]~1_combout\);

\inst_sev_mux|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_sev_mux|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[10]~q\);

\inst_sev_mux|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT_TEMP[1]~0_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & (\inst_sev_secx|Mux5~0_combout\)) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((\inst_sev_secy|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_secx|Mux5~0_combout\,
	datab => \inst_sev_secy|Mux5~0_combout\,
	datad => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	combout => \inst_sev_mux|DOUT_TEMP[1]~0_combout\);

\inst_sev_secx|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux1~0_combout\ = (\inst_counterx|un_bin_counter\(2) & ((\inst_counterx|un_bin_counter\(1) $ (!\inst_counterx|un_bin_counter\(3))) # (!\inst_counterx|un_bin_counter\(0)))) # (!\inst_counterx|un_bin_counter\(2) & 
-- (((\inst_counterx|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(0),
	datab => \inst_counterx|un_bin_counter\(1),
	datac => \inst_counterx|un_bin_counter\(2),
	datad => \inst_counterx|un_bin_counter\(3),
	combout => \inst_sev_secx|Mux1~0_combout\);

\inst_sev_secy|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux1~0_combout\ = (\inst_countery|un_bin_counter\(2) & ((\inst_countery|un_bin_counter\(1) $ (!\inst_countery|un_bin_counter\(3))) # (!\inst_countery|un_bin_counter\(0)))) # (!\inst_countery|un_bin_counter\(2) & 
-- (((\inst_countery|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(0),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(2),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux1~0_combout\);

\inst_sev_mux|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT_TEMP[5]~1_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & (\inst_sev_secx|Mux1~0_combout\)) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((\inst_sev_secy|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_secx|Mux1~0_combout\,
	datab => \inst_sev_secy|Mux1~0_combout\,
	datad => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	combout => \inst_sev_mux|DOUT_TEMP[5]~1_combout\);

\inst_sev_secx|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux0~0_combout\ = (\inst_counterx|un_bin_counter\(3) & (((!\inst_counterx|un_bin_counter\(1) & \inst_counterx|un_bin_counter\(2))))) # (!\inst_counterx|un_bin_counter\(3) & (\inst_counterx|un_bin_counter\(0) & 
-- (\inst_counterx|un_bin_counter\(1) $ (!\inst_counterx|un_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(0),
	datab => \inst_counterx|un_bin_counter\(1),
	datac => \inst_counterx|un_bin_counter\(2),
	datad => \inst_counterx|un_bin_counter\(3),
	combout => \inst_sev_secx|Mux0~0_combout\);

\inst_sev_secy|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux0~0_combout\ = (\inst_countery|un_bin_counter\(3) & (((!\inst_countery|un_bin_counter\(1) & \inst_countery|un_bin_counter\(2))))) # (!\inst_countery|un_bin_counter\(3) & (\inst_countery|un_bin_counter\(0) & 
-- (\inst_countery|un_bin_counter\(1) $ (!\inst_countery|un_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(0),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(2),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux0~0_combout\);

\inst_sev_mux|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT_TEMP[6]~2_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & (!\inst_sev_secx|Mux0~0_combout\)) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((!\inst_sev_secy|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_secx|Mux0~0_combout\,
	datab => \inst_sev_secy|Mux0~0_combout\,
	datad => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	combout => \inst_sev_mux|DOUT_TEMP[6]~2_combout\);

\inst_XY|error\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|error~combout\ = (\inst_extender|Selector4~0_combout\ & ((\inst_XY|error~combout\) # (!\pb_n[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|error~combout\,
	datac => \pb_n[2]~input_o\,
	datad => \inst_extender|Selector4~0_combout\,
	combout => \inst_XY|error~combout\);

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

\inst_grappler|next_state.Opening~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|next_state.Opening~0_combout\ = (!\inst_grappler|current_state.Closing~q\ & (!\pb_n[0]~input_o\ & \inst_grappler|current_state.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_grappler|current_state.Closing~q\,
	datab => \pb_n[0]~input_o\,
	datad => \inst_grappler|current_state.Start~q\,
	combout => \inst_grappler|next_state.Opening~0_combout\);

\inst_extender|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector5~0_combout\ = (!\inst_extender|current_state.Right_shift~q\ & (!\inst_extender|current_state.left_shift~q\ & \inst_extender|Equal2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|current_state.Right_shift~q\,
	datab => \inst_extender|current_state.left_shift~q\,
	datad => \inst_extender|Equal2~0_combout\,
	combout => \inst_extender|Selector5~0_combout\);

\inst_grappler|current_state.Opening\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_grappler|next_state.Opening~0_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_extender|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_grappler|current_state.Opening~q\);

\inst_grappler|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|Selector1~0_combout\ = (\inst_grappler|current_state.Start~q\ & (\pb_n[0]~input_o\ & !\inst_grappler|current_state.Opening~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_grappler|current_state.Start~q\,
	datab => \pb_n[0]~input_o\,
	datad => \inst_grappler|current_state.Opening~q\,
	combout => \inst_grappler|Selector1~0_combout\);

\inst_grappler|current_state.close\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_grappler|Selector1~0_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_extender|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_grappler|current_state.close~q\);

\inst_grappler|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|Selector0~0_combout\ = ((\inst_grappler|current_state.Closing~q\) # (\inst_grappler|current_state.close~q\)) # (!\pb_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[0]~input_o\,
	datac => \inst_grappler|current_state.Closing~q\,
	datad => \inst_grappler|current_state.close~q\,
	combout => \inst_grappler|Selector0~0_combout\);

\inst_grappler|current_state.Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_grappler|Selector0~0_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_extender|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_grappler|current_state.Start~q\);

\inst_grappler|next_state.Closing~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|next_state.Closing~0_combout\ = (!\pb_n[0]~input_o\ & ((\inst_grappler|current_state.Closing~q\) # (!\inst_grappler|current_state.Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[0]~input_o\,
	datab => \inst_grappler|current_state.Start~q\,
	datad => \inst_grappler|current_state.Closing~q\,
	combout => \inst_grappler|next_state.Closing~0_combout\);

\inst_grappler|current_state.Closing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \inst_grappler|next_state.Closing~0_combout\,
	clrn => \pb_n[3]~input_o\,
	ena => \inst_extender|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_grappler|current_state.Closing~q\);

\inst_grappler|Grappler_on~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|Grappler_on~0_combout\ = (\inst_grappler|current_state.Closing~q\) # (!\inst_grappler|current_state.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_grappler|current_state.Closing~q\,
	datad => \inst_grappler|current_state.Start~q\,
	combout => \inst_grappler|Grappler_on~0_combout\);

\inst_sev_secx|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux6~0_combout\ = (\inst_counterx|un_bin_counter\(0) & ((\inst_counterx|un_bin_counter\(2)) # (\inst_counterx|un_bin_counter\(1) $ (\inst_counterx|un_bin_counter\(3))))) # (!\inst_counterx|un_bin_counter\(0) & 
-- ((\inst_counterx|un_bin_counter\(1)) # ((\inst_counterx|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(0),
	datab => \inst_counterx|un_bin_counter\(1),
	datac => \inst_counterx|un_bin_counter\(2),
	datad => \inst_counterx|un_bin_counter\(3),
	combout => \inst_sev_secx|Mux6~0_combout\);

\inst_sev_secy|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux6~0_combout\ = (\inst_countery|un_bin_counter\(0) & ((\inst_countery|un_bin_counter\(2)) # (\inst_countery|un_bin_counter\(1) $ (\inst_countery|un_bin_counter\(3))))) # (!\inst_countery|un_bin_counter\(0) & 
-- ((\inst_countery|un_bin_counter\(1)) # ((\inst_countery|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(0),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(2),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux6~0_combout\);

\inst_sev_mux|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT[0]~0_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & (\inst_sev_secx|Mux6~0_combout\)) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((\inst_sev_secy|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_secx|Mux6~0_combout\,
	datab => \inst_sev_secy|Mux6~0_combout\,
	datad => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	combout => \inst_sev_mux|DOUT[0]~0_combout\);

\inst_sev_secx|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux4~0_combout\ = (\inst_counterx|un_bin_counter\(2) & (((!\inst_counterx|un_bin_counter\(0) & !\inst_counterx|un_bin_counter\(1))) # (!\inst_counterx|un_bin_counter\(3)))) # (!\inst_counterx|un_bin_counter\(2) & 
-- ((\inst_counterx|un_bin_counter\(0)) # ((\inst_counterx|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(0),
	datab => \inst_counterx|un_bin_counter\(1),
	datac => \inst_counterx|un_bin_counter\(2),
	datad => \inst_counterx|un_bin_counter\(3),
	combout => \inst_sev_secx|Mux4~0_combout\);

\inst_sev_secy|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux4~0_combout\ = (\inst_countery|un_bin_counter\(2) & (((!\inst_countery|un_bin_counter\(0) & !\inst_countery|un_bin_counter\(1))) # (!\inst_countery|un_bin_counter\(3)))) # (!\inst_countery|un_bin_counter\(2) & 
-- ((\inst_countery|un_bin_counter\(0)) # ((\inst_countery|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(0),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(2),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux4~0_combout\);

\inst_sev_mux|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT[2]~2_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & (\inst_sev_secx|Mux4~0_combout\)) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((\inst_sev_secy|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_secx|Mux4~0_combout\,
	datab => \inst_sev_secy|Mux4~0_combout\,
	datad => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	combout => \inst_sev_mux|DOUT[2]~2_combout\);

\inst_sev_secx|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux3~0_combout\ = (\inst_counterx|un_bin_counter\(0) & (\inst_counterx|un_bin_counter\(2) $ (((\inst_counterx|un_bin_counter\(1)) # (\inst_counterx|un_bin_counter\(3)))))) # (!\inst_counterx|un_bin_counter\(0) & 
-- (\inst_counterx|un_bin_counter\(1) $ (((!\inst_counterx|un_bin_counter\(2) & \inst_counterx|un_bin_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(0),
	datab => \inst_counterx|un_bin_counter\(1),
	datac => \inst_counterx|un_bin_counter\(2),
	datad => \inst_counterx|un_bin_counter\(3),
	combout => \inst_sev_secx|Mux3~0_combout\);

\inst_sev_secy|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux3~0_combout\ = (\inst_countery|un_bin_counter\(0) & (\inst_countery|un_bin_counter\(2) $ (((\inst_countery|un_bin_counter\(1)) # (\inst_countery|un_bin_counter\(3)))))) # (!\inst_countery|un_bin_counter\(0) & 
-- (\inst_countery|un_bin_counter\(1) $ (((!\inst_countery|un_bin_counter\(2) & \inst_countery|un_bin_counter\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(0),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(2),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux3~0_combout\);

\inst_sev_mux|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT[3]~3_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & (\inst_sev_secx|Mux3~0_combout\)) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((\inst_sev_secy|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_secx|Mux3~0_combout\,
	datab => \inst_sev_secy|Mux3~0_combout\,
	datad => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	combout => \inst_sev_mux|DOUT[3]~3_combout\);

\inst_sev_secx|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux2~0_combout\ = (\inst_counterx|un_bin_counter\(0) & (\inst_counterx|un_bin_counter\(1) & ((\inst_counterx|un_bin_counter\(3))))) # (!\inst_counterx|un_bin_counter\(0) & ((\inst_counterx|un_bin_counter\(1)) # 
-- ((!\inst_counterx|un_bin_counter\(2) & \inst_counterx|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(0),
	datab => \inst_counterx|un_bin_counter\(1),
	datac => \inst_counterx|un_bin_counter\(2),
	datad => \inst_counterx|un_bin_counter\(3),
	combout => \inst_sev_secx|Mux2~0_combout\);

\inst_sev_secy|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux2~0_combout\ = (\inst_countery|un_bin_counter\(0) & (\inst_countery|un_bin_counter\(1) & ((\inst_countery|un_bin_counter\(3))))) # (!\inst_countery|un_bin_counter\(0) & ((\inst_countery|un_bin_counter\(1)) # 
-- ((!\inst_countery|un_bin_counter\(2) & \inst_countery|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(0),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(2),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux2~0_combout\);

\inst_sev_mux|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT[4]~4_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & (\inst_sev_secx|Mux2~0_combout\)) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((\inst_sev_secy|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_secx|Mux2~0_combout\,
	datab => \inst_sev_secy|Mux2~0_combout\,
	datad => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	combout => \inst_sev_mux|DOUT[4]~4_combout\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_xreg(0) <= \xreg[0]~output_o\;

ww_xreg(1) <= \xreg[1]~output_o\;

ww_xreg(2) <= \xreg[2]~output_o\;

ww_xreg(3) <= \xreg[3]~output_o\;

ww_yreg(0) <= \yreg[0]~output_o\;

ww_yreg(1) <= \yreg[1]~output_o\;

ww_yreg(2) <= \yreg[2]~output_o\;

ww_yreg(3) <= \yreg[3]~output_o\;

ww_xPOS(0) <= \xPOS[0]~output_o\;

ww_xPOS(1) <= \xPOS[1]~output_o\;

ww_xPOS(2) <= \xPOS[2]~output_o\;

ww_xPOS(3) <= \xPOS[3]~output_o\;

ww_yPOS(0) <= \yPOS[0]~output_o\;

ww_yPOS(1) <= \yPOS[1]~output_o\;

ww_yPOS(2) <= \yPOS[2]~output_o\;

ww_yPOS(3) <= \yPOS[3]~output_o\;

ww_extender_en_out <= \extender_en_out~output_o\;

ww_extender_out_out <= \extender_out_out~output_o\;

ww_left_right_out <= \left_right_out~output_o\;

ww_clk_ext_out <= \clk_ext_out~output_o\;

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


