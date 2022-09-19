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

-- DATE "03/10/2022 10:03:55"

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

ENTITY 	LogicalStep_Lab3_top IS
    PORT (
	clkin_50 : IN std_logic;
	pb_n : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab3_top;

-- Design Ports Information
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
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb_n[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


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
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \instHVAC|clk_divider:counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
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
SIGNAL \instHVAC|clk_divider:counter[11]~2_cout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[11]~4_cout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[11]~6_cout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[11]~8_cout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[11]~10_cout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[11]~12_cout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[11]~14_cout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[11]~16_cout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[11]~18_cout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[11]~20_cout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[11]~21_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[11]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[11]~22\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[12]~1_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[12]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[12]~2\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[13]~1_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[13]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[13]~2\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[14]~1_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[14]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[14]~2\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[15]~1_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[15]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[15]~2\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[16]~1_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[16]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[16]~2\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[17]~1_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[17]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[17]~2\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[18]~1_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[18]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[18]~2\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[19]~1_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[19]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[19]~2\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[20]~1_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[20]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[20]~2\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[21]~1_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[21]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[21]~2\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[22]~1_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[22]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[22]~2\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[23]~1_combout\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[23]~q\ : std_logic;
SIGNAL \instHVAC|clk_divider:counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \pb_n[3]~input_o\ : std_logic;
SIGNAL \instmux|hex_out[2]~1_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \instmux|hex_out[3]~0_combout\ : std_logic;
SIGNAL \instCompx4|AGTB~2_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[2]~0_combout\ : std_logic;
SIGNAL \instCompx4|ALTB~0_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \instmux|hex_out[1]~2_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \instmux|hex_out[0]~3_combout\ : std_logic;
SIGNAL \instCompx4|ALTB~1_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[2]~1_combout\ : std_logic;
SIGNAL \pb_n[2]~input_o\ : std_logic;
SIGNAL \pb_n[1]~input_o\ : std_logic;
SIGNAL \pb_n[0]~input_o\ : std_logic;
SIGNAL \instCompx4|A_1|AEQB_n~0_combout\ : std_logic;
SIGNAL \instCompx4|AEQB~0_combout\ : std_logic;
SIGNAL \instEM|blower~0_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[0]~0_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[0]~q\ : std_logic;
SIGNAL \instHVAC|Add1~1_cout\ : std_logic;
SIGNAL \instHVAC|Add1~2_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[1]~0_combout\ : std_logic;
SIGNAL \instEM|blower~1_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[2]~2_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[1]~q\ : std_logic;
SIGNAL \instHVAC|Add1~3\ : std_logic;
SIGNAL \instHVAC|Add1~5\ : std_logic;
SIGNAL \instHVAC|Add1~6_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[3]~q\ : std_logic;
SIGNAL \instCompx4|AGTB~0_combout\ : std_logic;
SIGNAL \instCompx4|AGTB~1_combout\ : std_logic;
SIGNAL \instHVAC|counter~0_combout\ : std_logic;
SIGNAL \instHVAC|counter~1_combout\ : std_logic;
SIGNAL \instHVAC|Add1~4_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[2]~3_combout\ : std_logic;
SIGNAL \instHVAC|counter:cnt[2]~q\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \instCompx4|AGTB~3_combout\ : std_logic;
SIGNAL \instCompx4|ALTB~2_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~7_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~8_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~3_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~4_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~5_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~6_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~9_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~0_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~1_combout\ : std_logic;
SIGNAL \insttester|TEST_PASS~2_combout\ : std_logic;
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
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|DOUT[4]~4_combout\ : std_logic;
SIGNAL \ALT_INV_pb_n[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb_n[3]~input_o\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \instEM|ALT_INV_blower~0_combout\ : std_logic;
SIGNAL \instCompx4|ALT_INV_AEQB~0_combout\ : std_logic;
SIGNAL \inst3|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clkin_50 <= clkin_50;
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

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\instHVAC|clk_divider:counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \instHVAC|clk_divider:counter[23]~q\);
\ALT_INV_pb_n[1]~input_o\ <= NOT \pb_n[1]~input_o\;
\ALT_INV_pb_n[0]~input_o\ <= NOT \pb_n[0]~input_o\;
\ALT_INV_pb_n[3]~input_o\ <= NOT \pb_n[3]~input_o\;
\inst3|ALT_INV_DOUT[4]~4_combout\ <= NOT \inst3|DOUT[4]~4_combout\;
\inst3|ALT_INV_DOUT[3]~3_combout\ <= NOT \inst3|DOUT[3]~3_combout\;
\inst3|ALT_INV_DOUT[2]~2_combout\ <= NOT \inst3|DOUT[2]~2_combout\;
\inst3|ALT_INV_DOUT[0]~0_combout\ <= NOT \inst3|DOUT[0]~0_combout\;
\instEM|ALT_INV_blower~0_combout\ <= NOT \instEM|blower~0_combout\;
\instCompx4|ALT_INV_AEQB~0_combout\ <= NOT \instCompx4|AEQB~0_combout\;
\inst3|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \inst3|clk_proc:COUNT[10]~q\;
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
	i => \inst3|DOUT_TEMP[1]~0_combout\,
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
	i => \inst3|DOUT_TEMP[5]~1_combout\,
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
	i => \inst3|DOUT_TEMP[6]~2_combout\,
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
	i => \instCompx4|AGTB~3_combout\,
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
	i => \instCompx4|ALT_INV_AEQB~0_combout\,
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
	i => \instCompx4|ALTB~2_combout\,
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
	i => \instEM|ALT_INV_blower~0_combout\,
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
	i => \ALT_INV_pb_n[1]~input_o\,
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
	i => \ALT_INV_pb_n[0]~input_o\,
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
	i => \insttester|TEST_PASS~10_combout\,
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
	i => \ALT_INV_pb_n[3]~input_o\,
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
	i => \inst3|ALT_INV_DOUT[0]~0_combout\,
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
	i => \inst3|ALT_INV_DOUT[2]~2_combout\,
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
	i => \inst3|ALT_INV_DOUT[3]~3_combout\,
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
	i => \inst3|ALT_INV_DOUT[4]~4_combout\,
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
	i => \inst3|ALT_INV_clk_proc:COUNT[10]~q\,
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
	i => \inst3|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X0_Y6_N22
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

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y11_N8
\inst3|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[0]~0_combout\ = !\inst3|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|clk_proc:COUNT[0]~q\,
	combout => \inst3|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X19_Y11_N9
\inst3|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X20_Y11_N10
\inst3|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[1]~1_combout\ = (\inst3|clk_proc:COUNT[0]~q\ & (\inst3|clk_proc:COUNT[1]~q\ $ (VCC))) # (!\inst3|clk_proc:COUNT[0]~q\ & (\inst3|clk_proc:COUNT[1]~q\ & VCC))
-- \inst3|clk_proc:COUNT[1]~2\ = CARRY((\inst3|clk_proc:COUNT[0]~q\ & \inst3|clk_proc:COUNT[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[0]~q\,
	datab => \inst3|clk_proc:COUNT[1]~q\,
	datad => VCC,
	combout => \inst3|clk_proc:COUNT[1]~1_combout\,
	cout => \inst3|clk_proc:COUNT[1]~2\);

-- Location: FF_X19_Y11_N7
\inst3|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \inst3|clk_proc:COUNT[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X20_Y11_N12
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

-- Location: FF_X19_Y11_N1
\inst3|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \inst3|clk_proc:COUNT[2]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X20_Y11_N14
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

-- Location: FF_X19_Y11_N15
\inst3|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \inst3|clk_proc:COUNT[3]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X20_Y11_N16
\inst3|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[4]~1_combout\ = (\inst3|clk_proc:COUNT[4]~q\ & (!\inst3|clk_proc:COUNT[3]~2\)) # (!\inst3|clk_proc:COUNT[4]~q\ & ((\inst3|clk_proc:COUNT[3]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[4]~2\ = CARRY((!\inst3|clk_proc:COUNT[3]~2\) # (!\inst3|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[3]~2\,
	combout => \inst3|clk_proc:COUNT[4]~1_combout\,
	cout => \inst3|clk_proc:COUNT[4]~2\);

-- Location: FF_X19_Y11_N21
\inst3|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \inst3|clk_proc:COUNT[4]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X20_Y11_N18
\inst3|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[5]~1_combout\ = (\inst3|clk_proc:COUNT[5]~q\ & (\inst3|clk_proc:COUNT[4]~2\ $ (GND))) # (!\inst3|clk_proc:COUNT[5]~q\ & (!\inst3|clk_proc:COUNT[4]~2\ & VCC))
-- \inst3|clk_proc:COUNT[5]~2\ = CARRY((\inst3|clk_proc:COUNT[5]~q\ & !\inst3|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[4]~2\,
	combout => \inst3|clk_proc:COUNT[5]~1_combout\,
	cout => \inst3|clk_proc:COUNT[5]~2\);

-- Location: FF_X19_Y11_N19
\inst3|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	asdata => \inst3|clk_proc:COUNT[5]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X20_Y11_N20
\inst3|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[6]~1_combout\ = (\inst3|clk_proc:COUNT[6]~q\ & (!\inst3|clk_proc:COUNT[5]~2\)) # (!\inst3|clk_proc:COUNT[6]~q\ & ((\inst3|clk_proc:COUNT[5]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[6]~2\ = CARRY((!\inst3|clk_proc:COUNT[5]~2\) # (!\inst3|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[5]~2\,
	combout => \inst3|clk_proc:COUNT[6]~1_combout\,
	cout => \inst3|clk_proc:COUNT[6]~2\);

-- Location: FF_X20_Y11_N21
\inst3|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X20_Y11_N22
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

-- Location: FF_X20_Y11_N23
\inst3|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X20_Y11_N24
\inst3|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[8]~1_combout\ = (\inst3|clk_proc:COUNT[8]~q\ & (!\inst3|clk_proc:COUNT[7]~2\)) # (!\inst3|clk_proc:COUNT[8]~q\ & ((\inst3|clk_proc:COUNT[7]~2\) # (GND)))
-- \inst3|clk_proc:COUNT[8]~2\ = CARRY((!\inst3|clk_proc:COUNT[7]~2\) # (!\inst3|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \inst3|clk_proc:COUNT[7]~2\,
	combout => \inst3|clk_proc:COUNT[8]~1_combout\,
	cout => \inst3|clk_proc:COUNT[8]~2\);

-- Location: FF_X20_Y11_N25
\inst3|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X20_Y11_N26
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

-- Location: FF_X20_Y11_N27
\inst3|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X20_Y11_N28
\inst3|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|clk_proc:COUNT[10]~1_combout\ = \inst3|clk_proc:COUNT[9]~2\ $ (\inst3|clk_proc:COUNT[10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|clk_proc:COUNT[10]~q\,
	cin => \inst3|clk_proc:COUNT[9]~2\,
	combout => \inst3|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X20_Y11_N29
\inst3|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \inst3|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|clk_proc:COUNT[10]~q\);

-- Location: LCCOMB_X19_Y11_N10
\instHVAC|clk_divider:counter[11]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[11]~2_cout\ = CARRY((\inst3|clk_proc:COUNT[1]~q\ & \inst3|clk_proc:COUNT[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[1]~q\,
	datab => \inst3|clk_proc:COUNT[0]~q\,
	datad => VCC,
	cout => \instHVAC|clk_divider:counter[11]~2_cout\);

-- Location: LCCOMB_X19_Y11_N12
\instHVAC|clk_divider:counter[11]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[11]~4_cout\ = CARRY((!\instHVAC|clk_divider:counter[11]~2_cout\) # (!\inst3|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[11]~2_cout\,
	cout => \instHVAC|clk_divider:counter[11]~4_cout\);

-- Location: LCCOMB_X19_Y11_N14
\instHVAC|clk_divider:counter[11]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[11]~6_cout\ = CARRY((\inst3|clk_proc:COUNT[3]~q\ & !\instHVAC|clk_divider:counter[11]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[11]~4_cout\,
	cout => \instHVAC|clk_divider:counter[11]~6_cout\);

-- Location: LCCOMB_X19_Y11_N16
\instHVAC|clk_divider:counter[11]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[11]~8_cout\ = CARRY((!\instHVAC|clk_divider:counter[11]~6_cout\) # (!\inst3|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[11]~6_cout\,
	cout => \instHVAC|clk_divider:counter[11]~8_cout\);

-- Location: LCCOMB_X19_Y11_N18
\instHVAC|clk_divider:counter[11]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[11]~10_cout\ = CARRY((\inst3|clk_proc:COUNT[5]~q\ & !\instHVAC|clk_divider:counter[11]~8_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[11]~8_cout\,
	cout => \instHVAC|clk_divider:counter[11]~10_cout\);

-- Location: LCCOMB_X19_Y11_N20
\instHVAC|clk_divider:counter[11]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[11]~12_cout\ = CARRY((!\instHVAC|clk_divider:counter[11]~10_cout\) # (!\inst3|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[11]~10_cout\,
	cout => \instHVAC|clk_divider:counter[11]~12_cout\);

-- Location: LCCOMB_X19_Y11_N22
\instHVAC|clk_divider:counter[11]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[11]~14_cout\ = CARRY((\inst3|clk_proc:COUNT[7]~q\ & !\instHVAC|clk_divider:counter[11]~12_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[11]~12_cout\,
	cout => \instHVAC|clk_divider:counter[11]~14_cout\);

-- Location: LCCOMB_X19_Y11_N24
\instHVAC|clk_divider:counter[11]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[11]~16_cout\ = CARRY((!\instHVAC|clk_divider:counter[11]~14_cout\) # (!\inst3|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[11]~14_cout\,
	cout => \instHVAC|clk_divider:counter[11]~16_cout\);

-- Location: LCCOMB_X19_Y11_N26
\instHVAC|clk_divider:counter[11]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[11]~18_cout\ = CARRY((\inst3|clk_proc:COUNT[9]~q\ & !\instHVAC|clk_divider:counter[11]~16_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[11]~16_cout\,
	cout => \instHVAC|clk_divider:counter[11]~18_cout\);

-- Location: LCCOMB_X19_Y11_N28
\instHVAC|clk_divider:counter[11]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[11]~20_cout\ = CARRY((!\instHVAC|clk_divider:counter[11]~18_cout\) # (!\inst3|clk_proc:COUNT[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[11]~18_cout\,
	cout => \instHVAC|clk_divider:counter[11]~20_cout\);

-- Location: LCCOMB_X19_Y11_N30
\instHVAC|clk_divider:counter[11]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[11]~21_combout\ = (\instHVAC|clk_divider:counter[11]~q\ & (\instHVAC|clk_divider:counter[11]~20_cout\ $ (GND))) # (!\instHVAC|clk_divider:counter[11]~q\ & (!\instHVAC|clk_divider:counter[11]~20_cout\ & VCC))
-- \instHVAC|clk_divider:counter[11]~22\ = CARRY((\instHVAC|clk_divider:counter[11]~q\ & !\instHVAC|clk_divider:counter[11]~20_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|clk_divider:counter[11]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[11]~20_cout\,
	combout => \instHVAC|clk_divider:counter[11]~21_combout\,
	cout => \instHVAC|clk_divider:counter[11]~22\);

-- Location: FF_X19_Y11_N31
\instHVAC|clk_divider:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[11]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[11]~q\);

-- Location: LCCOMB_X19_Y10_N0
\instHVAC|clk_divider:counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[12]~1_combout\ = (\instHVAC|clk_divider:counter[12]~q\ & (!\instHVAC|clk_divider:counter[11]~22\)) # (!\instHVAC|clk_divider:counter[12]~q\ & ((\instHVAC|clk_divider:counter[11]~22\) # (GND)))
-- \instHVAC|clk_divider:counter[12]~2\ = CARRY((!\instHVAC|clk_divider:counter[11]~22\) # (!\instHVAC|clk_divider:counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instHVAC|clk_divider:counter[12]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[11]~22\,
	combout => \instHVAC|clk_divider:counter[12]~1_combout\,
	cout => \instHVAC|clk_divider:counter[12]~2\);

-- Location: FF_X19_Y10_N1
\instHVAC|clk_divider:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[12]~q\);

-- Location: LCCOMB_X19_Y10_N2
\instHVAC|clk_divider:counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[13]~1_combout\ = (\instHVAC|clk_divider:counter[13]~q\ & (\instHVAC|clk_divider:counter[12]~2\ $ (GND))) # (!\instHVAC|clk_divider:counter[13]~q\ & (!\instHVAC|clk_divider:counter[12]~2\ & VCC))
-- \instHVAC|clk_divider:counter[13]~2\ = CARRY((\instHVAC|clk_divider:counter[13]~q\ & !\instHVAC|clk_divider:counter[12]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instHVAC|clk_divider:counter[13]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[12]~2\,
	combout => \instHVAC|clk_divider:counter[13]~1_combout\,
	cout => \instHVAC|clk_divider:counter[13]~2\);

-- Location: FF_X19_Y10_N3
\instHVAC|clk_divider:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[13]~q\);

-- Location: LCCOMB_X19_Y10_N4
\instHVAC|clk_divider:counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[14]~1_combout\ = (\instHVAC|clk_divider:counter[14]~q\ & (!\instHVAC|clk_divider:counter[13]~2\)) # (!\instHVAC|clk_divider:counter[14]~q\ & ((\instHVAC|clk_divider:counter[13]~2\) # (GND)))
-- \instHVAC|clk_divider:counter[14]~2\ = CARRY((!\instHVAC|clk_divider:counter[13]~2\) # (!\instHVAC|clk_divider:counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instHVAC|clk_divider:counter[14]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[13]~2\,
	combout => \instHVAC|clk_divider:counter[14]~1_combout\,
	cout => \instHVAC|clk_divider:counter[14]~2\);

-- Location: FF_X19_Y10_N5
\instHVAC|clk_divider:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[14]~q\);

-- Location: LCCOMB_X19_Y10_N6
\instHVAC|clk_divider:counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[15]~1_combout\ = (\instHVAC|clk_divider:counter[15]~q\ & (\instHVAC|clk_divider:counter[14]~2\ $ (GND))) # (!\instHVAC|clk_divider:counter[15]~q\ & (!\instHVAC|clk_divider:counter[14]~2\ & VCC))
-- \instHVAC|clk_divider:counter[15]~2\ = CARRY((\instHVAC|clk_divider:counter[15]~q\ & !\instHVAC|clk_divider:counter[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|clk_divider:counter[15]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[14]~2\,
	combout => \instHVAC|clk_divider:counter[15]~1_combout\,
	cout => \instHVAC|clk_divider:counter[15]~2\);

-- Location: FF_X19_Y10_N7
\instHVAC|clk_divider:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[15]~q\);

-- Location: LCCOMB_X19_Y10_N8
\instHVAC|clk_divider:counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[16]~1_combout\ = (\instHVAC|clk_divider:counter[16]~q\ & (!\instHVAC|clk_divider:counter[15]~2\)) # (!\instHVAC|clk_divider:counter[16]~q\ & ((\instHVAC|clk_divider:counter[15]~2\) # (GND)))
-- \instHVAC|clk_divider:counter[16]~2\ = CARRY((!\instHVAC|clk_divider:counter[15]~2\) # (!\instHVAC|clk_divider:counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instHVAC|clk_divider:counter[16]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[15]~2\,
	combout => \instHVAC|clk_divider:counter[16]~1_combout\,
	cout => \instHVAC|clk_divider:counter[16]~2\);

-- Location: FF_X19_Y10_N9
\instHVAC|clk_divider:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[16]~q\);

-- Location: LCCOMB_X19_Y10_N10
\instHVAC|clk_divider:counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[17]~1_combout\ = (\instHVAC|clk_divider:counter[17]~q\ & (\instHVAC|clk_divider:counter[16]~2\ $ (GND))) # (!\instHVAC|clk_divider:counter[17]~q\ & (!\instHVAC|clk_divider:counter[16]~2\ & VCC))
-- \instHVAC|clk_divider:counter[17]~2\ = CARRY((\instHVAC|clk_divider:counter[17]~q\ & !\instHVAC|clk_divider:counter[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|clk_divider:counter[17]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[16]~2\,
	combout => \instHVAC|clk_divider:counter[17]~1_combout\,
	cout => \instHVAC|clk_divider:counter[17]~2\);

-- Location: FF_X19_Y10_N11
\instHVAC|clk_divider:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[17]~q\);

-- Location: LCCOMB_X19_Y10_N12
\instHVAC|clk_divider:counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[18]~1_combout\ = (\instHVAC|clk_divider:counter[18]~q\ & (!\instHVAC|clk_divider:counter[17]~2\)) # (!\instHVAC|clk_divider:counter[18]~q\ & ((\instHVAC|clk_divider:counter[17]~2\) # (GND)))
-- \instHVAC|clk_divider:counter[18]~2\ = CARRY((!\instHVAC|clk_divider:counter[17]~2\) # (!\instHVAC|clk_divider:counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|clk_divider:counter[18]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[17]~2\,
	combout => \instHVAC|clk_divider:counter[18]~1_combout\,
	cout => \instHVAC|clk_divider:counter[18]~2\);

-- Location: FF_X19_Y10_N13
\instHVAC|clk_divider:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[18]~q\);

-- Location: LCCOMB_X19_Y10_N14
\instHVAC|clk_divider:counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[19]~1_combout\ = (\instHVAC|clk_divider:counter[19]~q\ & (\instHVAC|clk_divider:counter[18]~2\ $ (GND))) # (!\instHVAC|clk_divider:counter[19]~q\ & (!\instHVAC|clk_divider:counter[18]~2\ & VCC))
-- \instHVAC|clk_divider:counter[19]~2\ = CARRY((\instHVAC|clk_divider:counter[19]~q\ & !\instHVAC|clk_divider:counter[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instHVAC|clk_divider:counter[19]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[18]~2\,
	combout => \instHVAC|clk_divider:counter[19]~1_combout\,
	cout => \instHVAC|clk_divider:counter[19]~2\);

-- Location: FF_X19_Y10_N15
\instHVAC|clk_divider:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[19]~q\);

-- Location: LCCOMB_X19_Y10_N16
\instHVAC|clk_divider:counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[20]~1_combout\ = (\instHVAC|clk_divider:counter[20]~q\ & (!\instHVAC|clk_divider:counter[19]~2\)) # (!\instHVAC|clk_divider:counter[20]~q\ & ((\instHVAC|clk_divider:counter[19]~2\) # (GND)))
-- \instHVAC|clk_divider:counter[20]~2\ = CARRY((!\instHVAC|clk_divider:counter[19]~2\) # (!\instHVAC|clk_divider:counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instHVAC|clk_divider:counter[20]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[19]~2\,
	combout => \instHVAC|clk_divider:counter[20]~1_combout\,
	cout => \instHVAC|clk_divider:counter[20]~2\);

-- Location: FF_X19_Y10_N17
\instHVAC|clk_divider:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[20]~q\);

-- Location: LCCOMB_X19_Y10_N18
\instHVAC|clk_divider:counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[21]~1_combout\ = (\instHVAC|clk_divider:counter[21]~q\ & (\instHVAC|clk_divider:counter[20]~2\ $ (GND))) # (!\instHVAC|clk_divider:counter[21]~q\ & (!\instHVAC|clk_divider:counter[20]~2\ & VCC))
-- \instHVAC|clk_divider:counter[21]~2\ = CARRY((\instHVAC|clk_divider:counter[21]~q\ & !\instHVAC|clk_divider:counter[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instHVAC|clk_divider:counter[21]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[20]~2\,
	combout => \instHVAC|clk_divider:counter[21]~1_combout\,
	cout => \instHVAC|clk_divider:counter[21]~2\);

-- Location: FF_X19_Y10_N19
\instHVAC|clk_divider:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[21]~q\);

-- Location: LCCOMB_X19_Y10_N20
\instHVAC|clk_divider:counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[22]~1_combout\ = (\instHVAC|clk_divider:counter[22]~q\ & (!\instHVAC|clk_divider:counter[21]~2\)) # (!\instHVAC|clk_divider:counter[22]~q\ & ((\instHVAC|clk_divider:counter[21]~2\) # (GND)))
-- \instHVAC|clk_divider:counter[22]~2\ = CARRY((!\instHVAC|clk_divider:counter[21]~2\) # (!\instHVAC|clk_divider:counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \instHVAC|clk_divider:counter[22]~q\,
	datad => VCC,
	cin => \instHVAC|clk_divider:counter[21]~2\,
	combout => \instHVAC|clk_divider:counter[22]~1_combout\,
	cout => \instHVAC|clk_divider:counter[22]~2\);

-- Location: FF_X19_Y10_N21
\instHVAC|clk_divider:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[22]~q\);

-- Location: LCCOMB_X19_Y10_N22
\instHVAC|clk_divider:counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|clk_divider:counter[23]~1_combout\ = \instHVAC|clk_divider:counter[23]~q\ $ (!\instHVAC|clk_divider:counter[22]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|clk_divider:counter[23]~q\,
	cin => \instHVAC|clk_divider:counter[22]~2\,
	combout => \instHVAC|clk_divider:counter[23]~1_combout\);

-- Location: FF_X19_Y10_N23
\instHVAC|clk_divider:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \instHVAC|clk_divider:counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|clk_divider:counter[23]~q\);

-- Location: CLKCTRL_G9
\instHVAC|clk_divider:counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \instHVAC|clk_divider:counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \instHVAC|clk_divider:counter[23]~clkctrl_outclk\);

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

-- Location: LCCOMB_X22_Y10_N2
\instmux|hex_out[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instmux|hex_out[2]~1_combout\ = (\pb_n[3]~input_o\ & (\sw[2]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \pb_n[3]~input_o\,
	combout => \instmux|hex_out[2]~1_combout\);

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

-- Location: LCCOMB_X22_Y10_N20
\instmux|hex_out[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instmux|hex_out[3]~0_combout\ = (\pb_n[3]~input_o\ & ((\sw[3]~input_o\))) # (!\pb_n[3]~input_o\ & (\sw[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[3]~input_o\,
	datab => \sw[7]~input_o\,
	datac => \sw[3]~input_o\,
	combout => \instmux|hex_out[3]~0_combout\);

-- Location: LCCOMB_X23_Y10_N10
\instCompx4|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|AGTB~2_combout\ = (\instmux|hex_out[2]~1_combout\ & (!\instHVAC|counter:cnt[2]~q\ & (\instmux|hex_out[3]~0_combout\ $ (!\instHVAC|counter:cnt[3]~q\)))) # (!\instmux|hex_out[2]~1_combout\ & (\instHVAC|counter:cnt[2]~q\ & 
-- (\instmux|hex_out[3]~0_combout\ $ (!\instHVAC|counter:cnt[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[2]~1_combout\,
	datab => \instmux|hex_out[3]~0_combout\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \instHVAC|counter:cnt[3]~q\,
	combout => \instCompx4|AGTB~2_combout\);

-- Location: LCCOMB_X23_Y10_N2
\instHVAC|counter:cnt[2]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter:cnt[2]~0_combout\ = (((\instHVAC|counter:cnt[3]~q\) # (!\instHVAC|counter:cnt[1]~q\)) # (!\instHVAC|counter:cnt[2]~q\)) # (!\instHVAC|counter:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \instHVAC|counter:cnt[2]~q\,
	datac => \instHVAC|counter:cnt[3]~q\,
	datad => \instHVAC|counter:cnt[1]~q\,
	combout => \instHVAC|counter:cnt[2]~0_combout\);

-- Location: LCCOMB_X23_Y10_N20
\instCompx4|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|ALTB~0_combout\ = (\instmux|hex_out[3]~0_combout\ & (!\instmux|hex_out[2]~1_combout\ & (\instHVAC|counter:cnt[3]~q\ & !\instHVAC|counter:cnt[2]~q\))) # (!\instmux|hex_out[3]~0_combout\ & ((\instHVAC|counter:cnt[3]~q\) # 
-- ((!\instmux|hex_out[2]~1_combout\ & !\instHVAC|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[2]~1_combout\,
	datab => \instmux|hex_out[3]~0_combout\,
	datac => \instHVAC|counter:cnt[3]~q\,
	datad => \instHVAC|counter:cnt[2]~q\,
	combout => \instCompx4|ALTB~0_combout\);

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

-- Location: LCCOMB_X22_Y10_N0
\instmux|hex_out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instmux|hex_out[1]~2_combout\ = (\pb_n[3]~input_o\ & (\sw[1]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[1]~input_o\,
	datac => \pb_n[3]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \instmux|hex_out[1]~2_combout\);

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

-- Location: LCCOMB_X22_Y10_N14
\instmux|hex_out[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instmux|hex_out[0]~3_combout\ = (\pb_n[3]~input_o\ & (\sw[0]~input_o\)) # (!\pb_n[3]~input_o\ & ((\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[0]~input_o\,
	datac => \pb_n[3]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \instmux|hex_out[0]~3_combout\);

-- Location: LCCOMB_X24_Y10_N24
\instCompx4|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|ALTB~1_combout\ = (\instmux|hex_out[1]~2_combout\ & (!\instmux|hex_out[0]~3_combout\ & (!\instHVAC|counter:cnt[0]~q\ & !\instHVAC|counter:cnt[1]~q\))) # (!\instmux|hex_out[1]~2_combout\ & (((!\instmux|hex_out[0]~3_combout\ & 
-- !\instHVAC|counter:cnt[0]~q\)) # (!\instHVAC|counter:cnt[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[1]~2_combout\,
	datab => \instmux|hex_out[0]~3_combout\,
	datac => \instHVAC|counter:cnt[0]~q\,
	datad => \instHVAC|counter:cnt[1]~q\,
	combout => \instCompx4|ALTB~1_combout\);

-- Location: LCCOMB_X23_Y10_N28
\instHVAC|counter:cnt[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter:cnt[2]~1_combout\ = (\instHVAC|counter:cnt[2]~0_combout\ & ((\instCompx4|ALTB~0_combout\) # ((\instCompx4|AGTB~2_combout\ & \instCompx4|ALTB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instCompx4|AGTB~2_combout\,
	datab => \instHVAC|counter:cnt[2]~0_combout\,
	datac => \instCompx4|ALTB~0_combout\,
	datad => \instCompx4|ALTB~1_combout\,
	combout => \instHVAC|counter:cnt[2]~1_combout\);

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

-- Location: LCCOMB_X22_Y10_N6
\instCompx4|A_1|AEQB_n~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|A_1|AEQB_n~0_combout\ = \instHVAC|counter:cnt[1]~q\ $ (((\pb_n[3]~input_o\ & (!\sw[1]~input_o\)) # (!\pb_n[3]~input_o\ & ((!\sw[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[3]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \instHVAC|counter:cnt[1]~q\,
	datad => \sw[5]~input_o\,
	combout => \instCompx4|A_1|AEQB_n~0_combout\);

-- Location: LCCOMB_X22_Y10_N16
\instCompx4|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|AEQB~0_combout\ = ((\instCompx4|A_1|AEQB_n~0_combout\) # (\instHVAC|counter:cnt[0]~q\ $ (!\instmux|hex_out[0]~3_combout\))) # (!\instCompx4|AGTB~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \instmux|hex_out[0]~3_combout\,
	datac => \instCompx4|AGTB~2_combout\,
	datad => \instCompx4|A_1|AEQB_n~0_combout\,
	combout => \instCompx4|AEQB~0_combout\);

-- Location: LCCOMB_X22_Y10_N30
\instEM|blower~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instEM|blower~0_combout\ = (((!\instCompx4|AEQB~0_combout\) # (!\pb_n[0]~input_o\)) # (!\pb_n[1]~input_o\)) # (!\pb_n[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datab => \pb_n[1]~input_o\,
	datac => \pb_n[0]~input_o\,
	datad => \instCompx4|AEQB~0_combout\,
	combout => \instEM|blower~0_combout\);

-- Location: LCCOMB_X23_Y10_N6
\instHVAC|counter:cnt[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter:cnt[0]~0_combout\ = \instHVAC|counter:cnt[0]~q\ $ (((!\instEM|blower~0_combout\ & ((\instHVAC|counter~1_combout\) # (\instHVAC|counter:cnt[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter~1_combout\,
	datab => \instHVAC|counter:cnt[2]~1_combout\,
	datac => \instHVAC|counter:cnt[0]~q\,
	datad => \instEM|blower~0_combout\,
	combout => \instHVAC|counter:cnt[0]~0_combout\);

-- Location: FF_X23_Y10_N7
\instHVAC|counter:cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instHVAC|clk_divider:counter[23]~clkctrl_outclk\,
	d => \instHVAC|counter:cnt[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|counter:cnt[0]~q\);

-- Location: LCCOMB_X23_Y10_N12
\instHVAC|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|Add1~1_cout\ = CARRY(!\instHVAC|counter:cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instHVAC|counter:cnt[0]~q\,
	datad => VCC,
	cout => \instHVAC|Add1~1_cout\);

-- Location: LCCOMB_X23_Y10_N14
\instHVAC|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|Add1~2_combout\ = (\instHVAC|counter:cnt[1]~q\ & ((\instHVAC|counter~1_combout\ & ((\instHVAC|Add1~1_cout\) # (GND))) # (!\instHVAC|counter~1_combout\ & (!\instHVAC|Add1~1_cout\)))) # (!\instHVAC|counter:cnt[1]~q\ & 
-- ((\instHVAC|counter~1_combout\ & (!\instHVAC|Add1~1_cout\)) # (!\instHVAC|counter~1_combout\ & (\instHVAC|Add1~1_cout\ & VCC))))
-- \instHVAC|Add1~3\ = CARRY((\instHVAC|counter:cnt[1]~q\ & ((\instHVAC|counter~1_combout\) # (!\instHVAC|Add1~1_cout\))) # (!\instHVAC|counter:cnt[1]~q\ & (\instHVAC|counter~1_combout\ & !\instHVAC|Add1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[1]~q\,
	datab => \instHVAC|counter~1_combout\,
	datad => VCC,
	cin => \instHVAC|Add1~1_cout\,
	combout => \instHVAC|Add1~2_combout\,
	cout => \instHVAC|Add1~3\);

-- Location: LCCOMB_X23_Y10_N8
\instHVAC|counter:cnt[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter:cnt[1]~0_combout\ = !\instHVAC|Add1~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \instHVAC|Add1~2_combout\,
	combout => \instHVAC|counter:cnt[1]~0_combout\);

-- Location: LCCOMB_X22_Y10_N10
\instEM|blower~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instEM|blower~1_combout\ = ((!\pb_n[2]~input_o\) # (!\pb_n[0]~input_o\)) # (!\pb_n[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb_n[1]~input_o\,
	datac => \pb_n[0]~input_o\,
	datad => \pb_n[2]~input_o\,
	combout => \instEM|blower~1_combout\);

-- Location: LCCOMB_X23_Y10_N26
\instHVAC|counter:cnt[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter:cnt[2]~2_combout\ = (!\instEM|blower~1_combout\ & (\instCompx4|AEQB~0_combout\ & ((\instHVAC|counter~1_combout\) # (\instHVAC|counter:cnt[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instEM|blower~1_combout\,
	datab => \instHVAC|counter~1_combout\,
	datac => \instCompx4|AEQB~0_combout\,
	datad => \instHVAC|counter:cnt[2]~1_combout\,
	combout => \instHVAC|counter:cnt[2]~2_combout\);

-- Location: FF_X23_Y10_N9
\instHVAC|counter:cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instHVAC|clk_divider:counter[23]~clkctrl_outclk\,
	d => \instHVAC|counter:cnt[1]~0_combout\,
	ena => \instHVAC|counter:cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|counter:cnt[1]~q\);

-- Location: LCCOMB_X23_Y10_N16
\instHVAC|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|Add1~4_combout\ = ((\instHVAC|counter:cnt[2]~q\ $ (\instHVAC|counter~1_combout\ $ (!\instHVAC|Add1~3\)))) # (GND)
-- \instHVAC|Add1~5\ = CARRY((\instHVAC|counter:cnt[2]~q\ & (!\instHVAC|counter~1_combout\ & !\instHVAC|Add1~3\)) # (!\instHVAC|counter:cnt[2]~q\ & ((!\instHVAC|Add1~3\) # (!\instHVAC|counter~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[2]~q\,
	datab => \instHVAC|counter~1_combout\,
	datad => VCC,
	cin => \instHVAC|Add1~3\,
	combout => \instHVAC|Add1~4_combout\,
	cout => \instHVAC|Add1~5\);

-- Location: LCCOMB_X23_Y10_N18
\instHVAC|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|Add1~6_combout\ = \instHVAC|counter~1_combout\ $ (\instHVAC|Add1~5\ $ (!\instHVAC|counter:cnt[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter~1_combout\,
	datad => \instHVAC|counter:cnt[3]~q\,
	cin => \instHVAC|Add1~5\,
	combout => \instHVAC|Add1~6_combout\);

-- Location: FF_X23_Y10_N19
\instHVAC|counter:cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instHVAC|clk_divider:counter[23]~clkctrl_outclk\,
	d => \instHVAC|Add1~6_combout\,
	ena => \instHVAC|counter:cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|counter:cnt[3]~q\);

-- Location: LCCOMB_X23_Y10_N30
\instCompx4|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|AGTB~0_combout\ = (\instmux|hex_out[3]~0_combout\ & (((\instmux|hex_out[2]~1_combout\ & \instHVAC|counter:cnt[2]~q\)) # (!\instHVAC|counter:cnt[3]~q\))) # (!\instmux|hex_out[3]~0_combout\ & (\instmux|hex_out[2]~1_combout\ & 
-- (\instHVAC|counter:cnt[2]~q\ & !\instHVAC|counter:cnt[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[2]~1_combout\,
	datab => \instmux|hex_out[3]~0_combout\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \instHVAC|counter:cnt[3]~q\,
	combout => \instCompx4|AGTB~0_combout\);

-- Location: LCCOMB_X23_Y10_N24
\instCompx4|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|AGTB~1_combout\ = (\instmux|hex_out[1]~2_combout\ & ((\instHVAC|counter:cnt[1]~q\) # ((\instmux|hex_out[0]~3_combout\ & \instHVAC|counter:cnt[0]~q\)))) # (!\instmux|hex_out[1]~2_combout\ & (\instmux|hex_out[0]~3_combout\ & 
-- (\instHVAC|counter:cnt[1]~q\ & \instHVAC|counter:cnt[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[0]~3_combout\,
	datab => \instmux|hex_out[1]~2_combout\,
	datac => \instHVAC|counter:cnt[1]~q\,
	datad => \instHVAC|counter:cnt[0]~q\,
	combout => \instCompx4|AGTB~1_combout\);

-- Location: LCCOMB_X23_Y10_N22
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

-- Location: LCCOMB_X23_Y10_N0
\instHVAC|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter~1_combout\ = (\instHVAC|counter~0_combout\ & ((\instCompx4|AGTB~0_combout\) # ((\instCompx4|AGTB~1_combout\ & \instCompx4|AGTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instCompx4|AGTB~0_combout\,
	datab => \instCompx4|AGTB~1_combout\,
	datac => \instHVAC|counter~0_combout\,
	datad => \instCompx4|AGTB~2_combout\,
	combout => \instHVAC|counter~1_combout\);

-- Location: LCCOMB_X23_Y10_N4
\instHVAC|counter:cnt[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instHVAC|counter:cnt[2]~3_combout\ = !\instHVAC|Add1~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \instHVAC|Add1~4_combout\,
	combout => \instHVAC|counter:cnt[2]~3_combout\);

-- Location: FF_X23_Y10_N5
\instHVAC|counter:cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instHVAC|clk_divider:counter[23]~clkctrl_outclk\,
	d => \instHVAC|counter:cnt[2]~3_combout\,
	ena => \instHVAC|counter:cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instHVAC|counter:cnt[2]~q\);

-- Location: LCCOMB_X24_Y10_N26
\inst2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\instHVAC|counter:cnt[3]~q\ & ((\instHVAC|counter:cnt[0]~q\ & (!\instHVAC|counter:cnt[2]~q\)) # (!\instHVAC|counter:cnt[0]~q\ & ((!\instHVAC|counter:cnt[1]~q\))))) # (!\instHVAC|counter:cnt[3]~q\ & (!\instHVAC|counter:cnt[2]~q\ & 
-- (\instHVAC|counter:cnt[0]~q\ $ (\instHVAC|counter:cnt[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[2]~q\,
	datab => \instHVAC|counter:cnt[3]~q\,
	datac => \instHVAC|counter:cnt[0]~q\,
	datad => \instHVAC|counter:cnt[1]~q\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y10_N0
\inst1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\instmux|hex_out[1]~2_combout\ & ((\instmux|hex_out[0]~3_combout\ & ((\instmux|hex_out[3]~0_combout\))) # (!\instmux|hex_out[0]~3_combout\ & (\instmux|hex_out[2]~1_combout\)))) # (!\instmux|hex_out[1]~2_combout\ & 
-- (\instmux|hex_out[2]~1_combout\ & (\instmux|hex_out[3]~0_combout\ $ (\instmux|hex_out[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[1]~2_combout\,
	datab => \instmux|hex_out[2]~1_combout\,
	datac => \instmux|hex_out[3]~0_combout\,
	datad => \instmux|hex_out[0]~3_combout\,
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y10_N12
\inst3|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[1]~0_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((!\inst1|Mux5~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (!\inst2|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux5~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux5~0_combout\,
	combout => \inst3|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X24_Y10_N20
\inst2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\instHVAC|counter:cnt[2]~q\ & (!\instHVAC|counter:cnt[3]~q\ & ((!\instHVAC|counter:cnt[1]~q\) # (!\instHVAC|counter:cnt[0]~q\)))) # (!\instHVAC|counter:cnt[2]~q\ & (!\instHVAC|counter:cnt[0]~q\ & (\instHVAC|counter:cnt[3]~q\ $ 
-- (!\instHVAC|counter:cnt[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[2]~q\,
	datab => \instHVAC|counter:cnt[3]~q\,
	datac => \instHVAC|counter:cnt[0]~q\,
	datad => \instHVAC|counter:cnt[1]~q\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y10_N6
\inst1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\instmux|hex_out[1]~2_combout\ & (!\instmux|hex_out[3]~0_combout\ & ((\instmux|hex_out[0]~3_combout\) # (!\instmux|hex_out[2]~1_combout\)))) # (!\instmux|hex_out[1]~2_combout\ & (\instmux|hex_out[0]~3_combout\ & 
-- (\instmux|hex_out[2]~1_combout\ $ (!\instmux|hex_out[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[1]~2_combout\,
	datab => \instmux|hex_out[2]~1_combout\,
	datac => \instmux|hex_out[3]~0_combout\,
	datad => \instmux|hex_out[0]~3_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X24_Y10_N14
\inst3|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[5]~1_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((!\inst1|Mux1~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (!\inst2|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|Mux1~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux1~0_combout\,
	combout => \inst3|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X24_Y10_N10
\inst2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\instHVAC|counter:cnt[0]~q\ & ((\instHVAC|counter:cnt[2]~q\ $ (!\instHVAC|counter:cnt[3]~q\)) # (!\instHVAC|counter:cnt[1]~q\))) # (!\instHVAC|counter:cnt[0]~q\ & ((\instHVAC|counter:cnt[3]~q\) # (\instHVAC|counter:cnt[2]~q\ $ 
-- (\instHVAC|counter:cnt[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[2]~q\,
	datab => \instHVAC|counter:cnt[3]~q\,
	datac => \instHVAC|counter:cnt[0]~q\,
	datad => \instHVAC|counter:cnt[1]~q\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y10_N16
\inst1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\instmux|hex_out[0]~3_combout\ & ((\instmux|hex_out[3]~0_combout\) # (\instmux|hex_out[1]~2_combout\ $ (\instmux|hex_out[2]~1_combout\)))) # (!\instmux|hex_out[0]~3_combout\ & ((\instmux|hex_out[1]~2_combout\) # 
-- (\instmux|hex_out[2]~1_combout\ $ (\instmux|hex_out[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[1]~2_combout\,
	datab => \instmux|hex_out[2]~1_combout\,
	datac => \instmux|hex_out[3]~0_combout\,
	datad => \instmux|hex_out[0]~3_combout\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y10_N4
\inst3|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT_TEMP[6]~2_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux0~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux0~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux0~0_combout\,
	combout => \inst3|DOUT_TEMP[6]~2_combout\);

-- Location: LCCOMB_X22_Y10_N4
\instCompx4|AGTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|AGTB~3_combout\ = (\instCompx4|AGTB~0_combout\) # ((\instCompx4|AGTB~2_combout\ & \instCompx4|AGTB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instCompx4|AGTB~0_combout\,
	datac => \instCompx4|AGTB~2_combout\,
	datad => \instCompx4|AGTB~1_combout\,
	combout => \instCompx4|AGTB~3_combout\);

-- Location: LCCOMB_X23_Y9_N24
\instCompx4|ALTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \instCompx4|ALTB~2_combout\ = (\instCompx4|ALTB~0_combout\) # ((\instCompx4|AGTB~2_combout\ & \instCompx4|ALTB~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instCompx4|AGTB~2_combout\,
	datac => \instCompx4|ALTB~0_combout\,
	datad => \instCompx4|ALTB~1_combout\,
	combout => \instCompx4|ALTB~2_combout\);

-- Location: LCCOMB_X22_Y10_N26
\insttester|TEST_PASS~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~7_combout\ = (\sw[2]~input_o\ & (!\instHVAC|counter:cnt[2]~q\ & (\sw[3]~input_o\ $ (!\instHVAC|counter:cnt[3]~q\)))) # (!\sw[2]~input_o\ & (\instHVAC|counter:cnt[2]~q\ & (\sw[3]~input_o\ $ (!\instHVAC|counter:cnt[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[3]~input_o\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \instHVAC|counter:cnt[3]~q\,
	combout => \insttester|TEST_PASS~7_combout\);

-- Location: LCCOMB_X22_Y10_N8
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

-- Location: LCCOMB_X22_Y10_N18
\insttester|TEST_PASS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~3_combout\ = (\instHVAC|counter:cnt[1]~q\ & ((\sw[1]~input_o\) # ((\instHVAC|counter:cnt[0]~q\ & \sw[0]~input_o\)))) # (!\instHVAC|counter:cnt[1]~q\ & (\instHVAC|counter:cnt[0]~q\ & (\sw[0]~input_o\ & \sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[0]~q\,
	datab => \sw[0]~input_o\,
	datac => \instHVAC|counter:cnt[1]~q\,
	datad => \sw[1]~input_o\,
	combout => \insttester|TEST_PASS~3_combout\);

-- Location: LCCOMB_X24_Y10_N18
\insttester|TEST_PASS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~4_combout\ = (\sw[2]~input_o\ & ((\instHVAC|counter:cnt[2]~q\) # (\insttester|TEST_PASS~3_combout\))) # (!\sw[2]~input_o\ & (\instHVAC|counter:cnt[2]~q\ & \insttester|TEST_PASS~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \insttester|TEST_PASS~3_combout\,
	combout => \insttester|TEST_PASS~4_combout\);

-- Location: LCCOMB_X24_Y10_N8
\insttester|TEST_PASS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~5_combout\ = (\instHVAC|counter:cnt[3]~q\ & (\sw[3]~input_o\ & \insttester|TEST_PASS~4_combout\)) # (!\instHVAC|counter:cnt[3]~q\ & ((\sw[3]~input_o\) # (\insttester|TEST_PASS~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \instHVAC|counter:cnt[3]~q\,
	datac => \sw[3]~input_o\,
	datad => \insttester|TEST_PASS~4_combout\,
	combout => \insttester|TEST_PASS~5_combout\);

-- Location: LCCOMB_X22_Y10_N24
\insttester|TEST_PASS~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~6_combout\ = (\insttester|TEST_PASS~5_combout\ & ((\instCompx4|AGTB~0_combout\) # ((\instCompx4|AGTB~2_combout\ & \instCompx4|AGTB~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instCompx4|AGTB~0_combout\,
	datab => \insttester|TEST_PASS~5_combout\,
	datac => \instCompx4|AGTB~2_combout\,
	datad => \instCompx4|AGTB~1_combout\,
	combout => \insttester|TEST_PASS~6_combout\);

-- Location: LCCOMB_X22_Y10_N22
\insttester|TEST_PASS~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~9_combout\ = (\insttester|TEST_PASS~6_combout\) # ((\insttester|TEST_PASS~7_combout\ & (!\instCompx4|AEQB~0_combout\ & \insttester|TEST_PASS~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \insttester|TEST_PASS~7_combout\,
	datab => \instCompx4|AEQB~0_combout\,
	datac => \insttester|TEST_PASS~8_combout\,
	datad => \insttester|TEST_PASS~6_combout\,
	combout => \insttester|TEST_PASS~9_combout\);

-- Location: LCCOMB_X22_Y10_N28
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

-- Location: LCCOMB_X24_Y10_N2
\insttester|TEST_PASS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~1_combout\ = (\sw[2]~input_o\ & ((\instHVAC|counter:cnt[2]~q\) # (\insttester|TEST_PASS~0_combout\))) # (!\sw[2]~input_o\ & (\instHVAC|counter:cnt[2]~q\ & \insttester|TEST_PASS~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datac => \instHVAC|counter:cnt[2]~q\,
	datad => \insttester|TEST_PASS~0_combout\,
	combout => \insttester|TEST_PASS~1_combout\);

-- Location: LCCOMB_X24_Y10_N28
\insttester|TEST_PASS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~2_combout\ = (\instCompx4|ALTB~2_combout\ & ((\instHVAC|counter:cnt[3]~q\ & ((!\insttester|TEST_PASS~1_combout\) # (!\sw[3]~input_o\))) # (!\instHVAC|counter:cnt[3]~q\ & (!\sw[3]~input_o\ & !\insttester|TEST_PASS~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instCompx4|ALTB~2_combout\,
	datab => \instHVAC|counter:cnt[3]~q\,
	datac => \sw[3]~input_o\,
	datad => \insttester|TEST_PASS~1_combout\,
	combout => \insttester|TEST_PASS~2_combout\);

-- Location: LCCOMB_X22_Y10_N12
\insttester|TEST_PASS~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \insttester|TEST_PASS~10_combout\ = (!\pb_n[2]~input_o\ & ((\insttester|TEST_PASS~9_combout\) # (\insttester|TEST_PASS~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb_n[2]~input_o\,
	datac => \insttester|TEST_PASS~9_combout\,
	datad => \insttester|TEST_PASS~2_combout\,
	combout => \insttester|TEST_PASS~10_combout\);

-- Location: LCCOMB_X20_Y11_N4
\inst1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\instmux|hex_out[3]~0_combout\ & (\instmux|hex_out[0]~3_combout\ & (\instmux|hex_out[1]~2_combout\ $ (\instmux|hex_out[2]~1_combout\)))) # (!\instmux|hex_out[3]~0_combout\ & (!\instmux|hex_out[1]~2_combout\ & 
-- (\instmux|hex_out[0]~3_combout\ $ (\instmux|hex_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[0]~3_combout\,
	datab => \instmux|hex_out[3]~0_combout\,
	datac => \instmux|hex_out[1]~2_combout\,
	datad => \instmux|hex_out[2]~1_combout\,
	combout => \inst1|Mux6~0_combout\);

-- Location: LCCOMB_X22_Y11_N12
\inst2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\instHVAC|counter:cnt[3]~q\ & (!\instHVAC|counter:cnt[0]~q\ & (\instHVAC|counter:cnt[1]~q\ $ (\instHVAC|counter:cnt[2]~q\)))) # (!\instHVAC|counter:cnt[3]~q\ & (\instHVAC|counter:cnt[1]~q\ & (\instHVAC|counter:cnt[0]~q\ $ 
-- (\instHVAC|counter:cnt[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[1]~q\,
	datab => \instHVAC|counter:cnt[0]~q\,
	datac => \instHVAC|counter:cnt[3]~q\,
	datad => \instHVAC|counter:cnt[2]~q\,
	combout => \inst2|Mux6~0_combout\);

-- Location: LCCOMB_X20_Y11_N2
\inst3|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[0]~0_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst1|Mux6~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst2|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datac => \inst1|Mux6~0_combout\,
	datad => \inst2|Mux6~0_combout\,
	combout => \inst3|DOUT[0]~0_combout\);

-- Location: LCCOMB_X19_Y11_N4
\inst1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\instmux|hex_out[2]~1_combout\ & (\instmux|hex_out[3]~0_combout\ & ((\instmux|hex_out[1]~2_combout\) # (!\instmux|hex_out[0]~3_combout\)))) # (!\instmux|hex_out[2]~1_combout\ & (!\instmux|hex_out[3]~0_combout\ & 
-- (\instmux|hex_out[1]~2_combout\ & !\instmux|hex_out[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[2]~1_combout\,
	datab => \instmux|hex_out[3]~0_combout\,
	datac => \instmux|hex_out[1]~2_combout\,
	datad => \instmux|hex_out[0]~3_combout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y10_N30
\inst2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\instHVAC|counter:cnt[2]~q\ & (!\instHVAC|counter:cnt[3]~q\ & (\instHVAC|counter:cnt[0]~q\ & !\instHVAC|counter:cnt[1]~q\))) # (!\instHVAC|counter:cnt[2]~q\ & (\instHVAC|counter:cnt[3]~q\ & ((\instHVAC|counter:cnt[0]~q\) # 
-- (!\instHVAC|counter:cnt[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[2]~q\,
	datab => \instHVAC|counter:cnt[3]~q\,
	datac => \instHVAC|counter:cnt[0]~q\,
	datad => \instHVAC|counter:cnt[1]~q\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y10_N28
\inst3|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[2]~2_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst1|Mux4~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst2|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux4~0_combout\,
	datac => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst2|Mux4~0_combout\,
	combout => \inst3|DOUT[2]~2_combout\);

-- Location: LCCOMB_X20_Y11_N8
\inst1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\instmux|hex_out[1]~2_combout\ & ((\instmux|hex_out[0]~3_combout\ & ((\instmux|hex_out[2]~1_combout\))) # (!\instmux|hex_out[0]~3_combout\ & (\instmux|hex_out[3]~0_combout\ & !\instmux|hex_out[2]~1_combout\)))) # 
-- (!\instmux|hex_out[1]~2_combout\ & (!\instmux|hex_out[3]~0_combout\ & (\instmux|hex_out[0]~3_combout\ $ (\instmux|hex_out[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[0]~3_combout\,
	datab => \instmux|hex_out[3]~0_combout\,
	datac => \instmux|hex_out[1]~2_combout\,
	datad => \instmux|hex_out[2]~1_combout\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y11_N14
\inst2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\instHVAC|counter:cnt[1]~q\ & (!\instHVAC|counter:cnt[3]~q\ & (\instHVAC|counter:cnt[0]~q\ $ (\instHVAC|counter:cnt[2]~q\)))) # (!\instHVAC|counter:cnt[1]~q\ & ((\instHVAC|counter:cnt[0]~q\ & (\instHVAC|counter:cnt[3]~q\ & 
-- \instHVAC|counter:cnt[2]~q\)) # (!\instHVAC|counter:cnt[0]~q\ & ((!\instHVAC|counter:cnt[2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[1]~q\,
	datab => \instHVAC|counter:cnt[0]~q\,
	datac => \instHVAC|counter:cnt[3]~q\,
	datad => \instHVAC|counter:cnt[2]~q\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X20_Y11_N30
\inst3|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[3]~3_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & (\inst1|Mux3~0_combout\)) # (!\inst3|clk_proc:COUNT[10]~q\ & ((\inst2|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datac => \inst1|Mux3~0_combout\,
	datad => \inst2|Mux3~0_combout\,
	combout => \inst3|DOUT[3]~3_combout\);

-- Location: LCCOMB_X23_Y11_N28
\inst2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (\instHVAC|counter:cnt[1]~q\ & ((\instHVAC|counter:cnt[2]~q\ & ((!\instHVAC|counter:cnt[0]~q\))) # (!\instHVAC|counter:cnt[2]~q\ & (!\instHVAC|counter:cnt[3]~q\)))) # (!\instHVAC|counter:cnt[1]~q\ & (!\instHVAC|counter:cnt[3]~q\ & 
-- ((!\instHVAC|counter:cnt[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instHVAC|counter:cnt[3]~q\,
	datab => \instHVAC|counter:cnt[2]~q\,
	datac => \instHVAC|counter:cnt[0]~q\,
	datad => \instHVAC|counter:cnt[1]~q\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y11_N2
\inst1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\instmux|hex_out[1]~2_combout\ & (((!\instmux|hex_out[3]~0_combout\ & \instmux|hex_out[0]~3_combout\)))) # (!\instmux|hex_out[1]~2_combout\ & ((\instmux|hex_out[2]~1_combout\ & (!\instmux|hex_out[3]~0_combout\)) # 
-- (!\instmux|hex_out[2]~1_combout\ & ((\instmux|hex_out[0]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \instmux|hex_out[2]~1_combout\,
	datab => \instmux|hex_out[3]~0_combout\,
	datac => \instmux|hex_out[1]~2_combout\,
	datad => \instmux|hex_out[0]~3_combout\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y11_N0
\inst3|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3|DOUT[4]~4_combout\ = (\inst3|clk_proc:COUNT[10]~q\ & ((\inst1|Mux2~0_combout\))) # (!\inst3|clk_proc:COUNT[10]~q\ & (\inst2|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Mux2~0_combout\,
	datab => \inst3|clk_proc:COUNT[10]~q\,
	datad => \inst1|Mux2~0_combout\,
	combout => \inst3|DOUT[4]~4_combout\);

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


