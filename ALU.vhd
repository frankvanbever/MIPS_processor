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
-- Revision: 0.1	- first version -- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
--! Use standard library
library IEEE;
--! use logic elements
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_unsigned.all;

--! this is a 32-bit alu with 2 32-bit inputs and a 32 bit output, it also has a zero output bit, it needs 4 control bits from the ALU control to function
entity ALU is
    Port ( ALU_Input_1 : in  STD_LOGIC_VECTOR (31 downto 0);		--! alu input 1 (rs)
           ALU_Input_2 : in  STD_LOGIC_VECTOR (31 downto 0);		--! alu input 2 (rt)
           ALU_Zero : out  STD_LOGIC;															--! alu zero output
           ALU_Result : out  STD_LOGIC_VECTOR (31 downto 0);		--! alu 32 bit output
           ALU_Control_In : in  STD_LOGIC_VECTOR (3 downto 0)		--! input from alu control
			  );
end ALU;

--! @brief This is a 32 bit ALU for the MIPS processor
--! @details the ALU is able to do following functions: AND,OR, add, substract, set on less then, NOR (see ALU_Control)
--! @details the zero output bit is set if the result of the ALU is 0
architecture Behavioral of ALU is
 shared variable Result: Std_logic_vector (31 downto 0);		--! Register to store Result of alu
 shared variable Result64:Std_logic_vector(63 downto 0); 
 shared variable Hi:Std_logic_vector(31 downto 0);					--! Hi reg for mult
 shared variable Lo:Std_logic_vector(31 downto 0);					--! Lo reg for mult
begin
		
		ALU_Result_Calc: process(ALU_Input_1,ALU_Input_2,ALU_Control_In)
		begin
		if (ALU_Control_In = "0000") then 
			Result := ALU_Input_1 AND ALU_Input_2;		-- AND
		elsif(ALU_Control_In = "0001") then
			Result := ALU_Input_1 OR ALU_Input_2;		-- OR
		elsif(ALU_Control_In = "0010") then
			Result := ALU_Input_1 + ALU_Input_2;		-- add
		elsif (ALU_Control_In  = "0110") then 
			Result := ALU_Input_1 - ALU_Input_2;		-- substract
		elsif (ALU_Control_In = "0111") then 
			if( (  ALU_Input_1 - ALU_Input_2 ) > X"80000000" ) then		--if input2 > input1
				Result:=X"00000001";			--set result to 1
			else										-- else (input2<=input1)
				Result:=X"00000000";			-- set to zero
			end if; -- set on les then calculation
		elsif (ALU_Control_In = "1100") then 
			Result := ALU_Input_1 NOR ALU_Input_2;		-- NOR
		elsif (ALU_Control_In = "1101") then 
			Result64 := ALU_Input_1*ALU_Input_2;		-- mult
			Hi := Result64(63 downto 32);
			Lo:=Result64(31 downto 0);								-- puts data in registers
			Result:=Lo;																-- puts the Lo data also in result so can be used to directly write to rd
		elsif(ALU_Control_In="1110")then						--puts Lo out
			Result:=Lo;
		elsif(ALU_Control_In="1111")then						--puts Hi out
			Result:=Hi;
		else
			Result := X"10101010";		--error code
		end if;
--why is the switch case gone here?

--		if(ALU_Control_In="0111")then		-- set on less then changes the result
--			if(Result<X"00000000") then		--if input2 > input1
--				Result:=X"00000001";				--set result to 1
--			else									-- else (input2<=input1)
--				Result:=X"00000000";			-- set to zero
--			end if;
--		end if;
			
		if(Result=X"00000000")then			--set the zero line
			ALU_Zero<='1';					
		else
			ALU_Zero<='0';
		end if;
		
		ALU_Result <=Result;
		end process ALU_Result_Calc;

end Behavioral;

