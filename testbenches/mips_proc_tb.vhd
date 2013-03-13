
--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:30:55 02/20/2013
-- Design Name:   
-- Module Name:   /home/frank/testproject/mips_proc_tb.vhd
-- Project Name:  testproject
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mips_proc
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;

entity mips_proc_tb is
end mips_proc_tb;

architecture behavior of mips_proc_tb is

  -- Component Declaration for the Unit Under Test (UUT)
  
  component mips_proc
    port(
      clk         : in  std_logic;
      reset       : in  std_logic;
      instruction : out std_logic_vector(31 downto 0);
      pca_o       : out std_logic_vector(31 downto 0)
      );
  end component;


  --Inputs
  signal clk   : std_logic := '0';
  signal reset : std_logic := '0';

  --Outputs
  signal instruction : std_logic_vector(31 downto 0);
  signal pca_o       : std_logic_vector(31 downto 0);

  -- Clock period definitions
  constant clk_period : time := 10 ns;
  
begin

  -- Instantiate the Unit Under Test (UUT)
  uut : mips_proc port map (
    clk         => clk,
    reset       => reset,
    instruction => instruction,
    pca_o       => pca_o
    );

  -- Clock process definitions
  clk_process : process
  begin
    clk <= '1';
    wait for clk_period/2;
    clk <= '0';
    wait for clk_period/2;
  end process;


  -- Stimulus process
  stim_proc : process
  begin
    -- hold reset state for 100 ns.
    reset <= '1';
    wait for 100 ns;
    reset <= '0';
    wait for 41 ns;
    reset <= '1';
    wait for 4 ns;
    reset <= '0';
    -- insert stimulus here

    

    wait;
  end process;

end;
