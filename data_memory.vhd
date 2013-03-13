-- Frank Vanbever 06/03/13


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;



entity data_memory is
port(
	-- input signals	
	clk : in std_logic; -- clock
	
	-- control signals
	MemWrite : in std_logic; -- write enable
	MemRead : in std_logic; -- read enable
	-- deze signalen zijn mutueel exclusief!! Lezen en Schrijven kunnen niet tegelijk.

	-- input vectors
	adress : in std_logic_vector(31 downto 0); -- adres bus signaal
	write_data : in std_logic_vector(31 downto 0); -- data die weggeschreven dient te worden

	-- output vectors
	read_data : out std_logic_vector(31 downto 0) -- data die men uitleest
	);

end data_memory;


architecture behavioral of data_memory is

subtype word is std_logic_vector(31 downto 0);
type memory_array is array (0 to 63) of word;

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

	 	---------------------------------------------------------------------------------------------------------------
		-- proces dat het geheugen aantsuurt
		-- indien MemWrite 0 is en MemRead 1 is wordt de waarde op adres op de read_data output gezet
		-- indien de MemWrite 1 is en MemRead 0 is wordt de waarde op write_data geschreven in het register met adress
		---------------------------------------------------------------------------------------------------------------
		
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
	

	

	

	
		

