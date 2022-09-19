-- Group 14: Khang Ly & Olivia Yi
library ieee;
use ieee.std_logic_1164.all;
library work;

entity mux is
 	port (
			mux1, mux0 : in std_logic_vector(3 downto 0);
			mux_select 										: in std_logic; 
			hex_out				 							: out std_logic_vector(3 downto 0)
			);

 end mux;

 architecture mux_logic of mux is
 
 begin
-- WHEN VACATION MODE IS '1', CHOOSE VACATION TEMP (MUX0) OR CHOOSE DESIRED TEMP (MUX1)
with mux_select select 
hex_out <= mux0 when '1',
			  mux1 when '0';
 
 end mux_logic;
 
 