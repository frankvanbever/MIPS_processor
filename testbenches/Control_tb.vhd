--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
-- 
-- Create Date:   16:24:09 03/13/2013
-- Design Name:   
-- Module Name:   /home/steven/Documenten/Codes/pcarch/MIPSmodules/Control_tb.vhd
-- Project Name:  MIPSmodules
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Control
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
 
ENTITY Control_tb IS
END Control_tb;
 
ARCHITECTURE behavior OF Control_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Control
    PORT(
         Instruction : IN  std_logic_vector(31 downto 26);
         Instruction_funct : IN  std_logic_vector(5 downto 0);
         RegDst : OUT  std_logic;
         ALUSrc : OUT  std_logic;
         MemtoReg : OUT  std_logic;
         RegWrite : OUT  std_logic;
         MemRead : OUT  std_logic;
         MemWrite : OUT  std_logic;
         Branch : OUT  std_logic;
         Branch_ne : OUT  std_logic;
         ALUop : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Instruction : std_logic_vector(31 downto 26) := (others => '0');
   signal Instruction_funct : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal RegDst : std_logic;
   signal ALUSrc : std_logic;
   signal MemtoReg : std_logic;
   signal RegWrite : std_logic;
   signal MemRead : std_logic;
   signal MemWrite : std_logic;
   signal Branch : std_logic;
   signal Branch_ne : std_logic;
   signal ALUop : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
	signal clk: std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Control PORT MAP (
          Instruction => Instruction,
          Instruction_funct => Instruction_funct,
          RegDst => RegDst,
          ALUSrc => ALUSrc,
          MemtoReg => MemtoReg,
          RegWrite => RegWrite,
          MemRead => MemRead,
          MemWrite => MemWrite,
          Branch => Branch,
          Branch_ne => Branch_ne,
          ALUop => ALUop
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

      -- insert stimulus here
      wait for clk_period*10;
		Instruction<="000000";			--testfor R-format
		wait for clk_period*10;
		Instruction<="100011";			--testfor load word
		wait for clk_period*10;
		Instruction<="101011";			--testfor store word
		wait for clk_period*10;
		Instruction_funct<="000100";
		Instruction<="000100";			--testfor branch equal
		wait for clk_period*10;
		Instruction_funct<="000101"; 	--testfor branch not equal
		wait for clk_period*10;
		Instruction<="111111";			--testfor error
		

      wait;
   end process;

END;
