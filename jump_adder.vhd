-- frank Vanbever 13/03/2013


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity jump_adder is
	port(

		    -- clock input signal
		    clk : in std_logic;

		    -- input vectors
		    instruction : in std_logic_vector(31 downto 0); -- program counter value
		    jmp_offset : in std_logic_vector(31 downto 0); -- amount by which the program counter is shifted


		    -- output vectors
		    jmp_adress : out std_logic_vector(31 downto 0) -- adress to which is jumped


	    );


end jump_adder;


architecture behavioral of jump_adder is

	signal jmp_offset_shifted : std_logic_vector(31 downto 0);
begin
			jmp_offset_shifted(31 downto 2) <= jmp_offset(29 downto 0);
			jmp_offset_shifted(1 downto 0) <= (others => '0');
			jmp_adress <= instruction + jmp_offset_shifted;
end behavioral;


