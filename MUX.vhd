-- Frank Vanbever 06/03/2013

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


-------------------------------------------------------------------------------
--! Generic 2:1 multiplexer
-------------------------------------------------------------------------------
entity MUX is
  port (

    -- input signals
    
    --! clock signal
    clk      : in std_logic;
    --! selection, 0 means output 1, 1 means output 2
    selector : in std_logic;


    -- input vectors
    --! first input vector
    vector_in_1 : in std_logic_vector(31 downto 0);
    --! second input vector
    vector_in_2 : in std_logic_vector(31 downto 0);

    -- output vectors
    --! output vector
    vector_out : out std_logic_vector(31 downto 0)

    );
end MUX;


-------------------------------------------------------------------------------
--! It's a MUX ffs
-------------------------------------------------------------------------------
architecture behavioral of MUX is
begin
  -----------------------------------------------------------------------------
  --! On every rising edge the mux puts the selected signal on the output
  -----------------------------------------------------------------------------
  mux_proc : process (clk)
  begin
    if rising_edge(clk) then
      if selector = '0' then
        vector_out <= vector_in_1;
      elsif selector = '1' then
        vector_out <= vector_in_2;
      end if;
    end if;
  end process;
end behavioral;

