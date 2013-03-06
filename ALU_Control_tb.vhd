--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:59:31 03/06/2013
-- Design Name:   
-- Module Name:   /home/steven/Documenten/Codes/pcarch/MIPSmodules/ALU_Control_tb.vhd
-- Project Name:  MIPSmodules
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU_Control
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
 
ENTITY ALU_Control_tb IS
END ALU_Control_tb;
 
ARCHITECTURE behavior OF ALU_Control_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU_Control
    PORT(
         ALU_OP : IN  std_logic_vector(1 downto 0);
         ALU_Funct_In : IN  std_logic_vector(5 downto 0);
         ALU_Control_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ALU_OP : std_logic_vector(1 downto 0) := (others => '0');
   signal ALU_Funct_In : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal ALU_Control_out : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
	signal clk: std_logic;
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU_Control PORT MAP (
          ALU_OP => ALU_OP,
          ALU_Funct_In => ALU_Funct_In,
          ALU_Control_out => ALU_Control_out
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

      wait for clk_period*10;
		ALU_OP<="00";
		ALU_Funct_In<="100000";		--test for add				0010
		wait for clk_period*10;
		ALU_Funct_In<="101010";		--test for add 2			0010
		wait for clk_period*10;
		ALU_Funct_In<="100000";
		ALU_OP<="01";					--test for branch equal 0110
		wait for clk_period*10;
		ALU_OP<="10";					--test for add				0010
		wait for clk_period*10;
		ALU_Funct_In<="100010";		--test for substract		0110				
		wait for clk_period*10;
		ALU_Funct_In<="100100";		--test for AND				0000		
      wait for clk_period*10;
		ALU_Funct_In<="100101";		--test for OR				0001
		wait for clk_period*10;
		ALU_Funct_In<="101010";		--test for slt				0111
		wait;
   end process;

END;
