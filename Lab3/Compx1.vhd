library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Compx1 is port(

A_n	   :  in  std_logic;  
B_n	   :  in  std_logic;  
 
AGTB_n		:  out std_logic;
AEQB_n		:  out std_logic;
ALTB_n		:  out std_logic

);

end Compx1;

architecture compare of Compx1 is

begin

AGTB_n <= A_n AND (Not B_n);
AEQB_n <= A_n XNOR B_n;
ALTB_n <= (Not A_n) AND  B_n;


end architecture compare; 
