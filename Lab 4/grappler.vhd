library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

Entity Grappler is port(
			
				clock, Grappler_button, grappler_en, reset		:in std_logic;
				Grappler_on										:out std_logic
						
				);
end Entity;

architecture control of Grappler is 

 
 TYPE STATE_NAMES IS (Start, Opening, close, Closing);   -- list all the STATE_NAMES values

 
 SIGNAL current_state, next_state    :  STATE_NAMES;         -- signals of type STATE_NAMES
 
 BEGIN

 -- REGISTER_LOGIC PROCESS:
 
Register_Section: PROCESS (clock, reset, next_state, grappler_en)  -- this process synchronizes the activity to a clock
BEGIN
    IF (reset = '1') THEN
        current_state <= Start;
    ELSIF(rising_edge(clock) AND grappler_en='1') THEN
        current_state <= next_state;
    END IF;
END PROCESS;    



-- TRANSITION LOGIC PROCESS

Transition_Section: PROCESS (grappler_button, current_state) 

BEGIN
     CASE current_state IS
			-- When we are in start, wait for the grappler button to be pressed and go to Closing state. 
         WHEN Start =>
                
                IF(grappler_button = '1') THEN
                    next_state <= Closing;
                
                ELSE
                    next_state <= Start;
                END IF;
					 
			--When we are in closing, wait for the grappler button to be released and go to Close state.
         WHEN Closing =>
                if (grappler_button='0') then        
                          next_state <= close;
                else                                        
                    next_state <= Closing;
                end if;
         
			--When we are in Close, wait for the grappler button to be pressed and go to Opening state.
         WHEN close =>        

                IF(grappler_button='1' ) THEN
                    next_state <= Opening;
                ELSE
                    next_state <= close;

                END IF;
        --When we are in Opening, wait for the grappler button to be released and go to Start state.
        WHEN Opening =>        

                IF(grappler_button='0') THEN
                    next_state <= Start;
                ELSE
                    next_state <= Opening;

                END IF;
                
            WHEN others =>
                next_state <= Start;
            
         END CASE;

      
 END PROCESS;

-- DECODER SECTION PROCESS

Decoder_Section: PROCESS (current_state) 

BEGIN
     CASE current_state IS
	  
			--when in Start, grappler is not activated
         WHEN Start =>    
                grappler_on <= '0';
           
			--when in Closing, grappler is not activated
            WHEN Closing =>    
                grappler_on <= '0';
            
			--when in Close, grappler is activated because the button is pressed and released. 
            WHEN close =>    
                grappler_on <= '1';
            
			--when in Start, grappler is activated because the button is pressed and released. 
            WHEN Opening =>    
                grappler_on <= '1';
            
            
			--default
            WHEN others =>
                grappler_on <= '0';
                      
      END CASE;
 END PROCESS;


 END control;