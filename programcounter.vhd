-------------------------------------------------------------------------------
-- Title      : program counter
-- Project    : 
-------------------------------------------------------------------------------
-- File       : programcounter.vhd
-- Author     : Frank Vanbever  <frank@neuromancer>
-- Company    : 
-- Created    : 2013-02-13
-- Last update: 2013-02-13
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: program counter for a MIPS processor
-------------------------------------------------------------------------------
-- Copyright (c) 2013 
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version  Author  Description
-- 2013-02-13  1.0      frank   Created
-------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity pc is
  
  port (
    clk    : in  std_logic;
    reset  : in  std_logic;
    PC_in  : in  std_logic_vector(31 downto 0);
    PC_out : out std_logic_vector(31 downto 0));

end pc;

architecture behavioral of pc is

  signal PC_reset : std_logic;
begin  -- behavioral

  -----------------------------------------------------------------------------
  setPCd : process (clk, PC_in, PC_reset)
  begin  -- process setPCd
    if rising_edge(clk) then
      if PC_reset = '1' then
        PC_out <= (others => '0');
      else
        PC_out <= PC_in;
      end if;
    end if;
  end process setPCd;

-------------------------------------------------------------------------------
  resetPC : process (clk, reset)
  begin  -- process resetPC
    if reset = '1' then                              -- asynchronous reset
      PC_reset <= '1';
    elsif (rising_edge(clk)) and (reset = '0') then  -- rising clock edge
      PC_reset <= '0';
    end if;
  end process resetPC;

end behavioral;
