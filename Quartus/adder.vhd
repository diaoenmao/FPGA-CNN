LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE my_package IS
	CONSTANT ADDER_WIDTH : integer := 16;
	CONSTANT RESULT_WIDTH : integer := 16;

	SUBTYPE ADDER_VALUE IS integer RANGE 0 TO 2 ** ADDER_WIDTH - 1;
	SUBTYPE RESULT_VALUE IS integer RANGE 0 TO 2 ** RESULT_WIDTH - 1;
END my_package;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.my_package.ALL;

ENTITY adder IS
	PORT
	(
		a: 		IN ADDER_VALUE;
		b: 		IN ADDER_VALUE;
		c: 		IN ADDER_VALUE;
		d: 		IN ADDER_VALUE;
		e: 		IN ADDER_VALUE;
		f: 		IN ADDER_VALUE;
		g: 		IN ADDER_VALUE;
		h: 		IN ADDER_VALUE;
		i: 		IN ADDER_VALUE;
		
		result: 		OUT RESULT_VALUE
	);
END adder;

ARCHITECTURE rtl OF adder IS
BEGIN

	result <= a + b + c + d + e + f + g + h + i;

END rtl;
