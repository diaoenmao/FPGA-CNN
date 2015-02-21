LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

PACKAGE my_package IS
	CONSTANT ADDER_WIDTH : integer := 5;
	CONSTANT RESULT_WIDTH : integer := 6;

	SUBTYPE ADDER_VALUE IS integer RANGE 0 TO 2 ** ADDER_WIDTH - 1;
	SUBTYPE RESULT_VALUE IS integer RANGE 0 TO 2 ** RESULT_WIDTH - 1;
END my_package;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.my_package.ALL;

ENTITY addsub IS
	PORT
	(
		a: 		IN ADDER_VALUE;
		b: 		IN ADDER_VALUE;
		addnsub: 		IN STD_LOGIC;
		result: 		OUT RESULT_VALUE
	);
END addsub;

ARCHITECTURE rtl OF addsub IS
BEGIN
	PROCESS (a, b, addnsub)
	BEGIN
		IF (addnsub = '1') THEN
			result <= a + b;
		ELSE
			result <= a - b;
		END IF;
	END PROCESS;
END rtl;
