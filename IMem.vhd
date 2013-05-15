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
    variable myMem : memory := (X"21280005", X"20090005", X"01095020", X"AC080001", X"8C0B0001", X"00000020", X"00000020", X"00000020");

-- add $t0, $t1, $t2	add $8, $9, $10 012A4020
-- sub $t0, $t1, $t2 sub $8, $9, $10 012A4022
-- or $t0, $t1, $t2 or $8, $9, $10 012A4025
-- and $t0, $t1, $t2 and $8, $9, $10 012A4024
-- slt $t0, $t1, $t2 slt $8, $9, $10 012A402A
-- slt $t0, $t2, $t1 slt $8, $10, $9 0149402A
-- nor $t0, $t1, $t2 012A4027
-- beq $zero,$zero 1000FFFF
-- add $10, $8, $9 01095020
-- addi $8, $9, 5 21280005

-- addi $8, $0, 5 20080005
-- addi $9, $0, 5 20090005
-- add $10, $8, $9 01095020
-- sw $10, 0($0) AC080000
-- lw $11, 0($0) 8C0B0000

-- sw $10, 1($0) AC080001
-- lw $11, 1($0) 8C0B0001

    begin
      instruction <= myMem(conv_integer(PC(31 downto 2)));
      
    end process MemoryPC;

    


  end behavioral;
