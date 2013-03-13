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
    Port ( 	ALU_OP : in STD_logic_vector(1 downto 0); 					--Opcode from controller
				ALU_Funct_In : in  STD_LOGIC_VECTOR (5 downto 0);			--6 bits coming from instruction
				ALU_Control_out : out  STD_LOGIC_VECTOR (3 downto 0)		--Output that goes to alu
			  );
end ALU_Control;

architecture Behavioral of ALU_Control is
begin
	ALU_Control_Output: process(ALU_OP,ALU_Funct_In)
	begin
			if (ALU_OP="00") then				-- load/store functions
				ALU_Control_Out<="0010";		-- set to add to calculate adress
			elsif (ALU_OP="01") then			-- branch on equal
				ALU_Control_Out<="0110";		-- set to substract
			
			elsif (ALU_OP="10") then			-- R-type instruction
				 CASE ALU_Funct_In IS
					WHEN  "100000"  =>  ALU_Control_Out <= "0010";	--add
					WHEN  "100010"  =>  ALU_Control_Out <= "0110";	--substract
					WHEN  "100100"  =>  ALU_Control_Out <= "0000";	--AND
					WHEN  "100101"  =>  ALU_Control_Out <= "0001";	--OR
					WHEN  "101010"  =>  ALU_Control_Out <= "0111";	--slt
					WHEN OTHERS =>  ALU_Control_Out <= "1111";		--error value
					END CASE;
			 else
				ALU_Control_Out<="1111"; --error value
			end if;	
	end process ALU_Control_Output;

end Behavioral;

