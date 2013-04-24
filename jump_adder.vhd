-- frank Vanbever 13/03/2013


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


-------------------------------------------------------------------------------
--! Adder to calculate adresses for jumps
-------------------------------------------------------------------------------
entity jump_adder is
  port(

    -- input vectors
    --! Current value of the PC
    instruction : in std_logic_vector(31 downto 0);
    --! Amount by which the current PC should be shifted
    jmp_offset  : in std_logic_vector(31 downto 0);


    -- output vectors
    --! New value for the program counter
    jmp_adress : out std_logic_vector(31 downto 0)


    );


end jump_adder;

-------------------------------------------------------------------------------
--! The architecture of this component is trivial, it adds 2 values together.
-------------------------------------------------------------------------------
architecture behavioral of jump_adder is

  signal jmp_offset_shifted : std_logic_vector(31 downto 0);
begin
  jmp_offset_shifted(31 downto 2) <= jmp_offset(29 downto 0);
  jmp_offset_shifted(1 downto 0)  <= (others => '0');
  jmp_adress                      <= instruction + jmp_offset_shifted;
end behavioral;


