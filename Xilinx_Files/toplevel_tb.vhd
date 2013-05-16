-- Vhdl test bench created from schematic /home/frank/Dropbox/Workspaces/workspace_comp_arch/MIPS_processor_2/toplevel.sch - Mon Apr 29 14:31:37 2013
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY toplevel_toplevel_sch_tb IS
END toplevel_toplevel_sch_tb;
ARCHITECTURE behavioral OF toplevel_toplevel_sch_tb IS 

   COMPONENT toplevel
   PORT( RST	:	IN	STD_LOGIC; 
          CLK	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL RST	:	STD_LOGIC;
   SIGNAL CLK	:	STD_LOGIC;
	
	constant clk_period : time := 100 ns;

BEGIN

   UUT: toplevel PORT MAP(
		RST => RST, 
		CLK => CLK
   );

-- *** Test Bench - User Defined Section ***
   
	 clk_process :process
	begin
	

		CLK <= '0';
		wait for clk_period/2;
		CLK <= '1';
		wait for clk_period/2;
   end process;
	
	tb : PROCESS
   BEGIN
	
		
		RST<='1';
		wait for 1ns;
		RST<='0';
		wait for 1ns;
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
