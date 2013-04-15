-------------------------------------------------------------------------------
-- Title      : Instruction Memory
-- Project    : 
-------------------------------------------------------------------------------
-- File       : IMem.vhd
-- Author     : Frank Vanbever  <frank@neuromancer>
-- Company    : 
-- Created    : 2013-02-13
-- Last update: 2013-04-15
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: This is the instruction memory for a MIPS processor
-------------------------------------------------------------------------------
-- Copyright (c) 2013 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2013-02-13  1.0      frank   Created
-------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;


-------------------------------------------------------------------------------
--! Instruction memory implementation for MIPS processor
-------------------------------------------------------------------------------
entity imem is
  
  port (
    --! Program counter input
    pc          : in  std_logic_vector(31 downto 0);
    --! Instruction output
    Instruction : out std_logic_vector(31 downto 0));

end imem;

-------------------------------------------------------------------------------
--! The architecture of the instruction memory is based on an array of 32-bit words.
-------------------------------------------------------------------------------
architecture behavioral of imem is
begin


  ----------------------------------------------------------------------------
  --! The MemoryPC process looks at the program counter and outputs the correct
  --! instruction.
  -----------------------------------------------------------------------------
  MemoryPC : process (PC)
    subtype  word is std_logic_vector(31 downto 0);
    type     memory is array (0 to 7) of word;
    variable myMem : memory := (X"00000001", X"00000010", X"00000100", X"00001000", X"00010000", X"00100000", X"01000000", X"10000000");


    begin
      instruction <= myMem(conv_integer(PC(31 downto 2)));
      
    end process MemoryPC;

    


  end behavioral;
