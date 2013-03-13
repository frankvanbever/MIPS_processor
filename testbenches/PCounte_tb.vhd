--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:24:29 02/20/2013
-- Design Name:   
-- Module Name:   /home/frank/testproject/PCounte_tb.vhd
-- Project Name:  testproject
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: pc
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY PCounte_tb IS
END PCounte_tb;
 
ARCHITECTURE behavior OF PCounte_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pc
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         PC_in : IN  std_logic_vector(31 downto 0);
         PC_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    
	
   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal PC_in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal PC_out : std_logic_vector(31 downto 0);
	
   -- Clock period definitions
   constant clk_period : time := 10 ns;
	
	
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pc PORT MAP (
          clk => clk,
          reset => reset,
          PC_in => PC_in,
          PC_out => PC_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		PC_in <= (others => '0');
      wait for clk_period*10;
		PC_in <= PC_out + 4;
		wait for clk_period;
		
		wait for 2 ns;
		reset <= '1';
		wait for 10 ns;
		reset <= '0';
		wait for 2 ns;
		
		PC_in <= PC_out + 4;
		wait for clk_period;
		PC_in <= PC_out + 4;
		wait for clk_period;
		PC_in <= PC_out + 4;

      wait;
   end process;

END;
