--GROUP 14: Khang Ly and Olivia Yi
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Compx4 is port(

A	   	:  in  std_logic_vector(3 downto 0);  -- 4-bit input
B	  		:  in  std_logic_vector(3 downto 0);  
 
AGTB		:  out std_logic; -- 1-bit output
AEQB		:  out std_logic;
ALTB		:  out std_logic

);

end Compx4;

architecture compare4 of Compx4 is
	
component Compx1
	port(
			A_n,B_n : in std_logic;
			AGTB_n, AEQB_n, ALTB_n : out std_logic
			);
			
end component;
--variables for output of each bit comparision out[nth bit] (2: larger, 1: equal, 0: smaller)
signal out3 : std_logic_vector(2 downto 0);
signal out2 : std_logic_vector(2 downto 0);
signal out1 : std_logic_vector(2 downto 0);
signal out0 : std_logic_vector(2 downto 0);

begin 
-- 4 Compx1 instances for used in Compx4
A_3: Compx1 port map (A(3),B(3),out3(2),out3(1),out3(0)); 
A_2: Compx1 port map (A(2),B(2),out2(2),out2(1),out2(0));
A_1: Compx1 port map (A(1),B(1),out1(2),out1(1),out1(0));
A_0: Compx1 port map (A(0),B(0),out0(2),out0(1),out0(0));


AGTB <= (out3(2) XNOR '1')  -- when A3 > B3 is true 
			OR ((out3(1) XNOR '1') AND (out2(2) XNOR '1')) -- or when A3 = B3 and A2 > B2 is true
			OR ((out3(1) XNOR '1') AND (out2(1) XNOR '1') AND (out1(2) XNOR '1')) -- or when A3 = B3 and A2 = B2 and A1 > B1 is true
			OR ((out3(1) XNOR '1') AND (out2(1) XNOR '1') AND (out1(1) XNOR '1') AND (out0(2) XNOR '1')); -- When A3=B3, A2=B2, A1=B1, and A0> B0 is true
ALTB <= (out3(0) XNOR '1')  --when A3 < B3 is true
			OR ((out3(1) XNOR '1') AND (out2(0) XNOR '1'))-- or when A3 = B3 and A2 < B2 is true
			OR ((out3(1) XNOR '1') AND (out2(1) XNOR '1') AND (out1(0) XNOR '1')) -- or when A3 = B3 and A2 = B2 and A1 < B1 is true
			OR ((out3(1) XNOR '1') AND (out2(1) XNOR '1') AND (out1(1) XNOR '1') AND (out0(0) XNOR '1')); -- When A3=B3, A2=B2, A1=B1, and A0< B0 is true
AEQB <=  (out3(1) XNOR '1') and (out2(1) XNOR '1') and (out1(1) XNOR '1') and (out0(1) XNOR '1'); --when A3=B3 and A2=B2 and A1=B1 and A0=B0 is true

end;
