-- Frank Vanbever 06/03/2013

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;


entity mux_tb is
	end mux_tb;


architecture behavior of mux_tb is

	component MUX is
		port (

			     -- input signals
			     clk : in std_logic;
			     selector : in std_logic;


			     -- input vectors	
			     vector_in_1 : in std_logic_vector(31 downto 0);
			     vector_in_2 : in std_logic_vector(31 downto 0);

			     -- output vectors
			     vector_out : out std_logic_vector(31 downto 0)

		     );
	end component;

	signal clk : std_logic := '0';

	signal tb_vec_in_1 : std_logic_vector(31 downto 0);

	signal tb_vec_in_2 : std_logic_vector(31 downto 0);


	signal tb_selector : std_logic;

	signal tb_vec_out : std_logic_vector(31 downto 0);

	constant clk_period : time := 10 ns;

begin
	uut : MUX  port map(
				   clk => clk,
				   selector => tb_selector,
				   vector_in_1 => tb_vec_in_1,
				   vector_in_2 => tb_vec_in_2,
				   vector_out  => tb_vec_out
			   );


	clk_process :process
	begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
	end process;

	stim_proc : process
	begin
		wait for 100 ns;

		wait for clk_period*10;

		tb_selector <= '0';
		tb_vec_in_1 <= X"FFFFFFFF";
		tb_vec_in_2 <= X"00000000";

		wait for clk_period; 

		assert tb_vec_out = X"FFFFFFFF" report "first test error";

		wait until rising_edge(clk); 

		tb_selector <= '1';

		wait for clk_period*2; 

		assert tb_vec_out = X"00000000" report "second test error";

		wait;

	end process;

end;
