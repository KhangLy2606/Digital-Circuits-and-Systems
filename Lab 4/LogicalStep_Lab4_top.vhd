LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY LogicalStep_Lab4_top IS
   PORT
	(
	Clk			: in	std_logic;
	pb_n			: in	std_logic_vector(3 downto 0);
 	sw   			: in  std_logic_vector(7 downto 0); 
	leds			: out std_logic_vector(7 downto 0);
--------------------------------------------------------------------	
--	xreg, yreg	: out std_logic_vector(3 downto 0);-- (for SIMULATION only)
--	xPOS, yPOS	: out std_logic_vector(3 downto 0);-- (for SIMULATION only)
------------------------------------------------------------------	
   seg7_data 	: out std_logic_vector(6 downto 0); -- 7-bit outputs to a 7-segment display (for LogicalStep only)
	seg7_char1  : out	std_logic;				    		-- seg7 digit1 selector (for LogicalStep only)
	seg7_char2  : out	std_logic				    		-- seg7 digit2 selector (for LogicalStep only)
	
	);
END LogicalStep_Lab4_top;

ARCHITECTURE Circuit OF LogicalStep_Lab4_top IS

-- Provided Project Components Used
------------------------------------------------------------------- 
COMPONENT Clock_Source 	port (SIM_FLAG: in boolean;clk_input: in std_logic;clock_out: out std_logic);
END COMPONENT;

component Bidir_shift_reg port (

		CLK					:in std_logic := '0';
		RESET					:in std_logic := '0';
		CLK_EN				:in std_logic := '0';
		LEFT0_RIGHT1		:in std_logic := '0';
		REG_BITS				:out std_logic_vector(3 downto 0)
		);
end component Bidir_shift_reg;

component U_D_Bin_Counter4bit port (
		CLK					:in std_logic := '0';
		RESET					:in std_logic := '0';
		CLK_EN				:in std_logic := '0';
		UP1_DOWN0			:in std_logic := '0';
		COUNTER_BITS		:out std_logic_vector(3 downto 0)
		);
end component U_D_Bin_Counter4bit;

component SevenSegment
  port 
   (
      hex	   :  in  std_logic_vector(3 downto 0);   -- The 4 bit data to be displayed
      sevenseg :  out std_logic_vector(6 downto 0)    -- 7-bit outputs to a 7-segment
   ); 
end component SevenSegment;

component segment7_mux 
  port 
   (
      clk        	: in  std_logic := '0';
		DIN2 			: in  std_logic_vector(6 downto 0);	
		DIN1 			: in  std_logic_vector(6 downto 0);
		DOUT			: out	std_logic_vector(6 downto 0);
		DIG2			: out	std_logic;
		DIG1			: out	std_logic
   );
end component segment7_mux;
----------------------------------------------------------------
-- Add any Other Components here

component extender is port(

				clock, reset 												:in std_logic;
				extender, extender_en									:in std_logic;
				ext_pos														:in std_logic_vector(3 downto 0);
				
				extender_out 												:out std_logic := '1'; 
				clk_en 														:out std_logic := '0'; 
				left_right 													:out std_logic := '0'; 
				grappler_en													:out std_logic := '0'
);
end component extender;
---------------------------------------------------------------------

component Compx4 is port(
				A	   	:  in  std_logic_vector(3 downto 0);  -- 4-bit input
				B	  		:  in  std_logic_vector(3 downto 0);   
				AGTB		:  out std_logic; -- 1-bit output
				AEQB		:  out std_logic;
				ALTB		:  out std_logic
);
end component Compx4;
---------------------------------------------------------------------

component grappler is port (
				clock 										:in std_logic;
				grappler_button, grappler_en, reset	:in std_logic;
				grappler_on					:out std_logic
				);
end component grappler;
---------------------------------------------------------------------

component XY_motion is port(
				clk 										:in std_logic;
				X_GT, X_EQ, X_LT, Motion, Y_LT, Y_EQ, Y_GT, extender_out					:in std_logic;
				clk_enx, up_downx, error, Capture_XY, clk_eny, up_downy,extender_en		:out std_logic
		);
end component XY_motion; 
---------------------------------------------------------------------

