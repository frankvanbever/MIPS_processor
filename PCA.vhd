-------------------------------------------------------------------------------
-- Title      : <title string>
-- Project    : 
-------------------------------------------------------------------------------
-- File       : test.vhd
-- Author     : Frank Vanbever  <frank@neuromancer>
-- Company    : 
-- Created    : 2013-02-13
-- Last update: 2013-02-13
-- Platform   : 
-- Standard   : VHDL'87
-------------------------------------------------------------------------------
-- Description: <cursor>
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
use ieee.std_logic_unsigned.all;

entity PCA is
  
  port (
    PC  : in  std_logic_vector(31 downto 0);  -- program conter
    PC4 : out std_logic_vector(31 downto 0)   -- intput = output + 4
    );
end PCA;

architecture behavioral of PCA is

begin  -- behavioral

  add4 : process (PC)
  begin  -- process add4
    PC4 <= PC + 4;
  end process add4;
  

end behavioral;



