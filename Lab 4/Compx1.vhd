--GROUP 14: Khang Ly and Olivia Yi
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Compx1 is port(

A_n	   :  in  std_logic;  -- 1-bit input
B_n	   :  in  std_logic;  
 
AGTB_n		:  out std_logic; -- 1-bit output
AEQB_n		:  out std_logic;
ALTB_n		:  out std_logic

);

end Compx1;

architecture compare of Compx1 is

begin

AGTB_n <= A_n AND (Not B_n); -- when A is greater than B, A must be 1 and B must be o
AEQB_n <= A_n XNOR B_n; -- when A equals B, A and B must be same, either both 0 or both 1
ALTB_n <= (Not A_n) AND  B_n; -- when A is less than B, A must be 0 and B must be 1


end architecture compare; 
