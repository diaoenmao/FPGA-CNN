library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity divideby2 is
port 
	(
		a		: in signed  (15 downto 0);
		result	: out signed  (15 downto 0)
	);

end entity;

architecture rtl of divideby2 is
begin
	result <= a / 2;
	
end rtl;
