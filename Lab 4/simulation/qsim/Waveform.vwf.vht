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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/30/2022 17:33:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LogicalStep_Lab4_top
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LogicalStep_Lab4_top_vhd_vec_tst IS
END LogicalStep_Lab4_top_vhd_vec_tst;
ARCHITECTURE LogicalStep_Lab4_top_arch OF LogicalStep_Lab4_top_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Clk : STD_LOGIC;
SIGNAL clk_ext_out : STD_LOGIC;
SIGNAL extender_en_out : STD_LOGIC;
SIGNAL extender_out_out : STD_LOGIC;
SIGNAL leds : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL left_right_out : STD_LOGIC;
SIGNAL pb_n : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL seg7_char1 : STD_LOGIC;
SIGNAL seg7_char2 : STD_LOGIC;
SIGNAL seg7_data : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL sw : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL xPOS : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL xreg : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL yPOS : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL yreg : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT LogicalStep_Lab4_top
	PORT (
	Clk : IN STD_LOGIC;
	clk_ext_out : OUT STD_LOGIC;
	extender_en_out : OUT STD_LOGIC;
	extender_out_out : OUT STD_LOGIC;
	leds : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	left_right_out : OUT STD_LOGIC;
	pb_n : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	seg7_char1 : OUT STD_LOGIC;
	seg7_char2 : OUT STD_LOGIC;
	seg7_data : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	sw : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	xPOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	xreg : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	yPOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	yreg : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LogicalStep_Lab4_top
	PORT MAP (
-- list connections between master ports and signals
	Clk => Clk,
	clk_ext_out => clk_ext_out,
	extender_en_out => extender_en_out,
	extender_out_out => extender_out_out,
	leds => leds,
	left_right_out => left_right_out,
	pb_n => pb_n,
	seg7_char1 => seg7_char1,
	seg7_char2 => seg7_char2,
	seg7_data => seg7_data,
	sw => sw,
	xPOS => xPOS,
	xreg => xreg,
	yPOS => yPOS,
	yreg => yreg
	);

-- Clk
t_prcs_Clk: PROCESS
BEGIN
LOOP
	Clk <= '0';
	WAIT FOR 5000 ps;
	Clk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_Clk;

-- pb_n[3]
t_prcs_pb_n_3: PROCESS
BEGIN
	pb_n(3) <= '0';
	WAIT FOR 20000 ps;
	pb_n(3) <= '1';
	WAIT FOR 370000 ps;
	pb_n(3) <= '0';
	WAIT FOR 20000 ps;
	pb_n(3) <= '1';
WAIT;
END PROCESS t_prcs_pb_n_3;

-- sw[7]
t_prcs_sw_7: PROCESS
BEGIN
	sw(7) <= '1';
	WAIT FOR 500000 ps;
	sw(7) <= '0';
WAIT;
END PROCESS t_prcs_sw_7;

-- sw[6]
t_prcs_sw_6: PROCESS
BEGIN
	sw(6) <= '1';
	WAIT FOR 250000 ps;
	sw(6) <= '0';
WAIT;
END PROCESS t_prcs_sw_6;

-- sw[5]
t_prcs_sw_5: PROCESS
BEGIN
	sw(5) <= '1';
WAIT;
END PROCESS t_prcs_sw_5;

-- sw[4]
t_prcs_sw_4: PROCESS
BEGIN
	sw(4) <= '0';
WAIT;
END PROCESS t_prcs_sw_4;

-- sw[3]
t_prcs_sw_3: PROCESS
BEGIN
	sw(3) <= '0';
	WAIT FOR 500000 ps;
	sw(3) <= '1';
WAIT;
END PROCESS t_prcs_sw_3;

-- sw[2]
t_prcs_sw_2: PROCESS
BEGIN
	sw(2) <= '1';
WAIT;
END PROCESS t_prcs_sw_2;

-- sw[1]
t_prcs_sw_1: PROCESS
BEGIN
	sw(1) <= '1';
WAIT;
END PROCESS t_prcs_sw_1;

-- sw[0]
t_prcs_sw_0: PROCESS
BEGIN
	sw(0) <= '0';
	WAIT FOR 500000 ps;
	sw(0) <= '1';
WAIT;
END PROCESS t_prcs_sw_0;

-- pb_n[2]
t_prcs_pb_n_2: PROCESS
BEGIN
	pb_n(2) <= '1';
	WAIT FOR 30000 ps;
	pb_n(2) <= '0';
	WAIT FOR 20000 ps;
	pb_n(2) <= '1';
WAIT;
END PROCESS t_prcs_pb_n_2;

-- pb_n[1]
t_prcs_pb_n_1: PROCESS
BEGIN
	pb_n(1) <= '1';
	WAIT FOR 210000 ps;
	pb_n(1) <= '0';
	WAIT FOR 20000 ps;
	pb_n(1) <= '1';
WAIT;
END PROCESS t_prcs_pb_n_1;

-- pb_n[0]
t_prcs_pb_n_0: PROCESS
BEGIN
	pb_n(0) <= '1';
	WAIT FOR 290000 ps;
	pb_n(0) <= '0';
	WAIT FOR 20000 ps;
	pb_n(0) <= '1';
WAIT;
END PROCESS t_prcs_pb_n_0;
END LogicalStep_Lab4_top_arch;
