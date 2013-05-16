-------------------------------------------------------------------------------
-- Title      : MIPS Register File
-- Project    : 
-------------------------------------------------------------------------------
-- File       : read_register.vhd
-- Author     : Frank Vanbever  <frank@neuromancer>
-- Company    : 
-- Created    : 2013-02-27
-- Last update: 2013-04-15
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: This is a MIPS register file implementation in VHDL
-------------------------------------------------------------------------------
-- Copyright (c) 2013 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2013-02-27  1.0      frank   Created
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
--! @file
--! @brief Register file for a MIPS processor
--! @details There are 32 registers which can all be read. All registers except
--! for register 0 can be written to. Register 0 contains the constant value 0
--! which is needed for the correct functioning of the MIPS processor.
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

--! The register file contains all registers for a MIPS processor to function

entity register_file is
  
  port (

    clk : in std_logic;                 --! clock signal

    -- input vectors

    --! First read register adress input
    Read_reg_1 : in std_logic_vector(25 downto 21);  
    --! Second read register adress input
    Read_reg_2 : in std_logic_vector(20 downto 16);
    --! Write register adress input
    Write_reg  : in std_logic_vector(15 downto 11);
      --! Data to be written to the write adress
    Write_data : in std_logic_vector(31 downto 0);

    -- output vectors
    --! Data read from read register 1
    Read_data_1 : out std_logic_vector(31 downto 0);
    --! Data read from read register 2
    Read_data_2 : out std_logic_vector(31 downto 0);  

    -- control signals
    --! Togles reading/writing of values to registers
    write_enable : in std_logic  

    );
end register_file;


--! @brief The architecture of this component is based on an array of 32 32-bit words
--! @details There are 32 registers which can all be read. All registers except
--! for register 0 can be written to. Register 0 contains the constant value 0
--! which is needed for the correct functioning of the MIPS processor.
architecture behavioral of register_file is

  -- Zero register: constant value 0
  

  subtype word is std_logic_vector(31 downto 0); --! Each register consists of
                                                 --! a 32 bit word 
  type    registerFile is array (0 to 31) of word;

  shared variable register_file : registerFile :=
    (X"00000000", -- 0
     X"00000000", -- 1
     X"00000000", -- 2
     X"00000000",	-- 3
     X"00000000", -- 4
     X"00000000", -- 5
     X"00000000", -- 6
     X"00000000", -- 7
     X"00000000", -- 8
     X"00000000", -- 9
     X"00000000", -- 10
     X"00000000", -- 11
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
     X"00000000");                      --! All registers are initialized to 0

begin  -- behavioral
	
	
  read_reg_proc : process ( Read_reg_1 , Read_reg_2 )
  begin
  Read_data_1 <= register_file(conv_integer(Read_reg_1));
  Read_data_2 <= register_file(conv_integer(Read_reg_2));
  end process read_reg_proc;
  
  
  write_reg_proc : process (clk,Write_data)
  begin  -- process reg_file_proc
      if write_enable = '1' then
        if Write_reg /= X"00000000" then
          register_file(conv_integer(Write_reg)) := Write_data;
        end if;
      end if;
  end process write_reg_proc;

end behavioral;


