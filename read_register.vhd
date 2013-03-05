-------------------------------------------------------------------------------
-- Title      : MIPS Register File
-- Project    : 
-------------------------------------------------------------------------------
-- File       : read_register.vhd
-- Author     : Frank Vanbever  <frank@neuromancer>
-- Company    : 
-- Created    : 2013-02-27
-- Last update: 2013-03-04
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

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity register_file is
  
  port (

    clk : in std_logic;

    -- input vectors
    Read_reg_1 : in std_logic_vector(25 downto 21);
    Read_reg_2 : in std_logic_vector(20 downto 16);
    Write_reg  : in std_logic_vector(15 downto 11);
    Write_data : in std_logic_vector(31 downto 0);

    -- output vectors
    Read_data_1 : out std_logic_vector(31 downto 0);
    Read_data_2 : out std_logic_vector(31 downto 0);

    -- control signals
    write_enable : in std_logic

    );
end register_file;

architecture behavioral of register_file is

  -- Zero register: constant value 0
  

  subtype word is std_logic_vector(31 downto 0);
  type    registerFile is array (0 to 31) of word;

  shared variable register_file : registerFile :=
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
     X"00000000");

begin  -- behavioral

  reg_file_proc : process (clk)
  begin  -- process reg_file_proc
    if clk'event and clk = '1' then     -- rising clock edge
      Read_data_1 <= register_file(conv_integer(Read_reg_1));
      Read_data_2 <= register_file(conv_integer(Read_reg_2));
      if write_enable = '1' then
        if Write_reg /= X"00000000" then
          register_file(conv_integer(Write_reg)) := Write_data;
        end if; 
      end if;
    end if;
  end process reg_file_proc;

end behavioral;


