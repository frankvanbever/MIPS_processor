-- Frank Vanbever 06/03/13
-------------------------------------------------------------------------------
--! @file
--! @brief Data Memory implementation for a MIPS processor
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


-------------------------------------------------------------------------------
--! Data memory implementation for a MIPS processor. Allows storage for 64 words currently.
-------------------------------------------------------------------------------
entity data_memory is
port(
	-- input signals	
	clk : in std_logic; -- clock
	
	-- control signals
        --! Write enable signal. Warning: mutually exclusive with MemRead!
        MemWrite : in std_logic;
        --! Read enable signal. Warning: mutually exclusive with MemWrite!
	MemRead : in std_logic;

	-- input vectors
        --! Adress from which the value should be read or to which it should be
        --! written
	adress : in std_logic_vector(31 downto 0);

        --! Data to be written at the given adress in write mode
	write_data : in std_logic_vector(31 downto 0);

	--! Data to be read from the given adress in read mode
	read_data : out std_logic_vector(31 downto 0)
	);

end data_memory;


-------------------------------------------------------------------------------
--! @brief The architecture of the data memory is based on an array of 64
--! 32-bit words
--! @detailed MemWrite and MemRead are mutually exclusive, only one can be 1 at
--! a time. This is a problem that needs to be adressed.
-------------------------------------------------------------------------------
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

	 	
		---------------------------------------------------------------
                --! process that governs reading from or writing to the memory.
                --! reads or writes values accordingly.
                ---------------------------------------------------------------
		data_mem_proc : process(MemRead,MemWrite,write_data,adress)
		begin
			-- trick to avoid undefined address error(should give no problems,only delays the read/write untill adress is defined well)
			if(conv_integer(adress)<63)then
				if (MemRead = '1') and (MemWrite = '0') then 
					read_data <= dataMem(conv_integer(adress));
				elsif (MemRead = '0') and (MemWrite = '1') then
					dataMem(conv_integer(adress)) := write_data;
				end if;
			end if;
		end process;
	end behavioral;
	

	

	

	
		

