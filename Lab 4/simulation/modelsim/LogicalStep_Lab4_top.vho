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

-- DATE "03/31/2022 09:51:11"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


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
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab4_top;

-- Design Ports Information
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- Clk	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


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
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock_Selector|clk_divider:counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
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
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \Clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[2]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[2]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[2]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[3]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[3]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[3]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[4]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[4]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[4]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[5]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[5]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[5]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[6]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[6]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[6]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[7]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[7]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[7]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[8]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[8]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[8]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[9]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[9]~q\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~2_cout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~4_cout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~6_cout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~8_cout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~10_cout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~12_cout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~14_cout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~16_cout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~18_cout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~19_combout\ : std_logic;
SIGNAL \inst_sev_mux|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[9]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[1]~4_cout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[11]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[11]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[12]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[12]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[13]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[13]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[14]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[14]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[15]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[15]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[16]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[16]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[17]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[17]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[18]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[18]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[19]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[19]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[20]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[20]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[21]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[21]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[22]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[22]~2\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[23]~1_combout\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \inst_Bi_shift_reg|sreg~0_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[2]~9\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \inst_compx|ALTB~1_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \inst_compx|ALTB~2_combout\ : std_logic;
SIGNAL \inst_compx|ALTB~3_combout\ : std_logic;
SIGNAL \inst_XY|clk_enx~2_combout\ : std_logic;
SIGNAL \inst_compx|AGTB~0_combout\ : std_logic;
SIGNAL \inst_compx|AGTB~1_combout\ : std_logic;
SIGNAL \inst_compx|AGTB~2_combout\ : std_logic;
SIGNAL \inst_XY|comb~0_combout\ : std_logic;
SIGNAL \inst_XY|clk_enx~combout\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[1]~7\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \inst_compx|ALTB~0_combout\ : std_logic;
SIGNAL \inst_compx|AEQB~combout\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \inst_extender|Equal2~0_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \inst_registery|output[0]~feeder_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \inst_compy|AGTB~1_combout\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[1]~7\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[2]~9\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \inst_compy|AGTB~0_combout\ : std_logic;
SIGNAL \inst_compy|AGTB~2_combout\ : std_logic;
SIGNAL \inst_compy|ALTB~1_combout\ : std_logic;
SIGNAL \inst_compy|ALTB~2_combout\ : std_logic;
SIGNAL \inst_compy|ALTB~3_combout\ : std_logic;
SIGNAL \inst_compy|AEQB~0_combout\ : std_logic;
SIGNAL \inst_compy|AEQB~combout\ : std_logic;
SIGNAL \inst_XY|comb~1_combout\ : std_logic;
SIGNAL \inst_XY|clk_eny~2_combout\ : std_logic;
SIGNAL \inst_XY|clk_eny~combout\ : std_logic;
SIGNAL \inst_XY|process_0~1_combout\ : std_logic;
SIGNAL \inst_XY|up_downy~2_combout\ : std_logic;
SIGNAL \inst_XY|up_downy~combout\ : std_logic;
SIGNAL \inst_countery|process_0~0_combout\ : std_logic;
SIGNAL \inst_countery|un_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \inst_compy|ALTB~0_combout\ : std_logic;
SIGNAL \inst_XY|extender_en~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector1~0_combout\ : std_logic;
SIGNAL \inst_extender|current_state.Pressed~q\ : std_logic;
SIGNAL \inst_extender|Selector3~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector3~1_combout\ : std_logic;
SIGNAL \inst_extender|current_state.left_shift~q\ : std_logic;
SIGNAL \inst_extender|Selector0~1_combout\ : std_logic;
SIGNAL \inst_extender|Selector0~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector0~2_combout\ : std_logic;
SIGNAL \inst_extender|Selector0~3_combout\ : std_logic;
SIGNAL \inst_extender|current_state.Idle~q\ : std_logic;
SIGNAL \inst_extender|clk_en~0_combout\ : std_logic;
SIGNAL \inst_Bi_shift_reg|sreg~1_combout\ : std_logic;
SIGNAL \inst_extender|Selector2~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector2~1_combout\ : std_logic;
SIGNAL \inst_extender|current_state.Right_shift~q\ : std_logic;
SIGNAL \inst_Bi_shift_reg|sreg~2_combout\ : std_logic;
SIGNAL \inst_Bi_shift_reg|sreg~3_combout\ : std_logic;
SIGNAL \inst_extender|Selector4~0_combout\ : std_logic;
SIGNAL \inst_XY|Capture_XY~combout\ : std_logic;
SIGNAL \inst_compx|AEQB~0_combout\ : std_logic;
SIGNAL \inst_XY|up_downx~2_combout\ : std_logic;
SIGNAL \inst_XY|process_0~0_combout\ : std_logic;
SIGNAL \inst_XY|up_downx~combout\ : std_logic;
SIGNAL \inst_counterx|process_0~0_combout\ : std_logic;
SIGNAL \inst_counterx|un_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux5~0_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux5~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux1~0_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux1~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux0~0_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux0~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \inst_XY|error~combout\ : std_logic;
SIGNAL \leds~0_combout\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \inst_grappler|next_state.Closing~0_combout\ : std_logic;
SIGNAL \inst_extender|Selector5~0_combout\ : std_logic;
SIGNAL \inst_grappler|current_state.Closing~q\ : std_logic;
SIGNAL \inst_grappler|next_state.Opening~0_combout\ : std_logic;
SIGNAL \inst_grappler|current_state.Opening~q\ : std_logic;
SIGNAL \inst_grappler|Selector1~0_combout\ : std_logic;
SIGNAL \inst_grappler|current_state.close~q\ : std_logic;
SIGNAL \inst_grappler|Selector0~0_combout\ : std_logic;
SIGNAL \inst_grappler|current_state.Start~q\ : std_logic;
SIGNAL \inst_grappler|Grappler_on~0_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux6~0_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux6~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux4~0_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux4~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux3~0_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux3~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst_sev_secy|Mux2~0_combout\ : std_logic;
SIGNAL \inst_sev_secx|Mux2~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst_countery|un_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_counterx|un_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_Bi_shift_reg|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_registerx|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_registery|output\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_sev_mux|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst_sev_mux|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst_sev_mux|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst_sev_mux|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \inst_grappler|ALT_INV_Grappler_on~0_combout\ : std_logic;
SIGNAL \inst_sev_mux|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clk <= Clk;
ww_pb_n <= pb_n;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk~input_o\);

\Clock_Selector|clk_divider:counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock_Selector|clk_divider:counter[23]~q\);
\inst_sev_mux|ALT_INV_DOUT[4]~4_combout\ <= NOT \inst_sev_mux|DOUT[4]~4_combout\;
\inst_sev_mux|ALT_INV_DOUT[3]~3_combout\ <= NOT \inst_sev_mux|DOUT[3]~3_combout\;
\inst_sev_mux|ALT_INV_DOUT[2]~2_combout\ <= NOT \inst_sev_mux|DOUT[2]~2_combout\;
\inst_sev_mux|ALT_INV_DOUT[0]~0_combout\ <= NOT \inst_sev_mux|DOUT[0]~0_combout\;
\inst_grappler|ALT_INV_Grappler_on~0_combout\ <= NOT \inst_grappler|Grappler_on~0_combout\;
\inst_sev_mux|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \inst_sev_mux|clk_proc:COUNT[10]~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y14_N24
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
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

-- Location: IOOBUF_X6_Y10_N30
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

-- Location: IOOBUF_X3_Y10_N16
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

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds~0_combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
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

-- Location: IOOBUF_X10_Y17_N2
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

-- Location: IOOBUF_X10_Y20_N23
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

-- Location: IOOBUF_X10_Y21_N23
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

-- Location: IOOBUF_X10_Y22_N23
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

-- Location: IOOBUF_X3_Y0_N16
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

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_sev_mux|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
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

-- Location: CLKCTRL_G4
\Clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X14_Y19_N4
\inst_sev_mux|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[0]~0_combout\ = !\inst_sev_mux|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_sev_mux|clk_proc:COUNT[0]~q\,
	combout => \inst_sev_mux|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X14_Y19_N5
\inst_sev_mux|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst_sev_mux|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X14_Y19_N10
\Clock_Selector|clk_divider:counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[1]~1_combout\ = (\Clock_Selector|clk_divider:counter[1]~q\ & (\inst_sev_mux|clk_proc:COUNT[0]~q\ $ (VCC))) # (!\Clock_Selector|clk_divider:counter[1]~q\ & (\inst_sev_mux|clk_proc:COUNT[0]~q\ & VCC))
-- \Clock_Selector|clk_divider:counter[1]~2\ = CARRY((\Clock_Selector|clk_divider:counter[1]~q\ & \inst_sev_mux|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[1]~q\,
	datab => \inst_sev_mux|clk_proc:COUNT[0]~q\,
	datad => VCC,
	combout => \Clock_Selector|clk_divider:counter[1]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[1]~2\);

-- Location: FF_X14_Y19_N11
\Clock_Selector|clk_divider:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[1]~q\);

-- Location: LCCOMB_X14_Y19_N12
\Clock_Selector|clk_divider:counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[2]~1_combout\ = (\Clock_Selector|clk_divider:counter[2]~q\ & (!\Clock_Selector|clk_divider:counter[1]~2\)) # (!\Clock_Selector|clk_divider:counter[2]~q\ & ((\Clock_Selector|clk_divider:counter[1]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[2]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[1]~2\) # (!\Clock_Selector|clk_divider:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[1]~2\,
	combout => \Clock_Selector|clk_divider:counter[2]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[2]~2\);

-- Location: FF_X14_Y19_N13
\Clock_Selector|clk_divider:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[2]~q\);

