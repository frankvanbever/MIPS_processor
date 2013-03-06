-- Frank Vanbever 06/03/2013

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;



entity MUX is
	port (

		     -- input signals
		     clk : in std_logic;
		     selector : in std_logic;


		     -- input vectors	
		     vector_in_1 : in std_logic_vector(31 downto 0);
		     vector_in_2 : in std_logic_vector(31 downto 0);

		     -- output vectors
		     vector_out : out std_logic_vector(31 downto 0)

	     );
end MUX;

architecture behavioral of MUX is
begin
	mux_proc : process (clk)
	begin
		if rising_edge(clk) then
			if selector = '0' then
				vector_out <= vector_in_1;
			elsif selector = '1' then
				vector_out <= vector_in_2;
			end if;
		end if;
	end process;
end behavioral;


