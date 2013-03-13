--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:41:51 02/20/2013
-- Design Name:   
-- Module Name:   /home/frank/testproject/PCAdder_tb.vhd
-- Project Name:  testproject
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PCA
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
 
ENTITY PCAdder_tb IS
END PCAdder_tb;
 
ARCHITECTURE behavior OF PCAdder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PCA
    PORT(
         PC : IN  std_logic_vector(31 downto 0);
         PC4 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
		
	signal clk : std_logic;	

   --Inputs
   signal PC : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal PC4 : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace clk below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PCA PORT MAP (
          PC => PC,
          PC4 => PC4
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		PC <= X"00000000";
		wait for clk_period;
		PC <= PC4;
		wait for clk_period;
		PC <= PC4;
		wait for clk_period;
		PC <= PC4;
		wait for clk_period;
		PC <= PC4;
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