component inverter is port (
		pb_in1, pb_in2, pb_in3, pb_in4 : in std_logic;
		pb_out1, pb_out2, pb_out3, pb_out4: out std_logic		
		);
end component inverter;

component theregister is port (
    CLK                	: in std_logic := '0' ; 
    RESET             	: in std_logic := '0' ; 
    CLK_EN            	: in std_logic := '0' ; 
    data                : in std_logic_vector (3 downto 0) ;
    output            	: out std_logic_vector (3 downto 0) 
);
end component theregister;

-- provided signals
-------------------------------------------------------------------
------------------------------------------------------------------	
constant SIM_FLAG : boolean := FALSE; -- set to FALSE when compiling for FPGA download to LogicalStep board
------------------------------------------------------------------	
------------------------------------------------------------------	
-- Create any additional internal signals to be used
signal clk_in, clock	: std_logic;

-- signal for inverter
signal grappler_but, extender_but, motion_but, reset: std_logic;

-- signal for grappler
signal grappler_en, grappler_on1: std_logic;

--signal for extender
signal extender_en, extender_out, left_right, clk_ext: std_logic;
signal ext_pos: std_logic_vector(3 downto 0);

--signal for XY_motion
signal X_GT, X_EQ, X_LT, Y_GT, Y_EQ, Y_LT: std_logic;
signal X_pos, Y_pos, X_reg, Y_reg : std_logic_vector(3 downto 0); 
signal capture_XY, clk_enx, up_downx, clk_eny, up_downy, error: std_logic;

--signal for 7sec out
signal dec_data_x, dec_data_y:std_logic_vector(6 downto 0); 

BEGIN
clk_in <= clk;

Clock_Selector: Clock_source port map(SIM_FLAG, clk_in, clock);

--inst_invert: inverter port map(pb_n(0), pb_n(1), pb_n(2), pb_n(3), grappler_but, extender_but, motion_but, Reset); --sims
inst_invert: inverter port map(pb_n(0), pb_n(1), pb_n(2), '1', grappler_but, extender_but, motion_but, Reset); --download

inst_grappler: grappler port map(clock, grappler_but, grappler_en, reset, grappler_on1); --good

--inst_extender: extender port map (clock, extender_but, ext_pos, extender_out, clk_ext, left_right, grappler_en); --good
inst_extender: extender port map (clock, reset, extender_but, extender_en, ext_pos, extender_out, clk_ext, left_right, grappler_en); --good

inst_Bi_shift_reg: Bidir_shift_reg port map(clock, reset, clk_ext, left_right, ext_pos); --good

inst_registerx: theregister port map (clock, reset, capture_XY, sw(7 downto 4), x_reg); --good
inst_registery: theregister port map (clock, reset, capture_XY, sw(3 downto 0), y_reg); --good

inst_XY: XY_motion port map (clock, X_GT, X_EQ, X_LT, Motion_but, Y_LT, Y_EQ, Y_GT, extender_out,
									 clk_enx, up_downx, error, Capture_XY, clk_eny, up_downy,extender_en);		--good
									 
inst_counterx: U_D_Bin_Counter4bit port map(
				clock,				
				RESET,
				CLK_ENx,
				UP_DOWNx,
				X_Pos ); --good
				
inst_countery: U_D_Bin_Counter4bit port map(
				clock, 					
				RESET,
				CLK_ENy,
				UP_DOWNy,
				Y_pos ); --good

				--Sim output:
--xPos (3 downto 0) <= x_pos;
--yPos (3 downto 0) <= y_pos;
--xReg (3 downto 0) <= x_reg;
--yReg (3 downto 0) <= y_reg;
--leds(7) <= capture_XY;


inst_compx: compx4 port map (
				x_pos, x_reg, X_GT, X_EQ, X_LT
);

inst_compy: compx4 port map (
				y_pos, y_reg, Y_GT, Y_EQ, Y_LT																																																																						
);

inst_sev_secx: SevenSegment port map (x_pos, dec_data_x);
inst_sev_secy: SevenSegment port map (y_pos, dec_data_y);
inst_sev_mux: segment7_mux port map (clk_in, dec_data_x, dec_data_y,seg7_data,  seg7_char1, seg7_char2);
				
leds(5 downto 2) <= ext_pos;
leds(1) <= grappler_on1;
leds(0) <= error and clock;
END Circuit;