----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:52:28 02/27/2013 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 0.1	- first version
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( ALU_Input_1 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_Input_2 : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_Zero : out  STD_LOGIC;
           ALU_Result : out  STD_LOGIC_VECTOR (31 downto 0);
           ALU_Control_In : in  STD_LOGIC_VECTOR (3 downto 0)
			  );
end ALU;
		 
architecture Behavioral of ALU is
		variable Result: Std_logic_vector (31 downto 0);
begin
		ALU_Result_Calc: process(ALU_Input_1,ALU_Input_2,ALU_Control_In)
		begin
		case ALU_Control_In is
			when "0000" => Result := ALU_Input_1 AND ALU_Input_2;
			when "0001" => Result := ALU_Input_1 OR ALU_Input_2;
			when "0010" => Result := ALU_Input_1 + ALU_Input_2;
			when "0110" => Result := ALU_Input_1 - ALU_Input_2;
			when "0111" => (Result := ALU_Input_1 < ALU_Input_2);
			when "1100" => Result := ALU_Input_1 NOR ALU_Input_2;
			WHEN OTHERS => Result := "0";
			end case;
		if(Result=X"00000000")then
			ALU_Zero<='1';
		else
			ALU_Zero<='0';
		end if;
		ALU_Result <= Result;
		end process ALU_Result_Calc;

end Behavioral;

