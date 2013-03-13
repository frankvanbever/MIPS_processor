-- Frank Vanbever 03/06/2013


library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity sign_extend_tb is
	end sign_extend_tb;



architecture behavioral of sign_extend_tb is
	-- declaration of UUT
	component sign_extend
		port ( 	
			     instruction_in : in std_logic_vector(15 downto 0);
			     instruction_out : out std_logic_vector(31 downto 0)
		     );
	end component;


	signal tb_inst_in : std_logic_vector(15 downto 0);
	signal tb_inst_out : std_logic_vector(31 downto 0);

	signal clk : std_logic; 

	constant clk_period : time := 10 ns;

begin
	uut: sign_extend port map (
					  instruction_in => tb_inst_in,
					  instruction_out => tb_inst_out
				  );

	-- Clock process definitions
	clk_process : process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;

	stim_proc : process
	begin
		wait for 100 ns;

		-- test 1: test with sign bit 1
		tb_inst_in <= X"FFFF";
		wait for clk_period; 
		assert tb_inst_out = X"FFFFFFFF" report "error at test 1";

		-- test 2: test with sign bit 0
		wait for clk_period;
		tb_inst_in <= X"0000";
		wait for clk_period;
		assert tb_inst_out = X"00000000" report "error at test 2";

		
		wait;
	end process;

end;

