----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:07:31 02/27/2013 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: v 1.0 -- Steven Vanden Branden
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_Control is
    Port ( 	ALU_OP : in STD_logic_vector(1 downto 0); 			
				ALU_Funct_In : in  STD_LOGIC_VECTOR (5 downto 0);
				ALU_Control_out : out  STD_LOGIC_VECTOR (3 downto 0)
			  );
end ALU_Control;

architecture Behavioral of ALU_Control is
begin
	ALU_Control_Output: process(ALU_OP,ALU_Funct_In)
	begin
			if (ALU_OP="00") then
				ALU_Control_Out<="0010";
			elsif (ALU_OP="01") then
				ALU_Control_Out<="0110";
			
			elsif (ALU_OP="10") then
				 CASE ALU_Funct_In IS
					WHEN  "100000"  =>  ALU_Control_Out <= "0010";
					WHEN  "100010"  =>  ALU_Control_Out <= "0110";
					WHEN  "100100"  =>  ALU_Control_Out <= "0000";
					WHEN  "100101"  =>  ALU_Control_Out <= "0001";
					WHEN  "101010"  =>  ALU_Control_Out <= "0111";
					WHEN OTHERS =>  ALU_Control_Out <= "1111";
					END CASE;
			 else
				ALU_Control_Out<="1111"; --error
			end if;	
	end process ALU_Control_Output;

end Behavioral;

