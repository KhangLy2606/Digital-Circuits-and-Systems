-- Group 14: Khang Ly & Olivia Yi
library ieee;
use ieee.std_logic_1164.all;
library work;

entity mux_out is
 	port (
			mux_in1, mux_in2								: in std_logic_vector(4 downto 0);
			mux_select                             : in std_logic;
			mux_out_final				 					: out std_logic_vector(4 downto 0)
			);

 end mux_out;

 architecture mux_out1 of mux_out is 
 begin
 
 with mux_select select 
mux_out_final <= mux_in1 when '0',
					  mux_in2 when '1';
				 
 end mux_out1;