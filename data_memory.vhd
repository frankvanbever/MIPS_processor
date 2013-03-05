library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;



entity data_memory is
port(
	-- input signals	
	clk : in std_logic;
	
	-- control signals
	MemWrite : in std_logic;
	MemRead : in std_logic;

	-- input vectors
	adress : in std_logic_vector(31 downto 0);
	write_data : in std_logic_vector(31 downto 0);

	-- output vectors
	read_data : out std_logic_vector(31 downto 0)
	);

end data_memory;


architecture behavioral of data_memory is

subtype word is std_logic_vector(31 downto 0);
type memory_array is array (0 to 64) of word;

shared variable dataMem : memory_array :=
	(X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000",
	 X"00000000");

	 begin --behavioral
	 	data_mem_proc : process(clk)
		begin
			if rising_edge(clk) then
				if MemRead = '1' and MemWrite = '0' then
					read_data <= dataMem(conv_integer(adress));
				elsif MemRead = '0' and MemWrite = '1' then
					dataMem(conv_integer(adress)) := write_data;
				end if;
			end if;

		end process;
	end behavioral;
	

	

	

	
		

