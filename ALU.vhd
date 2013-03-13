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
use IEEE.STD_LOGIC_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( ALU_Input_1 : in  STD_LOGIC_VECTOR (31 downto 0);		--alu input 1 (rs)
           ALU_Input_2 : in  STD_LOGIC_VECTOR (31 downto 0);		--alu input 2 (rt)
           ALU_Zero : out  STD_LOGIC;										--zero output
           ALU_Result : out  STD_LOGIC_VECTOR (31 downto 0);		--32 bit output alu
           ALU_Control_In : in  STD_LOGIC_VECTOR (3 downto 0)		--input from alu control
			  );
end ALU;
architecture Behavioral of ALU is
 shared variable Result: Std_logic_vector (31 downto 0);		--Register to store Result of alu temporary
begin
		
		ALU_Result_Calc: process(ALU_Input_1,ALU_Input_2,ALU_Control_In)
		begin
		case ALU_Control_In is
			when "0000" => Result := ALU_Input_1 AND ALU_Input_2;		-- AND
			when "0001" => Result := ALU_Input_1 OR ALU_Input_2;		--	OR
			when "0010" => Result := ALU_Input_1 + ALU_Input_2;		-- add
			when "0110" => Result := ALU_Input_1 - ALU_Input_2;		-- substract
			when "0111" => Result := ALU_Input_1 - ALU_Input_2;		-- set on les then calculation
			when "1100" => Result := ALU_Input_1 NOR ALU_Input_2;		-- NOR
			when others => Result := X"00000000";		--error code
		end case;
		if(ALU_Control_In="0111")then		-- set on less then changes the result
			if(Result<X"00000000") then		--if input2 > input1
				Result:=X"00000001";				--set result to 1
			else									-- else (input2<=input1)
				Result:=X"00000000";			-- set to zero
			end if;
		end if;
			
		if(Result=X"00000000")then			--set the zero line
			ALU_Zero<='1';					
		else
			ALU_Zero<='0';
		end if;
		ALU_Result <= Result;				--set result on output
		end process ALU_Result_Calc;

end Behavioral;

