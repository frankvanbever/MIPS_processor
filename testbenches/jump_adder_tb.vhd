--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:18:24 03/13/2013
-- Design Name:   
-- Module Name:   /home/frank/School/MIPS_Project/MIPS_processor/testbenches/jump_adder_tb.vhd
-- Project Name:  mips_processor
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: jump_adder
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

ENTITY jump_adder_tb IS
	END jump_adder_tb;

ARCHITECTURE behavior OF jump_adder_tb IS 

	-- Component Declaration for the Unit Under Test (UUT)

	COMPONENT jump_adder
		PORT(
			    clk : IN  std_logic;
			    instruction : IN  std_logic_vector(31 downto 0);
			    jmp_offset : IN  std_logic_vector(31 downto 0);
			    jmp_adress : OUT  std_logic_vector(31 downto 0)
		    );
	END COMPONENT;


	--Inputs
	signal clk : std_logic := '0';
	signal instruction : std_logic_vector(31 downto 0) := (others => '0');
	signal jmp_offset : std_logic_vector(31 downto 0) := (others => '0');

	--Outputs
	signal jmp_adress : std_logic_vector(31 downto 0);

	-- Clock period definitions
	constant clk_period : time := 10 ns;

BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: jump_adder PORT MAP (
					 clk => clk,
					 instruction => instruction,
					 jmp_offset => jmp_offset,
					 jmp_adress => jmp_adress
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


		-- test 1 : all zeros
		instruction <= X"00000000";
		jmp_offset <= X"00000000";
		wait for clk_period;
		assert jmp_adress = X"00000000" report "test 1 failed";

		-- test 2: 1 and 1 
		instruction <= X"00000001";
		jmp_offset <= X"00000001";
		wait for clk_period;
		assert jmp_adress = X"00000005" report "test 2 failed";


		wait;
	end process;

END;
