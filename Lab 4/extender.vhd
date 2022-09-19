library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity Extender is port(
				clock, reset 												:in std_logic;
				extender, extender_en									:in std_logic;
				ext_pos														:in std_logic_vector(3 downto 0);
				
				extender_out 												:out std_logic := '1'; 
				clk_en 														:out std_logic := '0'; 
				left_right 													:out std_logic := '0'; 
				grappler_en													:out std_logic := '0'
					
				);
end Entity;
ARCHITECTURE extend of Extender is  

	TYPE STATE_NAMES IS (Idle, Pressed, Right_shift, left_shift);   -- list all the STATE_NAMES values

	SIGNAL current_state, next_state    :  STATE_NAMES;         -- signals of type STATE_NAMES
 
 BEGIN
 

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clock, reset, next_state, extender)  -- this process synchronizes the activity to a clock
BEGIN
    IF (reset = '1') THEN
        current_state <= Idle;
    ELSIF(rising_edge(clock)) THEN
        current_state <= next_state;
    END IF;
END PROCESS;    



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (extender_en, extender, current_state, ext_pos) 

BEGIN
     CASE current_state IS

	 
			-- When in Idle, if the button is pressed and the extender_en is on, we go to the pressed state 
			-- Else stay in idle
         WHEN Idle =>
                
                IF(extender_en ='1' AND extender = '1') THEN
                    next_state <= Pressed;
                
                ELSE
                    next_state <= Idle;
                END IF;
					 
			-- When in pressed, if the button is released and the extender_en is on, we go to the right_shift if pos = 0000 and left_shift if pos = 1111
			-- else stay in pressed mode.
         WHEN Pressed =>
                if (extender = '0' and extender_en = '1') then        
                    
						  if (ext_pos = "0000") then
                        next_state <= right_shift;
                    else    
                        next_state <= left_shift;
                    end if;
                
					 else                     		
                    next_state <= Pressed;
                end if;
					 
         --When in Right_shift, if the pos is 1110 then the next mode would be idle since we are fully extended.
			--else stay in Right_shift until the pos is 1110. 
         WHEN Right_shift =>        

                IF(ext_pos= "1110" ) THEN
                    next_state <= Idle;
                ELSE
                    next_state <= Right_shift;

                END IF;
					 
         --When in left_shift, if the pos is 1000 then the next mode would be idle since we are fully retracted.
			--else stay in left_shift until the pos is 1000.   
        WHEN left_shift =>        

                IF(ext_pos= "1000" ) THEN
                    next_state <= Idle;
                ELSE
                    next_state <= left_shift;

                END IF;
--				-- default state 
            WHEN others =>
                next_state <= Idle;
            
         END CASE;

 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (extender_en, extender, current_state, ext_pos) 

BEGIN
     CASE current_state IS
	  --decoder logic for Idle state: 
	  --if the extender is in the original position 0000 then nothing happens
	  --else extender_out and grappler_en = 1 (fully extended position 1111)
         
			
			WHEN Idle =>    
                
                IF(ext_pos = "0000") THEN
                    extender_out <= '0';
                    clk_en <= '0';
                    left_right <= '0';
                    grappler_en <= '0';
						  
                ELSE 
                    extender_out <= '1';
                    clk_en <= '0';
                    left_right <= '0';
                    grappler_en <= '1';    
                
					 END IF;

         --decoder logic for pressed state:
			-- if the extender is not in the original position then 
			-- The extender will wait for the release of the button to extend 
			-- while having extender_out and grappler_en = 1;
			
         WHEN Pressed =>        
            
                IF(ext_pos = "0000") THEN
                    extender_out <= '0';
                    clk_en <= '0';
                    left_right <= '0';
                    grappler_en <= '0';
                ELSE
                    extender_out <= '1';
                    clk_en <= '0';
                    left_right <= '0';
                    grappler_en <= '1';
                END IF;
			--decoder logic for Right_shift state: 
			-- Shift the extender position 1 bit to the right and setting the clock of the shift register to 1	
         -- Extender_out = 1 because extender is not in 0000
			WHEN Right_shift =>        
            
                    extender_out <= '1';
                    clk_en <= '1';
                    left_right <= '1';
                    grappler_en <= '0';
         --decoder logic for left_shift state:
			-- Shift the extender position 1 bit to the left and setting the clock of the shift register to 1	
         -- Extender_out = 1 because extender is not in 0000
         WHEN left_shift =>        
                    
                    extender_out <= '1';
                    clk_en <= '1';
                    left_right <= '0';
                    grappler_en <= '0';
            
				--decoder logic for default state
            WHEN others =>
                    extender_out <= '0';
                    clk_en <= '0';
                    left_right <= '0';
                    grappler_en <= '0';
                    
      END CASE;
 END PROCESS;

end extend; 
