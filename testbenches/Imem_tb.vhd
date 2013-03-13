--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:51:48 02/20/2013
-- Design Name:   
-- Module Name:   /home/frank/testproject/Imem_tb.vhd
-- Project Name:  testproject
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: imem
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Imem_tb IS
END Imem_tb;
 
ARCHITECTURE behavior OF Imem_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT imem
    PORT(
         pc : IN  std_logic_vector(31 downto 0);
         Instruction : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal pc : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Instruction : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace clk below with 
   -- appropriate port name 
	
	signal clk : std_logic;
 
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: imem PORT MAP (
          pc => pc,
          Instruction => Instruction
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
		pc <= X"00000000";
		wait for clk_period;
		pc <= X"00000004";
      wait for clk_period;
		pc <= X"00000008";
		wait for clk_period;
		pc <= X"0000000C";
		wait for clk_period;
		pc <= X"00000010";
		wait for clk_period;
		wait;
   end process;

END;