-- Location: LCCOMB_X14_Y19_N14
\Clock_Selector|clk_divider:counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[3]~1_combout\ = (\Clock_Selector|clk_divider:counter[3]~q\ & (\Clock_Selector|clk_divider:counter[2]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[3]~q\ & (!\Clock_Selector|clk_divider:counter[2]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[3]~2\ = CARRY((\Clock_Selector|clk_divider:counter[3]~q\ & !\Clock_Selector|clk_divider:counter[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[2]~2\,
	combout => \Clock_Selector|clk_divider:counter[3]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[3]~2\);

-- Location: FF_X14_Y19_N15
\Clock_Selector|clk_divider:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[3]~q\);

-- Location: LCCOMB_X14_Y19_N16
\Clock_Selector|clk_divider:counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[4]~1_combout\ = (\Clock_Selector|clk_divider:counter[4]~q\ & (!\Clock_Selector|clk_divider:counter[3]~2\)) # (!\Clock_Selector|clk_divider:counter[4]~q\ & ((\Clock_Selector|clk_divider:counter[3]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[4]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[3]~2\) # (!\Clock_Selector|clk_divider:counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[4]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[3]~2\,
	combout => \Clock_Selector|clk_divider:counter[4]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[4]~2\);

-- Location: FF_X14_Y19_N17
\Clock_Selector|clk_divider:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[4]~q\);

-- Location: LCCOMB_X14_Y19_N18
\Clock_Selector|clk_divider:counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[5]~1_combout\ = (\Clock_Selector|clk_divider:counter[5]~q\ & (\Clock_Selector|clk_divider:counter[4]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[5]~q\ & (!\Clock_Selector|clk_divider:counter[4]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[5]~2\ = CARRY((\Clock_Selector|clk_divider:counter[5]~q\ & !\Clock_Selector|clk_divider:counter[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[5]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[4]~2\,
	combout => \Clock_Selector|clk_divider:counter[5]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[5]~2\);

-- Location: FF_X14_Y19_N19
\Clock_Selector|clk_divider:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[5]~q\);

-- Location: LCCOMB_X14_Y19_N20
\Clock_Selector|clk_divider:counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[6]~1_combout\ = (\Clock_Selector|clk_divider:counter[6]~q\ & (!\Clock_Selector|clk_divider:counter[5]~2\)) # (!\Clock_Selector|clk_divider:counter[6]~q\ & ((\Clock_Selector|clk_divider:counter[5]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[6]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[5]~2\) # (!\Clock_Selector|clk_divider:counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[6]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[5]~2\,
	combout => \Clock_Selector|clk_divider:counter[6]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[6]~2\);

-- Location: FF_X14_Y19_N21
\Clock_Selector|clk_divider:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[6]~q\);

-- Location: LCCOMB_X14_Y19_N22
\Clock_Selector|clk_divider:counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[7]~1_combout\ = (\Clock_Selector|clk_divider:counter[7]~q\ & (\Clock_Selector|clk_divider:counter[6]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[7]~q\ & (!\Clock_Selector|clk_divider:counter[6]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[7]~2\ = CARRY((\Clock_Selector|clk_divider:counter[7]~q\ & !\Clock_Selector|clk_divider:counter[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[7]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[6]~2\,
	combout => \Clock_Selector|clk_divider:counter[7]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[7]~2\);

-- Location: FF_X14_Y19_N23
\Clock_Selector|clk_divider:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[7]~q\);

-- Location: LCCOMB_X14_Y19_N24
\Clock_Selector|clk_divider:counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[8]~1_combout\ = (\Clock_Selector|clk_divider:counter[8]~q\ & (!\Clock_Selector|clk_divider:counter[7]~2\)) # (!\Clock_Selector|clk_divider:counter[8]~q\ & ((\Clock_Selector|clk_divider:counter[7]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[8]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[7]~2\) # (!\Clock_Selector|clk_divider:counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[8]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[7]~2\,
	combout => \Clock_Selector|clk_divider:counter[8]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[8]~2\);

-- Location: FF_X14_Y19_N25
\Clock_Selector|clk_divider:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[8]~q\);

-- Location: LCCOMB_X14_Y19_N26
\Clock_Selector|clk_divider:counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[9]~1_combout\ = (\Clock_Selector|clk_divider:counter[9]~q\ & (\Clock_Selector|clk_divider:counter[8]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[9]~q\ & (!\Clock_Selector|clk_divider:counter[8]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[9]~2\ = CARRY((\Clock_Selector|clk_divider:counter[9]~q\ & !\Clock_Selector|clk_divider:counter[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[9]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[8]~2\,
	combout => \Clock_Selector|clk_divider:counter[9]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[9]~2\);

-- Location: FF_X14_Y19_N27
\Clock_Selector|clk_divider:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[9]~q\);

-- Location: LCCOMB_X15_Y19_N4
\inst_sev_mux|clk_proc:COUNT[10]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[10]~2_cout\ = CARRY((\Clock_Selector|clk_divider:counter[1]~q\ & \inst_sev_mux|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[1]~q\,
	datab => \inst_sev_mux|clk_proc:COUNT[0]~q\,
	datad => VCC,
	cout => \inst_sev_mux|clk_proc:COUNT[10]~2_cout\);

-- Location: LCCOMB_X15_Y19_N6
\inst_sev_mux|clk_proc:COUNT[10]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[10]~4_cout\ = CARRY((!\inst_sev_mux|clk_proc:COUNT[10]~2_cout\) # (!\Clock_Selector|clk_divider:counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[2]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[10]~2_cout\,
	cout => \inst_sev_mux|clk_proc:COUNT[10]~4_cout\);

-- Location: LCCOMB_X15_Y19_N8
\inst_sev_mux|clk_proc:COUNT[10]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[10]~6_cout\ = CARRY((\Clock_Selector|clk_divider:counter[3]~q\ & !\inst_sev_mux|clk_proc:COUNT[10]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[3]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[10]~4_cout\,
	cout => \inst_sev_mux|clk_proc:COUNT[10]~6_cout\);

-- Location: LCCOMB_X15_Y19_N10
\inst_sev_mux|clk_proc:COUNT[10]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[10]~8_cout\ = CARRY((!\inst_sev_mux|clk_proc:COUNT[10]~6_cout\) # (!\Clock_Selector|clk_divider:counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[4]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[10]~6_cout\,
	cout => \inst_sev_mux|clk_proc:COUNT[10]~8_cout\);

-- Location: LCCOMB_X15_Y19_N12
\inst_sev_mux|clk_proc:COUNT[10]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[10]~10_cout\ = CARRY((\Clock_Selector|clk_divider:counter[5]~q\ & !\inst_sev_mux|clk_proc:COUNT[10]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[5]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[10]~8_cout\,
	cout => \inst_sev_mux|clk_proc:COUNT[10]~10_cout\);

-- Location: LCCOMB_X15_Y19_N14
\inst_sev_mux|clk_proc:COUNT[10]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[10]~12_cout\ = CARRY((!\inst_sev_mux|clk_proc:COUNT[10]~10_cout\) # (!\Clock_Selector|clk_divider:counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[6]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[10]~10_cout\,
	cout => \inst_sev_mux|clk_proc:COUNT[10]~12_cout\);

-- Location: LCCOMB_X15_Y19_N16
\inst_sev_mux|clk_proc:COUNT[10]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[10]~14_cout\ = CARRY((\Clock_Selector|clk_divider:counter[7]~q\ & !\inst_sev_mux|clk_proc:COUNT[10]~12_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[7]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[10]~12_cout\,
	cout => \inst_sev_mux|clk_proc:COUNT[10]~14_cout\);

-- Location: LCCOMB_X15_Y19_N18
\inst_sev_mux|clk_proc:COUNT[10]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[10]~16_cout\ = CARRY((!\inst_sev_mux|clk_proc:COUNT[10]~14_cout\) # (!\Clock_Selector|clk_divider:counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[8]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[10]~14_cout\,
	cout => \inst_sev_mux|clk_proc:COUNT[10]~16_cout\);

-- Location: LCCOMB_X15_Y19_N20
\inst_sev_mux|clk_proc:COUNT[10]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[10]~18_cout\ = CARRY((\Clock_Selector|clk_divider:counter[9]~q\ & !\inst_sev_mux|clk_proc:COUNT[10]~16_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[9]~q\,
	datad => VCC,
	cin => \inst_sev_mux|clk_proc:COUNT[10]~16_cout\,
	cout => \inst_sev_mux|clk_proc:COUNT[10]~18_cout\);

-- Location: LCCOMB_X15_Y19_N22
\inst_sev_mux|clk_proc:COUNT[10]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|clk_proc:COUNT[10]~19_combout\ = \inst_sev_mux|clk_proc:COUNT[10]~q\ $ (\inst_sev_mux|clk_proc:COUNT[10]~18_cout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	cin => \inst_sev_mux|clk_proc:COUNT[10]~18_cout\,
	combout => \inst_sev_mux|clk_proc:COUNT[10]~19_combout\);

-- Location: FF_X15_Y19_N23
\inst_sev_mux|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \inst_sev_mux|clk_proc:COUNT[10]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_sev_mux|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X14_Y19_N28
\Clock_Selector|clk_divider:counter[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[1]~4_cout\ = CARRY((!\Clock_Selector|clk_divider:counter[9]~2\) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[9]~2\,
	cout => \Clock_Selector|clk_divider:counter[1]~4_cout\);

-- Location: LCCOMB_X14_Y19_N30
\Clock_Selector|clk_divider:counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[11]~1_combout\ = (\Clock_Selector|clk_divider:counter[11]~q\ & (\Clock_Selector|clk_divider:counter[1]~4_cout\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[11]~q\ & (!\Clock_Selector|clk_divider:counter[1]~4_cout\ 
-- & VCC))
-- \Clock_Selector|clk_divider:counter[11]~2\ = CARRY((\Clock_Selector|clk_divider:counter[11]~q\ & !\Clock_Selector|clk_divider:counter[1]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[1]~4_cout\,
	combout => \Clock_Selector|clk_divider:counter[11]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[11]~2\);

-- Location: FF_X14_Y19_N31
\Clock_Selector|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X14_Y18_N0
\Clock_Selector|clk_divider:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[12]~1_combout\ = (\Clock_Selector|clk_divider:counter[12]~q\ & (!\Clock_Selector|clk_divider:counter[11]~2\)) # (!\Clock_Selector|clk_divider:counter[12]~q\ & ((\Clock_Selector|clk_divider:counter[11]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[12]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[11]~2\) # (!\Clock_Selector|clk_divider:counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[11]~2\,
	combout => \Clock_Selector|clk_divider:counter[12]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[12]~2\);

-- Location: FF_X14_Y18_N1
\Clock_Selector|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X14_Y18_N2
\Clock_Selector|clk_divider:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[13]~1_combout\ = (\Clock_Selector|clk_divider:counter[13]~q\ & (\Clock_Selector|clk_divider:counter[12]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[13]~q\ & (!\Clock_Selector|clk_divider:counter[12]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[13]~2\ = CARRY((\Clock_Selector|clk_divider:counter[13]~q\ & !\Clock_Selector|clk_divider:counter[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[12]~2\,
	combout => \Clock_Selector|clk_divider:counter[13]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[13]~2\);

-- Location: FF_X14_Y18_N3
\Clock_Selector|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X14_Y18_N4
\Clock_Selector|clk_divider:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[14]~1_combout\ = (\Clock_Selector|clk_divider:counter[14]~q\ & (!\Clock_Selector|clk_divider:counter[13]~2\)) # (!\Clock_Selector|clk_divider:counter[14]~q\ & ((\Clock_Selector|clk_divider:counter[13]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[14]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[13]~2\) # (!\Clock_Selector|clk_divider:counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[13]~2\,
	combout => \Clock_Selector|clk_divider:counter[14]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[14]~2\);

-- Location: FF_X14_Y18_N5
\Clock_Selector|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X14_Y18_N6
\Clock_Selector|clk_divider:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[15]~1_combout\ = (\Clock_Selector|clk_divider:counter[15]~q\ & (\Clock_Selector|clk_divider:counter[14]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[15]~q\ & (!\Clock_Selector|clk_divider:counter[14]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[15]~2\ = CARRY((\Clock_Selector|clk_divider:counter[15]~q\ & !\Clock_Selector|clk_divider:counter[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[14]~2\,
	combout => \Clock_Selector|clk_divider:counter[15]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[15]~2\);

-- Location: FF_X14_Y18_N7
\Clock_Selector|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X14_Y18_N8
\Clock_Selector|clk_divider:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[16]~1_combout\ = (\Clock_Selector|clk_divider:counter[16]~q\ & (!\Clock_Selector|clk_divider:counter[15]~2\)) # (!\Clock_Selector|clk_divider:counter[16]~q\ & ((\Clock_Selector|clk_divider:counter[15]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[16]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[15]~2\) # (!\Clock_Selector|clk_divider:counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[15]~2\,
	combout => \Clock_Selector|clk_divider:counter[16]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[16]~2\);

-- Location: FF_X14_Y18_N9
\Clock_Selector|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X14_Y18_N10
\Clock_Selector|clk_divider:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[17]~1_combout\ = (\Clock_Selector|clk_divider:counter[17]~q\ & (\Clock_Selector|clk_divider:counter[16]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[17]~q\ & (!\Clock_Selector|clk_divider:counter[16]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[17]~2\ = CARRY((\Clock_Selector|clk_divider:counter[17]~q\ & !\Clock_Selector|clk_divider:counter[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[16]~2\,
	combout => \Clock_Selector|clk_divider:counter[17]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[17]~2\);

-- Location: FF_X14_Y18_N11
\Clock_Selector|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X14_Y18_N12
\Clock_Selector|clk_divider:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[18]~1_combout\ = (\Clock_Selector|clk_divider:counter[18]~q\ & (!\Clock_Selector|clk_divider:counter[17]~2\)) # (!\Clock_Selector|clk_divider:counter[18]~q\ & ((\Clock_Selector|clk_divider:counter[17]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[18]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[17]~2\) # (!\Clock_Selector|clk_divider:counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[17]~2\,
	combout => \Clock_Selector|clk_divider:counter[18]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[18]~2\);

-- Location: FF_X14_Y18_N13
\Clock_Selector|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X14_Y18_N14
\Clock_Selector|clk_divider:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[19]~1_combout\ = (\Clock_Selector|clk_divider:counter[19]~q\ & (\Clock_Selector|clk_divider:counter[18]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[19]~q\ & (!\Clock_Selector|clk_divider:counter[18]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[19]~2\ = CARRY((\Clock_Selector|clk_divider:counter[19]~q\ & !\Clock_Selector|clk_divider:counter[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[18]~2\,
	combout => \Clock_Selector|clk_divider:counter[19]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[19]~2\);

-- Location: FF_X14_Y18_N15
\Clock_Selector|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X14_Y18_N16
\Clock_Selector|clk_divider:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[20]~1_combout\ = (\Clock_Selector|clk_divider:counter[20]~q\ & (!\Clock_Selector|clk_divider:counter[19]~2\)) # (!\Clock_Selector|clk_divider:counter[20]~q\ & ((\Clock_Selector|clk_divider:counter[19]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[20]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[19]~2\) # (!\Clock_Selector|clk_divider:counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[19]~2\,
	combout => \Clock_Selector|clk_divider:counter[20]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[20]~2\);

-- Location: FF_X14_Y18_N17
\Clock_Selector|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X14_Y18_N18
\Clock_Selector|clk_divider:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[21]~1_combout\ = (\Clock_Selector|clk_divider:counter[21]~q\ & (\Clock_Selector|clk_divider:counter[20]~2\ $ (GND))) # (!\Clock_Selector|clk_divider:counter[21]~q\ & (!\Clock_Selector|clk_divider:counter[20]~2\ & VCC))
-- \Clock_Selector|clk_divider:counter[21]~2\ = CARRY((\Clock_Selector|clk_divider:counter[21]~q\ & !\Clock_Selector|clk_divider:counter[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Clock_Selector|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[20]~2\,
	combout => \Clock_Selector|clk_divider:counter[21]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[21]~2\);

-- Location: FF_X14_Y18_N19
\Clock_Selector|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X14_Y18_N20
\Clock_Selector|clk_divider:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[22]~1_combout\ = (\Clock_Selector|clk_divider:counter[22]~q\ & (!\Clock_Selector|clk_divider:counter[21]~2\)) # (!\Clock_Selector|clk_divider:counter[22]~q\ & ((\Clock_Selector|clk_divider:counter[21]~2\) # (GND)))
-- \Clock_Selector|clk_divider:counter[22]~2\ = CARRY((!\Clock_Selector|clk_divider:counter[21]~2\) # (!\Clock_Selector|clk_divider:counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Clock_Selector|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \Clock_Selector|clk_divider:counter[21]~2\,
	combout => \Clock_Selector|clk_divider:counter[22]~1_combout\,
	cout => \Clock_Selector|clk_divider:counter[22]~2\);

-- Location: FF_X14_Y18_N21
\Clock_Selector|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X14_Y18_N22
\Clock_Selector|clk_divider:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Clock_Selector|clk_divider:counter[23]~1_combout\ = \Clock_Selector|clk_divider:counter[22]~2\ $ (!\Clock_Selector|clk_divider:counter[23]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Clock_Selector|clk_divider:counter[23]~q\,
	cin => \Clock_Selector|clk_divider:counter[22]~2\,
	combout => \Clock_Selector|clk_divider:counter[23]~1_combout\);

-- Location: FF_X14_Y18_N23
\Clock_Selector|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~inputclkctrl_outclk\,
	d => \Clock_Selector|clk_divider:counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Clock_Selector|clk_divider:counter[23]~q\);

-- Location: CLKCTRL_G6
\Clock_Selector|clk_divider:counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock_Selector|clk_divider:counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\);

-- Location: IOIBUF_X10_Y22_N15
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

-- Location: IOIBUF_X9_Y0_N29
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

-- Location: LCCOMB_X14_Y17_N24
\inst_Bi_shift_reg|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_Bi_shift_reg|sreg~0_combout\ = (\inst_Bi_shift_reg|sreg\(1) & \inst_extender|current_state.Right_shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Bi_shift_reg|sreg\(1),
	datad => \inst_extender|current_state.Right_shift~q\,
	combout => \inst_Bi_shift_reg|sreg~0_combout\);

-- Location: IOIBUF_X1_Y10_N15
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

-- Location: FF_X13_Y18_N27
\inst_registerx|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[7]~input_o\,
	sload => VCC,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registerx|output\(3));

-- Location: IOIBUF_X3_Y0_N8
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

-- Location: FF_X13_Y18_N9
\inst_registerx|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[6]~input_o\,
	sload => VCC,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registerx|output\(2));

-- Location: LCCOMB_X13_Y18_N16
\inst_counterx|un_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counterx|un_bin_counter[2]~8_combout\ = ((\inst_counterx|process_0~0_combout\ $ (\inst_counterx|un_bin_counter\(2) $ (\inst_counterx|un_bin_counter[1]~7\)))) # (GND)
-- \inst_counterx|un_bin_counter[2]~9\ = CARRY((\inst_counterx|process_0~0_combout\ & (\inst_counterx|un_bin_counter\(2) & !\inst_counterx|un_bin_counter[1]~7\)) # (!\inst_counterx|process_0~0_combout\ & ((\inst_counterx|un_bin_counter\(2)) # 
-- (!\inst_counterx|un_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|process_0~0_combout\,
	datab => \inst_counterx|un_bin_counter\(2),
	datad => VCC,
	cin => \inst_counterx|un_bin_counter[1]~7\,
	combout => \inst_counterx|un_bin_counter[2]~8_combout\,
	cout => \inst_counterx|un_bin_counter[2]~9\);

-- Location: LCCOMB_X13_Y18_N18
\inst_counterx|un_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counterx|un_bin_counter[3]~10_combout\ = \inst_counterx|un_bin_counter\(3) $ (\inst_counterx|un_bin_counter[2]~9\ $ (!\inst_counterx|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_counterx|un_bin_counter\(3),
	datad => \inst_counterx|process_0~0_combout\,
	cin => \inst_counterx|un_bin_counter[2]~9\,
	combout => \inst_counterx|un_bin_counter[3]~10_combout\);

-- Location: FF_X13_Y18_N19
\inst_counterx|un_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_counterx|un_bin_counter[3]~10_combout\,
	ena => \inst_XY|clk_enx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counterx|un_bin_counter\(3));

-- Location: LCCOMB_X13_Y18_N8
\inst_compx|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|ALTB~1_combout\ = (\inst_registerx|output\(3) & (((!\inst_counterx|un_bin_counter\(2) & \inst_registerx|output\(2))) # (!\inst_counterx|un_bin_counter\(3)))) # (!\inst_registerx|output\(3) & (!\inst_counterx|un_bin_counter\(2) & 
-- (\inst_registerx|output\(2) & !\inst_counterx|un_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registerx|output\(3),
	datab => \inst_counterx|un_bin_counter\(2),
	datac => \inst_registerx|output\(2),
	datad => \inst_counterx|un_bin_counter\(3),
	combout => \inst_compx|ALTB~1_combout\);

-- Location: IOIBUF_X10_Y21_N15
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

-- Location: FF_X13_Y18_N21
\inst_registerx|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[4]~input_o\,
	sload => VCC,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registerx|output\(0));

-- Location: LCCOMB_X13_Y18_N20
\inst_compx|ALTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|ALTB~2_combout\ = (\inst_counterx|un_bin_counter\(1) & (\inst_registerx|output\(1) & (\inst_registerx|output\(0) & !\inst_counterx|un_bin_counter\(0)))) # (!\inst_counterx|un_bin_counter\(1) & ((\inst_registerx|output\(1)) # 
-- ((\inst_registerx|output\(0) & !\inst_counterx|un_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(1),
	datab => \inst_registerx|output\(1),
	datac => \inst_registerx|output\(0),
	datad => \inst_counterx|un_bin_counter\(0),
	combout => \inst_compx|ALTB~2_combout\);

-- Location: LCCOMB_X12_Y18_N6
\inst_compx|ALTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|ALTB~3_combout\ = (\inst_compx|ALTB~1_combout\) # ((\inst_compx|ALTB~0_combout\ & \inst_compx|ALTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|ALTB~0_combout\,
	datab => \inst_compx|ALTB~1_combout\,
	datad => \inst_compx|ALTB~2_combout\,
	combout => \inst_compx|ALTB~3_combout\);

-- Location: LCCOMB_X12_Y18_N12
\inst_XY|clk_enx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|clk_enx~2_combout\ = (((\inst_compx|AEQB~0_combout\) # (\inst_compx|ALTB~3_combout\)) # (!\pb_n[2]~input_o\)) # (!\inst_compx|ALTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|ALTB~0_combout\,
	datab => \pb_n[2]~input_o\,
	datac => \inst_compx|AEQB~0_combout\,
	datad => \inst_compx|ALTB~3_combout\,
	combout => \inst_XY|clk_enx~2_combout\);

-- Location: LCCOMB_X13_Y18_N26
\inst_compx|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|AGTB~0_combout\ = (\inst_registerx|output\(3) & (\inst_counterx|un_bin_counter\(2) & (!\inst_registerx|output\(2) & \inst_counterx|un_bin_counter\(3)))) # (!\inst_registerx|output\(3) & ((\inst_counterx|un_bin_counter\(3)) # 
-- ((\inst_counterx|un_bin_counter\(2) & !\inst_registerx|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(2),
	datab => \inst_registerx|output\(2),
	datac => \inst_registerx|output\(3),
	datad => \inst_counterx|un_bin_counter\(3),
	combout => \inst_compx|AGTB~0_combout\);

-- Location: LCCOMB_X13_Y18_N22
\inst_compx|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|AGTB~1_combout\ = (\inst_counterx|un_bin_counter\(1) & (((!\inst_registerx|output\(0) & \inst_counterx|un_bin_counter\(0))) # (!\inst_registerx|output\(1)))) # (!\inst_counterx|un_bin_counter\(1) & (!\inst_registerx|output\(0) & 
-- (!\inst_registerx|output\(1) & \inst_counterx|un_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(1),
	datab => \inst_registerx|output\(0),
	datac => \inst_registerx|output\(1),
	datad => \inst_counterx|un_bin_counter\(0),
	combout => \inst_compx|AGTB~1_combout\);

-- Location: LCCOMB_X12_Y18_N0
\inst_compx|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|AGTB~2_combout\ = (\inst_compx|AGTB~0_combout\) # ((\inst_compx|ALTB~0_combout\ & \inst_compx|AGTB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|ALTB~0_combout\,
	datac => \inst_compx|AGTB~0_combout\,
	datad => \inst_compx|AGTB~1_combout\,
	combout => \inst_compx|AGTB~2_combout\);

-- Location: LCCOMB_X12_Y18_N30
\inst_XY|comb~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|comb~0_combout\ = (\pb_n[2]~input_o\ & ((\inst_compx|ALTB~3_combout\) # ((\inst_compx|AGTB~2_combout\) # (!\inst_compx|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|ALTB~3_combout\,
	datab => \inst_compx|AGTB~2_combout\,
	datac => \inst_compx|AEQB~combout\,
	datad => \pb_n[2]~input_o\,
	combout => \inst_XY|comb~0_combout\);

-- Location: LCCOMB_X12_Y18_N16
\inst_XY|clk_enx\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|clk_enx~combout\ = (\inst_XY|clk_enx~2_combout\ & ((\inst_XY|comb~0_combout\) # (\inst_XY|clk_enx~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|clk_enx~2_combout\,
	datac => \inst_XY|comb~0_combout\,
	datad => \inst_XY|clk_enx~combout\,
	combout => \inst_XY|clk_enx~combout\);

-- Location: LCCOMB_X12_Y18_N20
\inst_counterx|un_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counterx|un_bin_counter[0]~3_combout\ = \inst_counterx|un_bin_counter\(0) $ (\inst_XY|clk_enx~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_counterx|un_bin_counter\(0),
	datad => \inst_XY|clk_enx~combout\,
	combout => \inst_counterx|un_bin_counter[0]~3_combout\);

-- Location: FF_X12_Y18_N21
\inst_counterx|un_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_counterx|un_bin_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counterx|un_bin_counter\(0));

-- Location: LCCOMB_X13_Y18_N12
\inst_counterx|un_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counterx|un_bin_counter[1]~5_cout\ = CARRY(\inst_counterx|un_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_counterx|un_bin_counter\(0),
	datad => VCC,
	cout => \inst_counterx|un_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X13_Y18_N14
\inst_counterx|un_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counterx|un_bin_counter[1]~6_combout\ = (\inst_counterx|un_bin_counter\(1) & ((\inst_counterx|process_0~0_combout\ & (!\inst_counterx|un_bin_counter[1]~5_cout\)) # (!\inst_counterx|process_0~0_combout\ & (\inst_counterx|un_bin_counter[1]~5_cout\ & 
-- VCC)))) # (!\inst_counterx|un_bin_counter\(1) & ((\inst_counterx|process_0~0_combout\ & ((\inst_counterx|un_bin_counter[1]~5_cout\) # (GND))) # (!\inst_counterx|process_0~0_combout\ & (!\inst_counterx|un_bin_counter[1]~5_cout\))))
-- \inst_counterx|un_bin_counter[1]~7\ = CARRY((\inst_counterx|un_bin_counter\(1) & (\inst_counterx|process_0~0_combout\ & !\inst_counterx|un_bin_counter[1]~5_cout\)) # (!\inst_counterx|un_bin_counter\(1) & ((\inst_counterx|process_0~0_combout\) # 
-- (!\inst_counterx|un_bin_counter[1]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(1),
	datab => \inst_counterx|process_0~0_combout\,
	datad => VCC,
	cin => \inst_counterx|un_bin_counter[1]~5_cout\,
	combout => \inst_counterx|un_bin_counter[1]~6_combout\,
	cout => \inst_counterx|un_bin_counter[1]~7\);

-- Location: FF_X13_Y18_N17
\inst_counterx|un_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_counterx|un_bin_counter[2]~8_combout\,
	ena => \inst_XY|clk_enx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counterx|un_bin_counter\(2));

-- Location: LCCOMB_X13_Y18_N2
\inst_compx|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|ALTB~0_combout\ = (\inst_registerx|output\(3) & (\inst_counterx|un_bin_counter\(3) & (\inst_counterx|un_bin_counter\(2) $ (!\inst_registerx|output\(2))))) # (!\inst_registerx|output\(3) & (!\inst_counterx|un_bin_counter\(3) & 
-- (\inst_counterx|un_bin_counter\(2) $ (!\inst_registerx|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registerx|output\(3),
	datab => \inst_counterx|un_bin_counter\(2),
	datac => \inst_registerx|output\(2),
	datad => \inst_counterx|un_bin_counter\(3),
	combout => \inst_compx|ALTB~0_combout\);

-- Location: LCCOMB_X13_Y18_N6
\inst_compx|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|AEQB~combout\ = (\inst_compx|AEQB~0_combout\) # (!\inst_compx|ALTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_compx|AEQB~0_combout\,
	datad => \inst_compx|ALTB~0_combout\,
	combout => \inst_compx|AEQB~combout\);

-- Location: IOIBUF_X9_Y0_N22
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

-- Location: LCCOMB_X14_Y17_N20
\inst_extender|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Equal2~0_combout\ = (!\inst_Bi_shift_reg|sreg\(1) & (!\inst_Bi_shift_reg|sreg\(2) & !\inst_Bi_shift_reg|sreg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(1),
	datac => \inst_Bi_shift_reg|sreg\(2),
	datad => \inst_Bi_shift_reg|sreg\(0),
	combout => \inst_extender|Equal2~0_combout\);

-- Location: IOIBUF_X10_Y20_N15
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

-- Location: FF_X15_Y18_N13
\inst_registery|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[3]~input_o\,
	sload => VCC,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registery|output\(3));

-- Location: IOIBUF_X0_Y5_N1
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

-- Location: LCCOMB_X15_Y18_N22
\inst_registery|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_registery|output[0]~feeder_combout\ = \sw[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw[0]~input_o\,
	combout => \inst_registery|output[0]~feeder_combout\);

-- Location: FF_X15_Y18_N23
\inst_registery|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_registery|output[0]~feeder_combout\,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registery|output\(0));

-- Location: IOIBUF_X10_Y19_N15
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

-- Location: FF_X15_Y18_N9
\inst_registery|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[1]~input_o\,
	sload => VCC,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registery|output\(1));

-- Location: LCCOMB_X16_Y18_N12
\inst_countery|un_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_countery|un_bin_counter[0]~3_combout\ = \inst_countery|un_bin_counter\(0) $ (\inst_XY|clk_eny~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_countery|un_bin_counter\(0),
	datad => \inst_XY|clk_eny~combout\,
	combout => \inst_countery|un_bin_counter[0]~3_combout\);

-- Location: FF_X16_Y18_N13
\inst_countery|un_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_countery|un_bin_counter[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_countery|un_bin_counter\(0));

-- Location: LCCOMB_X15_Y18_N0
\inst_countery|un_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_countery|un_bin_counter[1]~5_cout\ = CARRY(\inst_countery|un_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_countery|un_bin_counter\(0),
	datad => VCC,
	cout => \inst_countery|un_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X15_Y18_N2
\inst_countery|un_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_countery|un_bin_counter[1]~6_combout\ = (\inst_countery|process_0~0_combout\ & ((\inst_countery|un_bin_counter\(1) & (!\inst_countery|un_bin_counter[1]~5_cout\)) # (!\inst_countery|un_bin_counter\(1) & ((\inst_countery|un_bin_counter[1]~5_cout\) # 
-- (GND))))) # (!\inst_countery|process_0~0_combout\ & ((\inst_countery|un_bin_counter\(1) & (\inst_countery|un_bin_counter[1]~5_cout\ & VCC)) # (!\inst_countery|un_bin_counter\(1) & (!\inst_countery|un_bin_counter[1]~5_cout\))))
-- \inst_countery|un_bin_counter[1]~7\ = CARRY((\inst_countery|process_0~0_combout\ & ((!\inst_countery|un_bin_counter[1]~5_cout\) # (!\inst_countery|un_bin_counter\(1)))) # (!\inst_countery|process_0~0_combout\ & (!\inst_countery|un_bin_counter\(1) & 
-- !\inst_countery|un_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|process_0~0_combout\,
	datab => \inst_countery|un_bin_counter\(1),
	datad => VCC,
	cin => \inst_countery|un_bin_counter[1]~5_cout\,
	combout => \inst_countery|un_bin_counter[1]~6_combout\,
	cout => \inst_countery|un_bin_counter[1]~7\);

-- Location: FF_X15_Y18_N3
\inst_countery|un_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_countery|un_bin_counter[1]~6_combout\,
	ena => \inst_XY|clk_eny~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_countery|un_bin_counter\(1));

-- Location: LCCOMB_X15_Y18_N14
\inst_compy|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|AGTB~1_combout\ = (\inst_registery|output\(1) & (!\inst_registery|output\(0) & (\inst_countery|un_bin_counter\(1) & \inst_countery|un_bin_counter\(0)))) # (!\inst_registery|output\(1) & ((\inst_countery|un_bin_counter\(1)) # 
-- ((!\inst_registery|output\(0) & \inst_countery|un_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registery|output\(0),
	datab => \inst_registery|output\(1),
	datac => \inst_countery|un_bin_counter\(1),
	datad => \inst_countery|un_bin_counter\(0),
	combout => \inst_compy|AGTB~1_combout\);

-- Location: LCCOMB_X15_Y18_N4
\inst_countery|un_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_countery|un_bin_counter[2]~8_combout\ = ((\inst_countery|process_0~0_combout\ $ (\inst_countery|un_bin_counter\(2) $ (\inst_countery|un_bin_counter[1]~7\)))) # (GND)
-- \inst_countery|un_bin_counter[2]~9\ = CARRY((\inst_countery|process_0~0_combout\ & (\inst_countery|un_bin_counter\(2) & !\inst_countery|un_bin_counter[1]~7\)) # (!\inst_countery|process_0~0_combout\ & ((\inst_countery|un_bin_counter\(2)) # 
-- (!\inst_countery|un_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|process_0~0_combout\,
	datab => \inst_countery|un_bin_counter\(2),
	datad => VCC,
	cin => \inst_countery|un_bin_counter[1]~7\,
	combout => \inst_countery|un_bin_counter[2]~8_combout\,
	cout => \inst_countery|un_bin_counter[2]~9\);

-- Location: LCCOMB_X15_Y18_N6
\inst_countery|un_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_countery|un_bin_counter[3]~10_combout\ = \inst_countery|un_bin_counter\(3) $ (\inst_countery|un_bin_counter[2]~9\ $ (!\inst_countery|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(3),
	datad => \inst_countery|process_0~0_combout\,
	cin => \inst_countery|un_bin_counter[2]~9\,
	combout => \inst_countery|un_bin_counter[3]~10_combout\);

-- Location: FF_X15_Y18_N7
\inst_countery|un_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_countery|un_bin_counter[3]~10_combout\,
	ena => \inst_XY|clk_eny~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_countery|un_bin_counter\(3));

-- Location: IOIBUF_X10_Y19_N22
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

-- Location: FF_X15_Y18_N31
\inst_registery|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[2]~input_o\,
	sload => VCC,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registery|output\(2));

-- Location: LCCOMB_X15_Y18_N30
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

-- Location: LCCOMB_X15_Y18_N16
\inst_compy|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|AGTB~2_combout\ = (\inst_compy|AGTB~0_combout\) # ((\inst_compy|AGTB~1_combout\ & \inst_compy|ALTB~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compy|AGTB~1_combout\,
	datab => \inst_compy|ALTB~0_combout\,
	datad => \inst_compy|AGTB~0_combout\,
	combout => \inst_compy|AGTB~2_combout\);

-- Location: LCCOMB_X15_Y18_N12
\inst_compy|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|ALTB~1_combout\ = (\inst_registery|output\(3) & (((\inst_registery|output\(2) & !\inst_countery|un_bin_counter\(2))) # (!\inst_countery|un_bin_counter\(3)))) # (!\inst_registery|output\(3) & (\inst_registery|output\(2) & 
-- (!\inst_countery|un_bin_counter\(2) & !\inst_countery|un_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registery|output\(2),
	datab => \inst_countery|un_bin_counter\(2),
	datac => \inst_registery|output\(3),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_compy|ALTB~1_combout\);

-- Location: LCCOMB_X15_Y18_N18
\inst_compy|ALTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|ALTB~2_combout\ = (\inst_registery|output\(1) & (((\inst_registery|output\(0) & !\inst_countery|un_bin_counter\(0))) # (!\inst_countery|un_bin_counter\(1)))) # (!\inst_registery|output\(1) & (\inst_registery|output\(0) & 
-- (!\inst_countery|un_bin_counter\(1) & !\inst_countery|un_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registery|output\(0),
	datab => \inst_registery|output\(1),
	datac => \inst_countery|un_bin_counter\(1),
	datad => \inst_countery|un_bin_counter\(0),
	combout => \inst_compy|ALTB~2_combout\);

-- Location: LCCOMB_X15_Y18_N28
\inst_compy|ALTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|ALTB~3_combout\ = (\inst_compy|ALTB~1_combout\) # ((\inst_compy|ALTB~0_combout\ & \inst_compy|ALTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_compy|ALTB~0_combout\,
	datac => \inst_compy|ALTB~1_combout\,
	datad => \inst_compy|ALTB~2_combout\,
	combout => \inst_compy|ALTB~3_combout\);

-- Location: LCCOMB_X15_Y18_N26
\inst_compy|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|AEQB~0_combout\ = (\inst_registery|output\(0) & ((\inst_registery|output\(1) $ (\inst_countery|un_bin_counter\(1))) # (!\inst_countery|un_bin_counter\(0)))) # (!\inst_registery|output\(0) & ((\inst_countery|un_bin_counter\(0)) # 
-- (\inst_registery|output\(1) $ (\inst_countery|un_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registery|output\(0),
	datab => \inst_registery|output\(1),
	datac => \inst_countery|un_bin_counter\(0),
	datad => \inst_countery|un_bin_counter\(1),
	combout => \inst_compy|AEQB~0_combout\);

-- Location: LCCOMB_X15_Y18_N24
\inst_compy|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|AEQB~combout\ = (\inst_compy|AEQB~0_combout\) # (!\inst_compy|ALTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_compy|AEQB~0_combout\,
	datad => \inst_compy|ALTB~0_combout\,
	combout => \inst_compy|AEQB~combout\);

-- Location: LCCOMB_X12_Y18_N18
\inst_XY|comb~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|comb~1_combout\ = (\pb_n[2]~input_o\ & ((\inst_compy|AGTB~2_combout\) # ((\inst_compy|ALTB~3_combout\) # (!\inst_compy|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compy|AGTB~2_combout\,
	datab => \inst_compy|ALTB~3_combout\,
	datac => \pb_n[2]~input_o\,
	datad => \inst_compy|AEQB~combout\,
	combout => \inst_XY|comb~1_combout\);

-- Location: LCCOMB_X12_Y18_N8
\inst_XY|clk_eny~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|clk_eny~2_combout\ = ((\inst_compy|ALTB~3_combout\) # ((\inst_compy|AEQB~0_combout\) # (!\inst_compy|ALTB~0_combout\))) # (!\pb_n[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \inst_compy|ALTB~3_combout\,
	datac => \inst_compy|AEQB~0_combout\,
	datad => \inst_compy|ALTB~0_combout\,
	combout => \inst_XY|clk_eny~2_combout\);

-- Location: LCCOMB_X12_Y18_N24
\inst_XY|clk_eny\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|clk_eny~combout\ = (\inst_XY|clk_eny~2_combout\ & ((\inst_XY|comb~1_combout\) # (\inst_XY|clk_eny~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|comb~1_combout\,
	datac => \inst_XY|clk_eny~2_combout\,
	datad => \inst_XY|clk_eny~combout\,
	combout => \inst_XY|clk_eny~combout\);

-- Location: LCCOMB_X15_Y18_N10
\inst_XY|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|process_0~1_combout\ = (\pb_n[2]~input_o\ & ((\inst_compy|ALTB~1_combout\) # ((\inst_compy|ALTB~0_combout\ & \inst_compy|ALTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \inst_compy|ALTB~0_combout\,
	datac => \inst_compy|ALTB~1_combout\,
	datad => \inst_compy|ALTB~2_combout\,
	combout => \inst_XY|process_0~1_combout\);

-- Location: LCCOMB_X12_Y18_N22
\inst_XY|up_downy~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|up_downy~2_combout\ = (((!\inst_compy|AEQB~0_combout\ & \inst_compy|ALTB~0_combout\)) # (!\pb_n[2]~input_o\)) # (!\inst_compy|AGTB~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compy|AGTB~2_combout\,
	datab => \inst_compy|AEQB~0_combout\,
	datac => \pb_n[2]~input_o\,
	datad => \inst_compy|ALTB~0_combout\,
	combout => \inst_XY|up_downy~2_combout\);

-- Location: LCCOMB_X12_Y18_N2
\inst_XY|up_downy\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|up_downy~combout\ = (\inst_XY|process_0~1_combout\) # ((\inst_XY|up_downy~2_combout\ & \inst_XY|up_downy~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|process_0~1_combout\,
	datac => \inst_XY|up_downy~2_combout\,
	datad => \inst_XY|up_downy~combout\,
	combout => \inst_XY|up_downy~combout\);

-- Location: LCCOMB_X12_Y18_N28
\inst_countery|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_countery|process_0~0_combout\ = (\inst_XY|clk_eny~combout\ & \inst_XY|up_downy~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_XY|clk_eny~combout\,
	datad => \inst_XY|up_downy~combout\,
	combout => \inst_countery|process_0~0_combout\);

-- Location: FF_X15_Y18_N5
\inst_countery|un_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_countery|un_bin_counter[2]~8_combout\,
	ena => \inst_XY|clk_eny~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_countery|un_bin_counter\(2));

-- Location: LCCOMB_X15_Y18_N20
\inst_compy|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compy|ALTB~0_combout\ = (\inst_registery|output\(3) & (\inst_countery|un_bin_counter\(3) & (\inst_countery|un_bin_counter\(2) $ (!\inst_registery|output\(2))))) # (!\inst_registery|output\(3) & (!\inst_countery|un_bin_counter\(3) & 
-- (\inst_countery|un_bin_counter\(2) $ (!\inst_registery|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registery|output\(3),
	datab => \inst_countery|un_bin_counter\(2),
	datac => \inst_registery|output\(2),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_compy|ALTB~0_combout\);

-- Location: LCCOMB_X14_Y18_N24
\inst_XY|extender_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|extender_en~0_combout\ = (\inst_compx|ALTB~0_combout\ & (!\inst_compx|AEQB~0_combout\ & (\inst_compy|ALTB~0_combout\ & !\inst_compy|AEQB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|ALTB~0_combout\,
	datab => \inst_compx|AEQB~0_combout\,
	datac => \inst_compy|ALTB~0_combout\,
	datad => \inst_compy|AEQB~0_combout\,
	combout => \inst_XY|extender_en~0_combout\);

-- Location: LCCOMB_X14_Y17_N16
\inst_extender|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector1~0_combout\ = (\inst_XY|extender_en~0_combout\ & (!\pb_n[1]~input_o\ & ((\inst_extender|current_state.Pressed~q\) # (!\inst_extender|current_state.Idle~q\)))) # (!\inst_XY|extender_en~0_combout\ & 
-- (((\inst_extender|current_state.Pressed~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|extender_en~0_combout\,
	datab => \pb_n[1]~input_o\,
	datac => \inst_extender|current_state.Pressed~q\,
	datad => \inst_extender|current_state.Idle~q\,
	combout => \inst_extender|Selector1~0_combout\);

-- Location: FF_X14_Y17_N17
\inst_extender|current_state.Pressed\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_extender|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.Pressed~q\);

-- Location: LCCOMB_X14_Y17_N18
\inst_extender|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector3~0_combout\ = (\pb_n[1]~input_o\ & (\inst_extender|current_state.Pressed~q\ & \inst_XY|extender_en~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[1]~input_o\,
	datac => \inst_extender|current_state.Pressed~q\,
	datad => \inst_XY|extender_en~0_combout\,
	combout => \inst_extender|Selector3~0_combout\);

-- Location: LCCOMB_X14_Y17_N26
\inst_extender|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector3~1_combout\ = (\inst_extender|Equal2~0_combout\ & ((\inst_Bi_shift_reg|sreg\(3) & ((\inst_extender|Selector3~0_combout\))) # (!\inst_Bi_shift_reg|sreg\(3) & (\inst_extender|current_state.left_shift~q\)))) # 
-- (!\inst_extender|Equal2~0_combout\ & (((\inst_extender|current_state.left_shift~q\) # (\inst_extender|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(3),
	datab => \inst_extender|Equal2~0_combout\,
	datac => \inst_extender|current_state.left_shift~q\,
	datad => \inst_extender|Selector3~0_combout\,
	combout => \inst_extender|Selector3~1_combout\);

-- Location: FF_X14_Y17_N27
\inst_extender|current_state.left_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_extender|Selector3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.left_shift~q\);

-- Location: LCCOMB_X14_Y17_N4
\inst_extender|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector0~1_combout\ = (\inst_Bi_shift_reg|sreg\(1) & (\inst_Bi_shift_reg|sreg\(2) & ((\inst_extender|current_state.Right_shift~q\)))) # (!\inst_Bi_shift_reg|sreg\(1) & (!\inst_Bi_shift_reg|sreg\(2) & 
-- (\inst_extender|current_state.left_shift~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(1),
	datab => \inst_Bi_shift_reg|sreg\(2),
	datac => \inst_extender|current_state.left_shift~q\,
	datad => \inst_extender|current_state.Right_shift~q\,
	combout => \inst_extender|Selector0~1_combout\);

-- Location: LCCOMB_X14_Y17_N2
\inst_extender|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector0~0_combout\ = (\inst_Bi_shift_reg|sreg\(3) & !\inst_Bi_shift_reg|sreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Bi_shift_reg|sreg\(3),
	datad => \inst_Bi_shift_reg|sreg\(0),
	combout => \inst_extender|Selector0~0_combout\);

-- Location: LCCOMB_X14_Y17_N10
\inst_extender|Selector0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector0~2_combout\ = (\inst_extender|Selector0~1_combout\ & ((\inst_extender|Selector0~0_combout\) # ((!\inst_extender|current_state.Idle~q\ & \inst_compy|AEQB~combout\)))) # (!\inst_extender|Selector0~1_combout\ & 
-- (!\inst_extender|current_state.Idle~q\ & ((\inst_compy|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|Selector0~1_combout\,
	datab => \inst_extender|current_state.Idle~q\,
	datac => \inst_extender|Selector0~0_combout\,
	datad => \inst_compy|AEQB~combout\,
	combout => \inst_extender|Selector0~2_combout\);

-- Location: LCCOMB_X14_Y17_N14
\inst_extender|Selector0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector0~3_combout\ = (!\inst_extender|Selector0~2_combout\ & ((\inst_extender|current_state.Idle~q\) # ((!\inst_compx|AEQB~combout\ & !\pb_n[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|AEQB~combout\,
	datab => \pb_n[1]~input_o\,
	datac => \inst_extender|current_state.Idle~q\,
	datad => \inst_extender|Selector0~2_combout\,
	combout => \inst_extender|Selector0~3_combout\);

-- Location: FF_X14_Y17_N15
\inst_extender|current_state.Idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_extender|Selector0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.Idle~q\);

-- Location: LCCOMB_X14_Y17_N12
\inst_extender|clk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|clk_en~0_combout\ = (\inst_extender|current_state.Idle~q\ & !\inst_extender|current_state.Pressed~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_extender|current_state.Idle~q\,
	datad => \inst_extender|current_state.Pressed~q\,
	combout => \inst_extender|clk_en~0_combout\);

-- Location: FF_X14_Y17_N25
\inst_Bi_shift_reg|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_Bi_shift_reg|sreg~0_combout\,
	ena => \inst_extender|clk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_Bi_shift_reg|sreg\(0));

-- Location: LCCOMB_X14_Y17_N30
\inst_Bi_shift_reg|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_Bi_shift_reg|sreg~1_combout\ = (\inst_extender|current_state.Right_shift~q\ & (\inst_Bi_shift_reg|sreg\(2))) # (!\inst_extender|current_state.Right_shift~q\ & ((\inst_Bi_shift_reg|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Bi_shift_reg|sreg\(2),
	datac => \inst_Bi_shift_reg|sreg\(0),
	datad => \inst_extender|current_state.Right_shift~q\,
	combout => \inst_Bi_shift_reg|sreg~1_combout\);

-- Location: FF_X14_Y17_N31
\inst_Bi_shift_reg|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_Bi_shift_reg|sreg~1_combout\,
	ena => \inst_extender|clk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_Bi_shift_reg|sreg\(1));

-- Location: LCCOMB_X14_Y17_N0
\inst_extender|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector2~0_combout\ = (\inst_extender|current_state.Right_shift~q\ & (((!\inst_extender|Selector0~0_combout\) # (!\inst_Bi_shift_reg|sreg\(2))) # (!\inst_Bi_shift_reg|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(1),
	datab => \inst_extender|current_state.Right_shift~q\,
	datac => \inst_Bi_shift_reg|sreg\(2),
	datad => \inst_extender|Selector0~0_combout\,
	combout => \inst_extender|Selector2~0_combout\);

-- Location: LCCOMB_X14_Y17_N28
\inst_extender|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector2~1_combout\ = (\inst_extender|Selector2~0_combout\) # ((!\inst_Bi_shift_reg|sreg\(3) & (\inst_extender|Equal2~0_combout\ & \inst_extender|Selector3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(3),
	datab => \inst_extender|Selector2~0_combout\,
	datac => \inst_extender|Equal2~0_combout\,
	datad => \inst_extender|Selector3~0_combout\,
	combout => \inst_extender|Selector2~1_combout\);

-- Location: FF_X14_Y17_N29
\inst_extender|current_state.Right_shift\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_extender|Selector2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_extender|current_state.Right_shift~q\);

-- Location: LCCOMB_X14_Y17_N8
\inst_Bi_shift_reg|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_Bi_shift_reg|sreg~2_combout\ = (\inst_extender|current_state.Right_shift~q\ & (\inst_Bi_shift_reg|sreg\(3))) # (!\inst_extender|current_state.Right_shift~q\ & ((\inst_Bi_shift_reg|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(3),
	datab => \inst_extender|current_state.Right_shift~q\,
	datad => \inst_Bi_shift_reg|sreg\(1),
	combout => \inst_Bi_shift_reg|sreg~2_combout\);

-- Location: FF_X14_Y17_N9
\inst_Bi_shift_reg|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_Bi_shift_reg|sreg~2_combout\,
	ena => \inst_extender|clk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_Bi_shift_reg|sreg\(2));

-- Location: LCCOMB_X14_Y17_N22
\inst_Bi_shift_reg|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_Bi_shift_reg|sreg~3_combout\ = (\inst_Bi_shift_reg|sreg\(2)) # (\inst_extender|current_state.Right_shift~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Bi_shift_reg|sreg\(2),
	datad => \inst_extender|current_state.Right_shift~q\,
	combout => \inst_Bi_shift_reg|sreg~3_combout\);

-- Location: FF_X14_Y17_N23
\inst_Bi_shift_reg|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_Bi_shift_reg|sreg~3_combout\,
	ena => \inst_extender|clk_en~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_Bi_shift_reg|sreg\(3));

-- Location: LCCOMB_X14_Y17_N6
\inst_extender|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector4~0_combout\ = (\inst_Bi_shift_reg|sreg\(3)) # ((\inst_extender|current_state.Right_shift~q\) # ((\inst_extender|current_state.left_shift~q\) # (!\inst_extender|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Bi_shift_reg|sreg\(3),
	datab => \inst_extender|current_state.Right_shift~q\,
	datac => \inst_extender|current_state.left_shift~q\,
	datad => \inst_extender|Equal2~0_combout\,
	combout => \inst_extender|Selector4~0_combout\);

-- Location: LCCOMB_X14_Y18_N28
\inst_XY|Capture_XY\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|Capture_XY~combout\ = (!\pb_n[2]~input_o\ & (!\inst_extender|Selector4~0_combout\ & \inst_XY|extender_en~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[2]~input_o\,
	datac => \inst_extender|Selector4~0_combout\,
	datad => \inst_XY|extender_en~0_combout\,
	combout => \inst_XY|Capture_XY~combout\);

-- Location: FF_X13_Y18_N23
\inst_registerx|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	asdata => \sw[5]~input_o\,
	sload => VCC,
	ena => \inst_XY|Capture_XY~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registerx|output\(1));

-- Location: LCCOMB_X13_Y18_N4
\inst_compx|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_compx|AEQB~0_combout\ = (\inst_registerx|output\(1) & ((\inst_registerx|output\(0) $ (\inst_counterx|un_bin_counter\(0))) # (!\inst_counterx|un_bin_counter\(1)))) # (!\inst_registerx|output\(1) & ((\inst_counterx|un_bin_counter\(1)) # 
-- (\inst_registerx|output\(0) $ (\inst_counterx|un_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registerx|output\(1),
	datab => \inst_registerx|output\(0),
	datac => \inst_counterx|un_bin_counter\(1),
	datad => \inst_counterx|un_bin_counter\(0),
	combout => \inst_compx|AEQB~0_combout\);

-- Location: LCCOMB_X12_Y18_N26
\inst_XY|up_downx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|up_downx~2_combout\ = (((!\inst_compx|AEQB~0_combout\ & \inst_compx|ALTB~0_combout\)) # (!\pb_n[2]~input_o\)) # (!\inst_compx|AGTB~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|AEQB~0_combout\,
	datab => \inst_compx|AGTB~2_combout\,
	datac => \pb_n[2]~input_o\,
	datad => \inst_compx|ALTB~0_combout\,
	combout => \inst_XY|up_downx~2_combout\);

-- Location: LCCOMB_X12_Y18_N4
\inst_XY|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|process_0~0_combout\ = (\pb_n[2]~input_o\ & ((\inst_compx|ALTB~1_combout\) # ((\inst_compx|ALTB~0_combout\ & \inst_compx|ALTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_compx|ALTB~0_combout\,
	datab => \pb_n[2]~input_o\,
	datac => \inst_compx|ALTB~1_combout\,
	datad => \inst_compx|ALTB~2_combout\,
	combout => \inst_XY|process_0~0_combout\);

-- Location: LCCOMB_X12_Y18_N10
\inst_XY|up_downx\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|up_downx~combout\ = (\inst_XY|process_0~0_combout\) # ((\inst_XY|up_downx~2_combout\ & \inst_XY|up_downx~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|up_downx~2_combout\,
	datac => \inst_XY|process_0~0_combout\,
	datad => \inst_XY|up_downx~combout\,
	combout => \inst_XY|up_downx~combout\);

-- Location: LCCOMB_X12_Y18_N14
\inst_counterx|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_counterx|process_0~0_combout\ = (\inst_XY|up_downx~combout\ & \inst_XY|clk_enx~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|up_downx~combout\,
	datad => \inst_XY|clk_enx~combout\,
	combout => \inst_counterx|process_0~0_combout\);

-- Location: FF_X13_Y18_N15
\inst_counterx|un_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_counterx|un_bin_counter[1]~6_combout\,
	ena => \inst_XY|clk_enx~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_counterx|un_bin_counter\(1));

-- Location: LCCOMB_X13_Y18_N30
\inst_sev_secx|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux5~0_combout\ = (\inst_counterx|un_bin_counter\(1) & ((\inst_counterx|un_bin_counter\(0) & ((\inst_counterx|un_bin_counter\(3)))) # (!\inst_counterx|un_bin_counter\(0) & (\inst_counterx|un_bin_counter\(2))))) # 
-- (!\inst_counterx|un_bin_counter\(1) & (\inst_counterx|un_bin_counter\(2) & (\inst_counterx|un_bin_counter\(3) $ (\inst_counterx|un_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(1),
	datab => \inst_counterx|un_bin_counter\(2),
	datac => \inst_counterx|un_bin_counter\(3),
	datad => \inst_counterx|un_bin_counter\(0),
	combout => \inst_sev_secx|Mux5~0_combout\);

-- Location: LCCOMB_X13_Y17_N6
\inst_sev_secy|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux5~0_combout\ = (\inst_countery|un_bin_counter\(1) & ((\inst_countery|un_bin_counter\(0) & ((\inst_countery|un_bin_counter\(3)))) # (!\inst_countery|un_bin_counter\(0) & (\inst_countery|un_bin_counter\(2))))) # 
-- (!\inst_countery|un_bin_counter\(1) & (\inst_countery|un_bin_counter\(2) & (\inst_countery|un_bin_counter\(0) $ (\inst_countery|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(2),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(0),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux5~0_combout\);

-- Location: LCCOMB_X13_Y17_N28
\inst_sev_mux|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT_TEMP[1]~0_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & (!\inst_sev_secx|Mux5~0_combout\)) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((!\inst_sev_secy|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	datac => \inst_sev_secx|Mux5~0_combout\,
	datad => \inst_sev_secy|Mux5~0_combout\,
	combout => \inst_sev_mux|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X13_Y18_N0
\inst_sev_secx|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux1~0_combout\ = (\inst_counterx|un_bin_counter\(1) & (!\inst_counterx|un_bin_counter\(3) & ((\inst_counterx|un_bin_counter\(0)) # (!\inst_counterx|un_bin_counter\(2))))) # (!\inst_counterx|un_bin_counter\(1) & 
-- (\inst_counterx|un_bin_counter\(0) & (\inst_counterx|un_bin_counter\(2) $ (!\inst_counterx|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(1),
	datab => \inst_counterx|un_bin_counter\(2),
	datac => \inst_counterx|un_bin_counter\(3),
	datad => \inst_counterx|un_bin_counter\(0),
	combout => \inst_sev_secx|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y17_N18
\inst_sev_secy|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux1~0_combout\ = (\inst_countery|un_bin_counter\(2) & (\inst_countery|un_bin_counter\(0) & (\inst_countery|un_bin_counter\(1) $ (\inst_countery|un_bin_counter\(3))))) # (!\inst_countery|un_bin_counter\(2) & 
-- (!\inst_countery|un_bin_counter\(3) & ((\inst_countery|un_bin_counter\(1)) # (\inst_countery|un_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(2),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(0),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux1~0_combout\);

-- Location: LCCOMB_X13_Y17_N20
\inst_sev_mux|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT_TEMP[5]~1_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & (!\inst_sev_secx|Mux1~0_combout\)) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((!\inst_sev_secy|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	datac => \inst_sev_secx|Mux1~0_combout\,
	datad => \inst_sev_secy|Mux1~0_combout\,
	combout => \inst_sev_mux|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X13_Y17_N30
\inst_sev_secx|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux0~0_combout\ = (\inst_counterx|un_bin_counter\(0) & ((\inst_counterx|un_bin_counter\(3)) # (\inst_counterx|un_bin_counter\(2) $ (\inst_counterx|un_bin_counter\(1))))) # (!\inst_counterx|un_bin_counter\(0) & 
-- ((\inst_counterx|un_bin_counter\(1)) # (\inst_counterx|un_bin_counter\(2) $ (\inst_counterx|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(2),
	datab => \inst_counterx|un_bin_counter\(0),
	datac => \inst_counterx|un_bin_counter\(3),
	datad => \inst_counterx|un_bin_counter\(1),
	combout => \inst_sev_secx|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y17_N16
\inst_sev_secy|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux0~0_combout\ = (\inst_countery|un_bin_counter\(0) & ((\inst_countery|un_bin_counter\(3)) # (\inst_countery|un_bin_counter\(2) $ (\inst_countery|un_bin_counter\(1))))) # (!\inst_countery|un_bin_counter\(0) & 
-- ((\inst_countery|un_bin_counter\(1)) # (\inst_countery|un_bin_counter\(2) $ (\inst_countery|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(2),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(0),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux0~0_combout\);

-- Location: LCCOMB_X13_Y17_N2
\inst_sev_mux|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT_TEMP[6]~2_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & (\inst_sev_secx|Mux0~0_combout\)) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((\inst_sev_secy|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_secx|Mux0~0_combout\,
	datac => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	datad => \inst_sev_secy|Mux0~0_combout\,
	combout => \inst_sev_mux|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X14_Y18_N26
\inst_XY|error\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_XY|error~combout\ = (\inst_extender|Selector4~0_combout\ & ((\inst_XY|error~combout\) # (!\pb_n[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[2]~input_o\,
	datac => \inst_extender|Selector4~0_combout\,
	datad => \inst_XY|error~combout\,
	combout => \inst_XY|error~combout\);

-- Location: LCCOMB_X14_Y18_N30
\leds~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \leds~0_combout\ = (\inst_XY|error~combout\ & \Clock_Selector|clk_divider:counter[23]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_XY|error~combout\,
	datac => \Clock_Selector|clk_divider:counter[23]~q\,
	combout => \leds~0_combout\);

-- Location: IOIBUF_X9_Y0_N1
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

-- Location: LCCOMB_X14_Y14_N12
\inst_grappler|next_state.Closing~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|next_state.Closing~0_combout\ = (!\pb_n[0]~input_o\ & ((\inst_grappler|current_state.Closing~q\) # (!\inst_grappler|current_state.Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_grappler|current_state.Start~q\,
	datab => \pb_n[0]~input_o\,
	datac => \inst_grappler|current_state.Closing~q\,
	combout => \inst_grappler|next_state.Closing~0_combout\);

-- Location: LCCOMB_X14_Y14_N18
\inst_extender|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_extender|Selector5~0_combout\ = (!\inst_extender|current_state.left_shift~q\ & (!\inst_extender|current_state.Right_shift~q\ & ((\inst_Bi_shift_reg|sreg\(3)) # (!\inst_extender|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_extender|current_state.left_shift~q\,
	datab => \inst_extender|current_state.Right_shift~q\,
	datac => \inst_extender|Equal2~0_combout\,
	datad => \inst_Bi_shift_reg|sreg\(3),
	combout => \inst_extender|Selector5~0_combout\);

-- Location: FF_X14_Y14_N13
\inst_grappler|current_state.Closing\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_grappler|next_state.Closing~0_combout\,
	ena => \inst_extender|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_grappler|current_state.Closing~q\);

-- Location: LCCOMB_X14_Y14_N10
\inst_grappler|next_state.Opening~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|next_state.Opening~0_combout\ = (!\pb_n[0]~input_o\ & (\inst_grappler|current_state.Start~q\ & !\inst_grappler|current_state.Closing~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[0]~input_o\,
	datac => \inst_grappler|current_state.Start~q\,
	datad => \inst_grappler|current_state.Closing~q\,
	combout => \inst_grappler|next_state.Opening~0_combout\);

-- Location: FF_X14_Y14_N11
\inst_grappler|current_state.Opening\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_grappler|next_state.Opening~0_combout\,
	ena => \inst_extender|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_grappler|current_state.Opening~q\);

-- Location: LCCOMB_X14_Y14_N4
\inst_grappler|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|Selector1~0_combout\ = (!\inst_grappler|current_state.Opening~q\ & (\pb_n[0]~input_o\ & \inst_grappler|current_state.Start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_grappler|current_state.Opening~q\,
	datab => \pb_n[0]~input_o\,
	datac => \inst_grappler|current_state.Start~q\,
	combout => \inst_grappler|Selector1~0_combout\);

-- Location: FF_X14_Y14_N5
\inst_grappler|current_state.close\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_grappler|Selector1~0_combout\,
	ena => \inst_extender|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_grappler|current_state.close~q\);

-- Location: LCCOMB_X14_Y14_N30
\inst_grappler|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|Selector0~0_combout\ = ((\inst_grappler|current_state.close~q\) # (\inst_grappler|current_state.Closing~q\)) # (!\pb_n[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[0]~input_o\,
	datac => \inst_grappler|current_state.close~q\,
	datad => \inst_grappler|current_state.Closing~q\,
	combout => \inst_grappler|Selector0~0_combout\);

-- Location: FF_X14_Y14_N31
\inst_grappler|current_state.Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock_Selector|clk_divider:counter[23]~clkctrl_outclk\,
	d => \inst_grappler|Selector0~0_combout\,
	ena => \inst_extender|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_grappler|current_state.Start~q\);

-- Location: LCCOMB_X14_Y14_N24
\inst_grappler|Grappler_on~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_grappler|Grappler_on~0_combout\ = (\inst_grappler|current_state.Closing~q\) # (!\inst_grappler|current_state.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_grappler|current_state.Start~q\,
	datad => \inst_grappler|current_state.Closing~q\,
	combout => \inst_grappler|Grappler_on~0_combout\);

-- Location: LCCOMB_X13_Y17_N12
\inst_sev_secy|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux6~0_combout\ = (\inst_countery|un_bin_counter\(2) & (!\inst_countery|un_bin_counter\(1) & (\inst_countery|un_bin_counter\(0) $ (!\inst_countery|un_bin_counter\(3))))) # (!\inst_countery|un_bin_counter\(2) & 
-- (\inst_countery|un_bin_counter\(0) & (\inst_countery|un_bin_counter\(1) $ (!\inst_countery|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(2),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(0),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y18_N28
\inst_sev_secx|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux6~0_combout\ = (\inst_counterx|un_bin_counter\(2) & (!\inst_counterx|un_bin_counter\(1) & (\inst_counterx|un_bin_counter\(3) $ (!\inst_counterx|un_bin_counter\(0))))) # (!\inst_counterx|un_bin_counter\(2) & 
-- (\inst_counterx|un_bin_counter\(0) & (\inst_counterx|un_bin_counter\(1) $ (!\inst_counterx|un_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(1),
	datab => \inst_counterx|un_bin_counter\(2),
	datac => \inst_counterx|un_bin_counter\(3),
	datad => \inst_counterx|un_bin_counter\(0),
	combout => \inst_sev_secx|Mux6~0_combout\);

-- Location: LCCOMB_X13_Y17_N22
\inst_sev_mux|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT[0]~0_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((\inst_sev_secx|Mux6~0_combout\))) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & (\inst_sev_secy|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_secy|Mux6~0_combout\,
	datac => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	datad => \inst_sev_secx|Mux6~0_combout\,
	combout => \inst_sev_mux|DOUT[0]~0_combout\);

-- Location: LCCOMB_X13_Y18_N10
\inst_sev_secx|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux4~0_combout\ = (\inst_counterx|un_bin_counter\(2) & (\inst_counterx|un_bin_counter\(3) & ((\inst_counterx|un_bin_counter\(1)) # (!\inst_counterx|un_bin_counter\(0))))) # (!\inst_counterx|un_bin_counter\(2) & 
-- (\inst_counterx|un_bin_counter\(1) & (!\inst_counterx|un_bin_counter\(3) & !\inst_counterx|un_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(1),
	datab => \inst_counterx|un_bin_counter\(2),
	datac => \inst_counterx|un_bin_counter\(3),
	datad => \inst_counterx|un_bin_counter\(0),
	combout => \inst_sev_secx|Mux4~0_combout\);

-- Location: LCCOMB_X13_Y17_N0
\inst_sev_secy|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux4~0_combout\ = (\inst_countery|un_bin_counter\(2) & (\inst_countery|un_bin_counter\(3) & ((\inst_countery|un_bin_counter\(1)) # (!\inst_countery|un_bin_counter\(0))))) # (!\inst_countery|un_bin_counter\(2) & 
-- (\inst_countery|un_bin_counter\(1) & (!\inst_countery|un_bin_counter\(0) & !\inst_countery|un_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(2),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(0),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux4~0_combout\);

-- Location: LCCOMB_X13_Y17_N10
\inst_sev_mux|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT[2]~2_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & (\inst_sev_secx|Mux4~0_combout\)) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((\inst_sev_secy|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	datab => \inst_sev_secx|Mux4~0_combout\,
	datad => \inst_sev_secy|Mux4~0_combout\,
	combout => \inst_sev_mux|DOUT[2]~2_combout\);

-- Location: LCCOMB_X13_Y17_N26
\inst_sev_secy|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux3~0_combout\ = (\inst_countery|un_bin_counter\(1) & ((\inst_countery|un_bin_counter\(2) & (\inst_countery|un_bin_counter\(0))) # (!\inst_countery|un_bin_counter\(2) & (!\inst_countery|un_bin_counter\(0) & 
-- \inst_countery|un_bin_counter\(3))))) # (!\inst_countery|un_bin_counter\(1) & (!\inst_countery|un_bin_counter\(3) & (\inst_countery|un_bin_counter\(2) $ (\inst_countery|un_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(2),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(0),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux3~0_combout\);

-- Location: LCCOMB_X13_Y17_N24
\inst_sev_secx|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux3~0_combout\ = (\inst_counterx|un_bin_counter\(1) & ((\inst_counterx|un_bin_counter\(2) & (\inst_counterx|un_bin_counter\(0))) # (!\inst_counterx|un_bin_counter\(2) & (!\inst_counterx|un_bin_counter\(0) & 
-- \inst_counterx|un_bin_counter\(3))))) # (!\inst_counterx|un_bin_counter\(1) & (!\inst_counterx|un_bin_counter\(3) & (\inst_counterx|un_bin_counter\(2) $ (\inst_counterx|un_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(2),
	datab => \inst_counterx|un_bin_counter\(0),
	datac => \inst_counterx|un_bin_counter\(3),
	datad => \inst_counterx|un_bin_counter\(1),
	combout => \inst_sev_secx|Mux3~0_combout\);

-- Location: LCCOMB_X13_Y17_N8
\inst_sev_mux|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT[3]~3_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((\inst_sev_secx|Mux3~0_combout\))) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & (\inst_sev_secy|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_sev_secy|Mux3~0_combout\,
	datac => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	datad => \inst_sev_secx|Mux3~0_combout\,
	combout => \inst_sev_mux|DOUT[3]~3_combout\);

-- Location: LCCOMB_X13_Y17_N14
\inst_sev_secy|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secy|Mux2~0_combout\ = (\inst_countery|un_bin_counter\(1) & (((\inst_countery|un_bin_counter\(0) & !\inst_countery|un_bin_counter\(3))))) # (!\inst_countery|un_bin_counter\(1) & ((\inst_countery|un_bin_counter\(2) & 
-- ((!\inst_countery|un_bin_counter\(3)))) # (!\inst_countery|un_bin_counter\(2) & (\inst_countery|un_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_countery|un_bin_counter\(2),
	datab => \inst_countery|un_bin_counter\(1),
	datac => \inst_countery|un_bin_counter\(0),
	datad => \inst_countery|un_bin_counter\(3),
	combout => \inst_sev_secy|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y18_N24
\inst_sev_secx|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_secx|Mux2~0_combout\ = (\inst_counterx|un_bin_counter\(1) & (((!\inst_counterx|un_bin_counter\(3) & \inst_counterx|un_bin_counter\(0))))) # (!\inst_counterx|un_bin_counter\(1) & ((\inst_counterx|un_bin_counter\(2) & 
-- (!\inst_counterx|un_bin_counter\(3))) # (!\inst_counterx|un_bin_counter\(2) & ((\inst_counterx|un_bin_counter\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_counterx|un_bin_counter\(1),
	datab => \inst_counterx|un_bin_counter\(2),
	datac => \inst_counterx|un_bin_counter\(3),
	datad => \inst_counterx|un_bin_counter\(0),
	combout => \inst_sev_secx|Mux2~0_combout\);

-- Location: LCCOMB_X13_Y17_N4
\inst_sev_mux|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_sev_mux|DOUT[4]~4_combout\ = (\inst_sev_mux|clk_proc:COUNT[10]~q\ & ((\inst_sev_secx|Mux2~0_combout\))) # (!\inst_sev_mux|clk_proc:COUNT[10]~q\ & (\inst_sev_secy|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_sev_secy|Mux2~0_combout\,
	datac => \inst_sev_mux|clk_proc:COUNT[10]~q\,
	datad => \inst_sev_secx|Mux2~0_combout\,
	combout => \inst_sev_mux|DOUT[4]~4_combout\);

-- Location: IOIBUF_X6_Y0_N15
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

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

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


