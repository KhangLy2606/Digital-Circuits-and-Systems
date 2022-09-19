-- GROUP 14: KHANG LY & oLIVIA YI
library ieee;
use ieee.std_logic_1164.all;

entity LogicalStep_Lab3_top is port (
	clkin_50		: in 	std_logic;
	pb_n			: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 	
	
	----------------------------------------------------
HVAC_temp : out std_logic_vector(3 downto 0); -- used for simulations only. Comment out for FPGA download compiles.
	----------------------------------------------------	
   leds			: out std_logic_vector(7 downto 0);
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment
	seg7_char1  : out	std_logic;				    		-- seg7 digit1 selector
	seg7_char2  : out	std_logic				    		-- seg7 digit2 selector
	
); 
end LogicalStep_Lab3_top;

architecture design of LogicalStep_Lab3_top is
--
-- Provided Project Components Used
------------------------------------------------------------------- 
component SevenSegment  port (
   hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
   sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
); 
end component SevenSegment;
component segment7_mux port (
          clk        : in  std_logic := '0';
			 DIN2 		: in  std_logic_vector(6 downto 0);	
			 DIN1 		: in  std_logic_vector(6 downto 0);
			 DOUT			: out	std_logic_vector(6 downto 0);
			 DIG2			: out	std_logic;
			 DIG1			: out	std_logic
        );
end component segment7_mux;
component Tester port (
 MC_TESTMODE				: in  std_logic;
 I1EQI2,I1GTI2,I1LTI2	: in	std_logic;
	input1					: in  std_logic_vector(3 downto 0);
	input2					: in  std_logic_vector(3 downto 0);
	TEST_PASS  				: out	std_logic							 
	); 
	end component;
component HVAC 	port (
	HVAC_SIM					: in boolean;
	clk						: in std_logic; 
	run_n		   			: in std_logic;
	increase, decrease	: in std_logic;
	temp						: out std_logic_vector (3 downto 0)
	);
end component;
------------------------------------------------------------------
-- Add any Other Components here
------------------------------------------------------------------
component mux port (
		mux1, mux0 : in std_logic_vector(3 downto 0);
		mux_select 										: in std_logic; 
		hex_out				 							: out std_logic_vector(3 downto 0)
		);
end component;

component Energy_monitor port (
		GT, EQ, LT,Vacation_mode, MC_test_mode, window_open, door_open : in std_logic;
		 furnace, at_temp, AC, blower, window, door, vacation, decrease, increase, run_n : out std_logic
		);
end component;
component inverter port (

		pb_in1, pb_in2, pb_in3, pb_in4 : in std_logic;
		pb_out1, pb_out2, pb_out3, pb_out4: out std_logic
		
		);
end component;
component Compx4 port(
A, B	   :  in  std_logic_vector(3 downto 0);  
AGTB		:  out std_logic;
AEQB		:  out std_logic;
ALTB		:  out std_logic

);
end component;		
------------------------------------------------------------------	
-- Create any additional internal signals to be used
signal mux_temp				: std_logic_vector(3 downto 0);
signal current_temp			: std_logic_vector(3 downto 0);
signal Equal, Greater, Less: std_logic;
signal door_open, window_open, MC_test_mode, vacation_mode, run_n, decrease_temp, increase_temp : std_logic;
------------------------------------------------------------------	
constant HVAC_SIM : boolean := TRUE; -- set to FALSE when compiling for FPGA download to LogicalStep board
------------------------------------------------------------------	
-- global clock
signal clk_in										: std_logic;
signal desired_temp, vacation_temp 			: std_logic_vector(3 downto 0);
signal hexA_7seg, hexB_7seg					: std_logic_vector(6 downto 0);

------------------------------------------------------------------- 
begin -- Here the circuit begins
clk_in <= clkin_50;

-- ASSIGN ALL THE PORT TOGETHER USING INSTANCES OF EACH FUNCTION. 
desired_temp <= sw(3 downto 0);
vacation_temp <= sw(7 downto 4);
instinverter: inverter port map (pb_n(0), pb_n(1), pb_n(2), pb_n(3),
											door_open, window_open, MC_test_mode, vacation_mode
											);
											
instmux: mux port map (desired_temp, vacation_temp,
								vacation_mode,
								mux_temp
								);
								
instHVAC: HVAC port map (HVAC_SIM, 
								clkin_50, run_n, increase_temp, decrease_temp,
								current_temp
								);
	
instCompx4: Compx4 port map (mux_temp, current_temp,
									Greater, Equal, Less
									);
									
instEM: Energy_monitor port map (Greater, Equal, Less, vacation_mode, MC_test_mode, window_open, door_open,
											leds(0), leds(1), leds(2), leds(3), leds(4), leds(5), leds(7),decrease_temp, increase_temp, run_n
											);
											
insttester: tester port map (MC_test_mode, Equal, Greater, Less, desired_temp, current_temp,
										leds(6)
										);

inst1: sevensegment port map (mux_temp, hexA_7seg);
inst2: sevensegment port map (current_temp, hexB_7seg);
inst3: segment7_mux port map (clk_in, hexA_7seg, hexB_7seg, seg7_data, seg7_char2, seg7_char1);
------------------------------------------------------------------
HVAC_temp <= current_temp;  -- used for simulations only. Comment out for FPGA download compiles.	
---------------------------------------------------------------
end design;
