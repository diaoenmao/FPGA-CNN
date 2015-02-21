library ieee;
use ieee.std_logic_1164.all;        
use ieee.numeric_std.all; -- this is the standard package where signed is defined
-- never use non-standard ieee.std_logic_arith and ieee.std_logic_unsigned


ENTITY absolutor IS
port (  
	
	a: in  signed(15 downto 0); 
	result: out signed(15 downto 0)
);
END absolutor;


ARCHITECTURE rtl OF absolutor IS
begin
process(a)
begin
  result <= abs(a);
end process;
END rtl;