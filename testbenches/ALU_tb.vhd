--------------------------------------------------------------------------------
-- Company: 
-- Engineer: Steven Vanden Branden
--
-- Create Date:   15:00:12 03/06/2013
-- Design Name:   
-- Module Name:   /home/steven/Documenten/Codes/pcarch/MIPSmodules/ALU_tb.vhd
-- Project Name:  MIPSmodules
-- Target Device:
-- Tool versions: 
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALU_tb IS
END ALU_tb;
 
ARCHITECTURE behavior OF ALU_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         ALU_Input_1 : IN  std_logic_vector(31 downto 0);
         ALU_Input_2 : IN  std_logic_vector(31 downto 0);
         ALU_Zero : OUT  std_logic;
         ALU_Result : OUT  std_logic_vector(31 downto 0);
         ALU_Control_In : IN  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ALU_Input_1 : std_logic_vector(31 downto 0) := (others => '0');
   signal ALU_Input_2 : std_logic_vector(31 downto 0) := (others => '0');
   signal ALU_Control_In : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal ALU_Zero : std_logic;
   signal ALU_Result : std_logic_vector(31 downto 0);
	-- No clocks detected in port list. Replace <clock> below with 
	-- appropriate port name 
   constant clk_period : time := 10 ns;
	signal clk: std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          ALU_Input_1 => ALU_Input_1,
          ALU_Input_2 => ALU_Input_2,
          ALU_Zero => ALU_Zero,
          ALU_Result => ALU_Result,
          ALU_Control_In => ALU_Control_In
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
		ALU_Input_1<=X"00100001";
		ALU_Input_2<=X"00000001";
		ALU_Control_In<="0000";		--test for AND
		wait for clk_period*10;
		ALU_Control_In<="0001";			--test for OR	
		wait for clk_period*10;
		ALU_Control_In<="0010";		--test for add
		wait for clk_period*10;
		ALU_Control_In<="0110";		--test for substract
		wait for clk_period*10;
		ALU_Control_In<="0111";		--test for set on less then
		wait for clk_period*10;
		ALU_Control_In<="1100";		--test for NOR 
		wait for clk_period*10;
		ALU_Input_2<=X"00100001";  --test for set on less then (equal)
		ALU_Control_In<="0111";		
		wait for clk_period*10;
		ALU_Input_2<=X"00100010";  --test for set on less then (greater)
		ALU_Control_In<="0111";		
		wait for clk_period*10;
		
      wait;
   end process;

END;
