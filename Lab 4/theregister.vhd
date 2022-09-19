library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity theregister IS Port
(
    CLK                	: in std_logic := '0' ; 
    RESET             	: in std_logic := '0' ; 
    CLK_EN            	: in std_logic := '0' ; 
    data                : in std_logic_vector (3 downto 0) ;
    output            	: out std_logic_vector (3 downto 0) 
);
END ENTITY ;

ARCHITECTURE reg OF theregister IS

Begin

process (CLK, RESET) is
begin
    if (RESET = '1') then 
        output <= "0000";
    elsif (rising_edge(CLK) AND CLK_En = '1') then
        output <= data ; 
    end if;
end process ;

end reg;