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
--! Use standard library
library IEEE;
--! use logic elements
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.std_logic_unsigned.all;

--! the ALU_Control takes as input the 6 first bitS from the instruction and the 2 bits code from the controller. It outputs a 4 bits code to control the ALU
entity ALU_Control is
    Port ( 			ALU_OP : in STD_logic_vector(1 downto 0); 			--! Opcode from controller
				ALU_Funct_In : in  STD_LOGIC_VECTOR (5 downto 0);	        --! funt_in from instruction (first 6 bits)
				ALU_Control_out : out  STD_LOGIC_VECTOR (3 downto 0)		--! alu_control output
			  );
end ALU_Control;

--! @brief This is the ALU control that generates the 4 control bits for the ALU
--! @details opcode 00: load/store functions (add for calculating adress)
--! @details opcode 01: branch on equal (substract for comparing inputs)
--! @details opcode 10: R-type instruction (depends on ALU_Funct_In)
--! @details ALU_Funct_In 100000: add
--! @details ALU_Funct_In 100000: substract
--! @details ALU_Funct_In 100000: AND
--! @details ALU_Funct_In 100000: OR
--! @details ALU_Funct_In 100000: set less then
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
					WHEN	"100111"  =>  ALU_Control_Out <= "1100";  --NOR
					WHEN 	"011000"	 => ALU_Control_Out <= "1101"; 		--mult(values chosen at will)
					WHEN "010000"	=>	 ALU_Control_Out <= "1111";		--output Hi (chosen at will)
					WHEN "010010" => ALU_Control_Out <= "1110";		--output Lo (chosen at will)
					WHEN OTHERS =>  ALU_Control_Out <= "0100";		--error value
					END CASE;
			 else
				ALU_Control_Out<="1111"; --error value
			end if;	
	end process ALU_Control_Output;

end Behavioral;

