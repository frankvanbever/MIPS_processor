----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 		Steven Vanden Branden
-- 
-- Create Date:    15:23:25 03/13/2013 
-- Design Name: 
-- Module Name:    Control - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
--! Use standard library
library IEEE;
--! use logic elements
use IEEE.STD_LOGIC_1164.ALL;

--! sends out control signals depending on the instruction first 6 bits (FUNCT field) and the instructions 26-31 bits(?)
entity Control is
    Port ( Instruction : in  STD_LOGIC_VECTOR (31 downto 26);		--! last 6 bits of instruction (?)
	   Instruction_funct : in  STD_LOGIC_VECTOR (5 downto 0);	--! first 6 bits of instruction (FUNCT field)
           RegDst : out  STD_LOGIC;					--! Register Destination selector
           ALUSrc : out  STD_LOGIC;					--! ALU input Source selector
           MemtoReg : out  STD_LOGIC;					--! write to register from memory
           RegWrite : out  STD_LOGIC;					--! Write to register from ALU output
           MemRead : out  STD_LOGIC;					--! read from memory
           MemWrite : out  STD_LOGIC;					--! write to memory
           Branch : out  STD_LOGIC;					--! branch if equal
			  Branch_ne : out  STD_LOGIC;			--! branch if not equal
           ALUop : out  STD_LOGIC_VECTOR (1 downto 0));			--! input for ALU_Control
end Control;


--! @brief This is the controller that sets the control variables
--! @details depending on function field sets (RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,Branch,ALUop):
--! @details 000000:(1,0,0,1,0,0,0,0,10) --> R-type instruction
--! @details 100011:(0,1,1,1,1,0,0,0,00) --> load word instruction
--! @details 101011:(0,1,0,0,0,1,0,0,00) --> save word instruction
--! @details 000100:(0,0,0,0,0,0,1/0,0/1,01)--> branch equal/branch not equal instruction
architecture Behavioral of Control is

begin

	Control_out: process(Instruction,Instruction_funct)
		begin
		case Instruction is
			
			when "000000" => --R-format instruction
			RegDst<= '1';
			ALUSrc<=	'0';
			MemtoReg<= '0';
			RegWrite<= '1';
			MemRead<='0';
			MemWrite<='0';
			Branch<='0';
			Branch_ne<='0';
			ALUop<="10";
				
			when "000100" =>	-- branch on equal
			RegDst	<= '0';
			ALUSrc	<=	'0';
			MemtoReg	<= '0';
			RegWrite	<= '0';
			MemRead	<= '0';
			MemWrite	<= '0';
			Branch	<= '1';
			Branch_ne<= '0';
			ALUop		<= "01";
			
			when "000101" => -- branch on not equal
			RegDst	<= '0';
			ALUSrc	<=	'0';
			MemtoReg	<= '0';
			RegWrite	<= '0';
			MemRead	<= '0';
			MemWrite	<= '0';
			Branch	<= '0';
			Branch_ne<= '1';
			ALUop		<= "01";
			
			
			when "001000" =>  -- add immediate
			RegDst<= '0';
			ALUSrc<=	'1';
			MemtoReg<= '0';
			RegWrite<= '1';
			MemRead<='0';
			MemWrite<='0';
			Branch<='0';
			Branch_ne<='0';
			
		
			when "101011" => -- store word
			
			RegDst<= '0';
			ALUSrc<=	'1';
			MemtoReg<= '0';
			RegWrite<= '0';
			MemRead<='0';
			MemWrite<='1';
			Branch<='0';
			Branch_ne<='0';
			ALUop		<= "00";
			
			
			when "100011" => -- load word
			
			RegDst<= '0';
			ALUSrc<=	'1';
			MemtoReg<= '1';
			RegWrite<= '1';
			MemRead<='1';
			MemWrite<='0';
			Branch<='0';
			Branch_ne<='0';
			ALUop		<= "00";
			
			when others => --error
			RegDst	<= '0';
			ALUSrc	<=	'0';
			MemtoReg	<= '0';
			RegWrite	<= '0';
			MemRead	<= '0';
			MemWrite	<= '0';
			Branch	<= '0';
			Branch_ne<='0';
			ALUop		<= "00"; 
		end case;
		
		end process Control_out;

end Behavioral;

