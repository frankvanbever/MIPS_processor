--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:48:55 03/04/2013
-- Design Name:   
-- Module Name:   /home/frank/Dropbox/Workspaces/Workspace_xilinx/reg_file/register_file_tb.vhd
-- Project Name:  reg_file
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_file
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

ENTITY register_file_tb IS
	END register_file_tb;

ARCHITECTURE behavior OF register_file_tb IS 

    -- Component Declaration for the Unit Under Test (UUT)

	COMPONENT register_file
		PORT(
			    clk : IN  std_logic;
			    Read_reg_1 : IN  std_logic_vector(25 downto 21);
			    Read_reg_2 : IN  std_logic_vector(20 downto 16);
			    Write_reg : IN  std_logic_vector(15 downto 11);
			    Write_data : IN  std_logic_vector(31 downto 0);
			    Read_data_1 : OUT  std_logic_vector(31 downto 0);
			    Read_data_2 : OUT  std_logic_vector(31 downto 0);
			    write_enable : IN  std_logic
		    );
	END COMPONENT;


   --Inputs
	signal clk : std_logic := '0';
	signal Read_reg_1 : std_logic_vector(25 downto 21) := (others => '0');
	signal Read_reg_2 : std_logic_vector(20 downto 16) := (others => '0');
	signal Write_reg : std_logic_vector(15 downto 11) := (others => '0');
	signal Write_data : std_logic_vector(31 downto 0) := (others => '0');
	signal write_enable : std_logic := '0';

   --Outputs
	signal Read_data_1 : std_logic_vector(31 downto 0);
	signal Read_data_2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
	constant clk_period : time := 10 ns;

BEGIN

   -- Instantiate the Unit Under Test (UUT)
	uut: register_file PORT MAP (
					    clk => clk,
					    Read_reg_1 => Read_reg_1,
					    Read_reg_2 => Read_reg_2,
					    Write_reg => Write_reg,
					    Write_data => Write_data,
					    Read_data_1 => Read_data_1,
					    Read_data_2 => Read_data_2,
					    write_enable => write_enable
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
	-- set write enable to zero
		write_enable <= '0';

	-- test with zero
		Read_reg_1 <= (others => '0'); 
		Read_reg_2 <= (others => '0');

		wait for clk_period*2;	
		assert Read_data_2 = X"00000000" report "Incorrect value at test with zero";
		assert Read_data_1 = X"00000000" report "Incorrect value at test with zero";
		wait for clk_period*10;

	-- write a value into register one	
		write_enable <= '1';
		Write_reg <= "00001";
		Write_data <= X"00000002";

		wait for clk_period*2;
		write_enable <= '0';
		Read_reg_1 <= "00001";
		wait for clk_period;
		assert Read_data_1 = X"00000002" report "Data is niet correct geschreven";

	-- try to write a value into register 0
		wait for clk_period*10;
		write_enable <= '1';
		Write_reg <= "00000";
		Write_data <= X"10000000";

		wait for clk_period;
		write_enable <= '0';
		Read_reg_1 <= "00000";

		wait for clk_period;
		assert Read_data_1 = X"00000000" report "Data is naar het 0 register geschreven"; 

		wait;
	end process;

END;
