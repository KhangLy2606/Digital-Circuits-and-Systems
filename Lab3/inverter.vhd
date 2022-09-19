-- GROUP 14: KHANG LY & oLIVIA YI
library ieee;
use ieee.std_logic_1164.all;

entity inverter is port (

		pb_in1, pb_in2, pb_in3, pb_in4 : in std_logic;
		pb_out1, pb_out2, pb_out3, pb_out4: out std_logic
		);
end inverter;

architecture invert of inverter is 

begin
		-- The inverter invert the input and assign it into the output.
		pb_out1 <= NOT pb_in1;
		pb_out2 <= NOT pb_in2;
		pb_out3 <= NOT pb_in3;
		pb_out4 <= NOT pb_in4;
		
end invert;