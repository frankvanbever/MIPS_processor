--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:08:44 03/06/2013
-- Design Name:   
-- Module Name:   /home/frank/Dropbox/Workspaces/Workspace_xilinx/reg_file/data_memory_tb.vhd
-- Project Name:  reg_file
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: data_memory
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
 
ENTITY data_memory_tb IS
END data_memory_tb;
 
ARCHITECTURE behavior OF data_memory_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT data_memory
    PORT(
         clk : IN  std_logic;
         MemWrite : IN  std_logic;
         MemRead : IN  std_logic;
         adress : IN  std_logic_vector(31 downto 0);
         write_data : IN  std_logic_vector(31 downto 0);
         read_data : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal MemWrite : std_logic := '0';
   signal MemRead : std_logic := '0';
   signal adress : std_logic_vector(31 downto 0) := (others => '0');
   signal write_data : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal read_data : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: data_memory PORT MAP (
          clk => clk,
          MemWrite => MemWrite,
          MemRead => MemRead,
          adress => adress,
          write_data => write_data,
          read_data => read_data
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
	MemWrite <= '1';
	adress <= X"00000000";
	write_data <= X"FFFFFFFF";
	
	wait until rising_edge(clk);
	
	MemWrite <= '0';
	MemRead <= '1';
	wait until rising_edge(clk);
	assert read_data = X"FFFFFFFF" report "Data has not been written correctly";

      wait;
   end process;

END;
