
LIBRARY ieee; 
USE ieee.std_logic_1164.all;
LIBRARY work; 

ENTITY VDHL_Polarity_gates IS
	PORT (
			IN_1, IN_2, IN_3, IN_4, POLARITY_CNTRL :IN STD_LOGIC;
			OUT_1, OUT_2, OUT_3, OUT_4: OUT STD_LOGIC
	);
END VDHL_Polarity_gates;

ARCHITECTURE simple_gates_1 OF VDHL_Polarity_gates IS
BEGIN

OUT_1 <= IN_1 xNOR POLARITY_CNTRL;
OUT_2 <= IN_2 xNOR POLARITY_CNTRL;
OUT_3 <= IN_3 xNOR POLARITY_CNTRL;
OUT_4 <= IN_4 xNOR POLARITY_CNTRL; 

end simple_gates_1;
