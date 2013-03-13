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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Control is
    Port ( Instruction : in  STD_LOGIC_VECTOR (31 downto 26);
			  Instruction_funct : in  STD_LOGIC_VECTOR (5 downto 0);
           RegDst : out  STD_LOGIC;
           ALUSrc : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
			  Branch_ne : out  STD_LOGIC;
           ALUop : out  STD_LOGIC_VECTOR (1 downto 0));
end Control;

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
			when "100011" => --load word instruction
			RegDst	<= '0';
			ALUSrc	<=	'1';
			MemtoReg	<= '1';
			RegWrite	<= '1';
			MemRead	<= '1';
			MemWrite	<= '0';
			Branch	<= '0';
			Branch_ne<='0';
			ALUop		<= "00";
			when "101011" => -- save word instruction
			RegDst	<= '0';
			ALUSrc	<=	'1';
			MemtoReg	<= '0';
			RegWrite	<= '0';
			MemRead	<= '0';
			MemWrite	<= '1';
			Branch	<= '0';
			Branch_ne<='0';
			ALUop		<= "00";
			when "000100" =>	-- branch on equal
			RegDst	<= '0';
			ALUSrc	<=	'0';
			MemtoReg	<= '0';
			RegWrite	<= '0';
			MemRead	<= '0';
			MemWrite	<= '0';
			if(Instruction_funct="000100")then
			Branch	<= '1';
			Branch_ne<= '0';
			else
			Branch	<= '0';
			Branch_ne<= '1';
			end if;
			ALUop		<= "01";
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

