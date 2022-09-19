-- Group 14: Khang Ly & Olivia Yi
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;

entity LogicalStep_Lab2_top is port (
	pb					: in	std_logic_vector(6 downto 0); 	-- push buttons used for data input selection/operation control
 	sw   				: in  std_logic_vector(15 downto 0); 	-- The switch inputs used for data inputs
   leds				: out std_logic_vector(5 downto 0) 		--  leds for outputs
	
); 
end LogicalStep_Lab2_top;

architecture Circuit of LogicalStep_Lab2_top is

-- Declare any Components to be Used ---
------------------------------------------------------------------- 
 component hex_mux
 	port (
			hex_num3, hex_num2, hex_num1, hex_num0 : in std_logic_vector(3 downto 0);
			mux_select 										: in std_logic_vector(1 downto 0); 
			hex_out 											: out std_logic_vector(3 downto 0)
			);
 end component;
 component full_adder_4bit 
 port (
			cin						: in std_logic;
			hex_val_A, hex_val_B	: in std_logic_vector(3 downto 0);
			hex_sum 					: out std_logic_vector(3 downto 0);
		   carry_out				: out std_logic
			);
 end component;
component logic_proc
	port(
			logic_in0, logic_in1							: in std_logic_vector(3 downto 0); 
			logic_select 									: in std_logic_vector(1 downto 0); 
			logic_out				 						: out std_logic_vector(3 downto 0)
		);
		
end component;
component mux_out 
	port(
			mux_in1, mux_in2								: in std_logic_vector(4 downto 0);
			mux_select                             : in std_logic;
			mux_out_final				 					: out std_logic_vector(4 downto 0)
		);
end component;
-------------------------------------------------------
-- Declare any signals here to be used within the design ---
-------------------------------------------------------
-- groups of logic signals with each group defined as std_logic_vector(MSB downto LSB) code here
	signal hex_A, hex_B, hex_C, hex_D: std_logic_vector(3 downto 0);
--- some mux_selector nets
	signal mux_sel			: std_logic_vector(1 downto 0);
	signal mux_sel1		: std_logic_vector(1 downto 0);
	signal mux_sel_logic : std_logic_vector(1 downto 0);
	signal mux_final 		: std_logic;
---signal for part D
	signal hex_mux_out1 : std_logic_vector(3 downto 0);
	signal hex_mux_out2 : std_logic_vector(3 downto 0);	
	signal logic_out_final : std_logic_vector (3 downto 0);
	signal hex_sum_final: std_logic_vector (3 downto 0);
	signal carry_out_final: std_logic;
	signal hexmuxout_in1: std_logic_vector(4 downto 0);
	signal hexmuxout_in2: std_logic_vector(4 downto 0); 
-------------------------------------------------------------------
-------------------------------------------------------------------

begin
-- assign (connect) one end of each input group (bus) to sepecific switch inputs
hex_A <= sw(3 downto 0);
hex_B <= sw(7 downto 4);
hex_C <= sw(11 downto 8);
hex_D <= sw(15 downto 12);
-- assign the pb inputs to drive a mux selection ports
mux_sel <= pb(1 downto 0);
mux_sel1 <= pb(3 downto 2);
mux_sel_logic <= pb(5 downto 4);
mux_final <= pb(6);
----------------------------------------------------------------------------
-- PLACE your compnent instances below with the interconnection required ---
----------------------------------------------------------------------------
-- this is part A for the two hex_mux

mux1: hex_mux port map (hex_D , hex_C, hex_B, hex_A, 
								 mux_sel, 
								 hex_mux_out1
); 
--mux1: will take in input from operand_A,B,C,D and select the output(hex_mux_out1) depends on mux_sel
mux2: hex_mux port map (hex_D , hex_C, hex_B, hex_A, 
								 mux_sel1, 
								 hex_mux_out2
); 
--mux2: will take in input from operand_A,B,C,D and select the output(hex_mux_out2) depends on mux_sel1
						
-- this is part B for the full_adder_4bits
adder: full_adder_4bit port map (
								'0',
								hex_mux_out1, hex_mux_out2,
								hex_sum_final ,
								carry_out_final
								
);
--adder: will take in input from mux1 and mux2 and compute the sum of the 2 and concatenate it with 
--carry_out_final. Then output to mux_out.

-- this is part C for logic_proc
logic: logic_proc port map (
							hex_mux_out1, hex_mux_out2,
							mux_sel_logic,
							logic_out_final
);
--logic: will take in input from mux1 and mux2 and select the output logic_out_final depends on mux_sel_logic
--logic_out_final will be send to mux_out. 

-- this is part D for mux_out

-- Declare the 2 input for mux_out 
hexmuxout_in1 <= '0'& logic_out_final ;
hexmuxout_in2 <=  carry_out_final& hex_sum_final ;


inst4: mux_out port map (
					hexmuxout_in1, hexmuxout_in2,
					mux_final,
					leds(4 downto 0)

	);
--mux_out will output into leds(4 to 0) with the mux_sel declared as mux_final. 
leds(5) <= pb(6);

end Circuit;

