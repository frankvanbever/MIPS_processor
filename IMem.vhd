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
    variable myMem : memory := (X"20080005", X"20090001", X"00085820", X"01094022", X"01685818", X"1528FFFD", X"00000020", X"00000020");

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

--multiply

-- addi $8, $0, 5 20080005
-- addi $9, $0, 5 20090005
-- mult $8,$9 01090018		--multiply (can define rd so directly writes)
-- mfhi $10		00005010
-- mflo $11  	00005812

-- fibonacci

-- # Initialization
--
-- addi	$t0,$zero,0		# store 0 in $t1											20080000
-- addi	$t1,$zero,1		# store 1 in $t2											20090001
--
-- start_loop:
-- add	$t2,$t0,$t1		# add the two previous numbers together			01095020
-- add	$t0,$zero,$t1		# store previous value in lower register		00094020
-- add	$t1,$zero,$t2		# store new value in register						000a4820
-- beq	$zero,$zero,start_loop	# next iteration								1000fffc

--factorial
-- # Initialization
--
--addi $8, $0,5							20080005
--addi $9, $0,1							20090001
--add $11,$0,$8						00085820

--start loop:
--sub $8,$8,$9							01094022
--mul $11,$11,$8					71685802	(01685818)
--bne $9,$8,loop						1528fffd
--


    begin
      instruction <= myMem(conv_integer(PC(31 downto 2)));
      
    end process MemoryPC;

    


  end behavioral;
