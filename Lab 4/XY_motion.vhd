library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity XY_motion is port(
				clk, X_GT, X_EQ, X_LT, Motion, Y_LT, Y_EQ, Y_GT, extender_out					:in std_logic;
				clk_enx, up_downx, error, Capture_XY, clk_eny, up_downy,extender_en		:out std_logic
				);
end Entity;

architecture control of XY_motion is 

BEGIN 

process (X_LT, X_EQ, X_GT, motion, Y_GT, Y_EQ, Y_LT, extender_out) is
BEGIN
	--If the motion button is pressed and the extender is not extended or retracted then capture XY = 1 and vice versa
    if(motion = '1' AND extender_out = '0' AND X_EQ = '1' AND Y_EQ = '1') then
        CAPTURE_XY <= '1' ;
    else
        CAPTURE_XY <= '0'; 
    end if ;
    
    --If the motion button is pressed and the extender is  extended then error = 1 and vice versa
	if (motion = '1' AND extender_out = '1') then 
        error <= '1';
    end if ;
    
	 --If the extender is not extended then error = 0
    if (extender_out = '0') then
        error <= '0' ;
    end if ;
    
    --If the extender is fully extended, extender_en = 1 and vice versa
    if (X_EQ = '1' AND Y_EQ = '1') then
        extender_en <= '1' ;
    else
        extender_en <= '0' ; 
    end if ; 
    
	 --If  the desired x position and the current x position is not equal and the motion button is pressed,
	 -- we set the clock to 1 and count the bits to the desired position.  
    if (X_LT = '1' and motion = '0') then
        clk_enx <= '1' ;
        up_downx <= '1' ;
    elsif (X_EQ = '1' and motion = '0') then
        clk_enx <= '0' ;
    elsif (X_GT = '1' and motion = '0') then
        clk_enx <= '1' ; 
        up_downx <= '0' ;
    end if ;    
	 --If  the desired y position and the current y position is not equal and the motion button is pressed,
	 -- we set the clock to 1 and count the bits to the desired position.    
    if (Y_LT = '1' and motion = '0') then
        clk_eny <= '1' ;
        up_downy <= '1' ;
    elsif (Y_EQ = '1' and motion = '0') then
        clk_eny <= '0' ;
    elsif (Y_GT = '1' and motion = '0') then
        clk_eny <= '1' ; 
        up_downy <= '0';
    end if ;

end process;
end control;