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
		tb_inst_in <= "1111111111111111";
		wait until rising_edge(clk);
		assert tb_inst_out = "00000000000000001111111111111111";
		wait for clk_period;
		tb_inst_in <= "0000000000000000";
		wait;
	end process;

end;

