-- Frank Vanbever 03/06/2013

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity sign_extend is 
	port ( 	instruction_in : in std_logic_vector(15 downto 0);
		instruction_out : out std_logic_vector(31 downto 0)
	);

end sign_extend;



architecture behavioral of sign_extend is
	
	signal sign_bit : std_logic;
	
begin
	sign_bit <= instruction_in(15); -- determine last bit
	instruction_out(15 downto 0) <= instruction_in;
	instruction_out(31 downto 16) <= (others => sign_bit);

end behavioral;
