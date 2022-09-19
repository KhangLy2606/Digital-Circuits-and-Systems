-- GROUP 14: KHANG LY & oLIVIA YI
library ieee;
use ieee.std_logic_1164.all;

entity Energy_monitor is port (

		GT, EQ, LT,Vacation_mode, MC_test_mode, window_open, door_open : in std_logic;
		furnace, at_temp, AC, blower, window, door, vacation, decrease, increase, run_n: out std_logic
		);

end Energy_monitor;

architecture control of Energy_monitor is 

begin 
--whenever the door is open (1), the LED for the door will turn on.
--the same logic applies for window and vacation. 
door <= door_open;
window <= window_open;
vacation <= vacation_mode;


--when mux_temp is greater than current temp, the current temp will increase and the furnace LED will turn on. 
increase<= GT;
furnace <= GT;
--when mux_temp is less than current temp, the current temp will decrease and the AC LED will turn on. 
decrease<= LT;
AC <= LT;
-- when the current temp is equal to the mux_temp, the LED for at_temp will turn on, 
at_temp <= EQ;


--when the temperature is not equal or when the window or door or MC_test_mode is '1', the blower will turn on.  
blower <= (EQ) nor (window_open or door_open or MC_Test_mode) ;

-- when the current_temp and the mux_temp is equal or when the window and door is open or when MC_test_mode is on, run_n will be off since it is active low 
run_n <=  (EQ or window_open or door_open or MC_Test_mode);
end control;
