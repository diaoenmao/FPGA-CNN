library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sig_altmult_accum is
	port 
	(
		a			: in signed(7 downto 0);
		b			: in signed (7 downto 0);
		clk			: in std_logic;
		sload		: in std_logic;
		accum_out	: out signed (15 downto 0)
	);
	
end entity;

architecture rtl of sig_altmult_accum is

	-- Declare registers for intermediate values
	signal a_reg : signed (7 downto 0);
	signal b_reg : signed (7 downto 0);
	signal sload_reg : std_logic;
	signal mult_reg : signed (15 downto 0);
	signal adder_out : signed (15 downto 0);
	signal old_result : signed (15 downto 0);

begin

	mult_reg <= a_reg * b_reg;
	
	process (adder_out, sload_reg)
	begin
		if (sload_reg = '1') then
			-- Clear the accumulated data
			old_result <= (others => '0');
		else
			old_result <= adder_out;
		end if;
	end process;
	
	process (clk)
	begin
		if (rising_edge(clk)) then
			a_reg <= a;
			b_reg <= b;
			sload_reg <= sload;
			
			-- Store accumulation result in a register
			adder_out <= old_result + mult_reg;
		end if;
	end process;
	
	-- Output accumulation result
	accum_out <= adder_out;
	
end rtl;
