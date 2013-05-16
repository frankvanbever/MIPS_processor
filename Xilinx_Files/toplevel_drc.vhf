--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.4
--  \   \         Application : sch2hdl
--  /   /         Filename : toplevel_drc.vhf
-- /___/   /\     Timestamp : 04/29/2013 13:26:51
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.4/ISE_DS/ISE/bin/lin/unwrapped/sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl toplevel_drc.vhf -w /home/frank/Dropbox/Workspaces/workspace_comp_arch/MIPS_processor_2/toplevel.sch
--Design Name: toplevel
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity toplevel is
   port ( CLK : in    std_logic; 
          RST : in    std_logic);
end toplevel;

architecture BEHAVIORAL of toplevel is
   attribute BOX_TYPE   : string ;
   signal XLXN_7   : std_logic_vector (31 downto 0);
   signal XLXN_20  : std_logic_vector (31 downto 0);
   signal XLXN_21  : std_logic_vector (31 downto 0);
   signal XLXN_27  : std_logic_vector (31 downto 0);
   signal XLXN_28  : std_logic_vector (31 downto 0);
   signal XLXN_29  : std_logic_vector (31 downto 0);
   signal XLXN_32  : std_logic_vector (31 downto 0);
   signal XLXN_35  : std_logic_vector (3 downto 0);
   signal XLXN_40  : std_logic_vector (31 downto 0);
   signal XLXN_44  : std_logic_vector (31 downto 0);
   signal XLXN_46  : std_logic;
   signal XLXN_48  : std_logic;
   signal XLXN_49  : std_logic;
   signal XLXN_50  : std_logic;
   signal XLXN_51  : std_logic;
   signal XLXN_54  : std_logic;
   signal XLXN_57  : std_logic_vector (31 downto 0);
   signal XLXN_62  : std_logic_vector (31 downto 0);
   signal XLXN_63  : std_logic;
   signal XLXN_64  : std_logic;
   signal XLXN_66  : std_logic;
   signal XLXN_67  : std_logic;
   signal XLXN_68  : std_logic;
   signal XLXN_72  : std_logic_vector (1 downto 0);
   signal XLXN_74  : std_logic_vector (15 downto 11);
   signal XLXN_77  : std_logic;
   signal XLXN_126 : std_logic_vector (31 downto 0);
   component ALU_Control
      port ( ALU_OP          : in    std_logic_vector (1 downto 0); 
             ALU_Funct_In    : in    std_logic_vector (5 downto 0); 
             ALU_Control_out : out   std_logic_vector (3 downto 0));
   end component;
   
   component jump_adder
      port ( instruction : in    std_logic_vector (31 downto 0); 
             jmp_offset  : in    std_logic_vector (31 downto 0); 
             jmp_adress  : out   std_logic_vector (31 downto 0));
   end component;
   
   component imem
      port ( pc          : in    std_logic_vector (31 downto 0); 
             Instruction : out   std_logic_vector (31 downto 0));
   end component;
   
   component Control
      port ( Instruction       : in    std_logic_vector (31 downto 26); 
             RegDst            : out   std_logic; 
             ALUSrc            : out   std_logic; 
             MemtoReg          : out   std_logic; 
             RegWrite          : out   std_logic; 
             MemRead           : out   std_logic; 
             MemWrite          : out   std_logic; 
             Branch            : out   std_logic; 
             Branch_ne         : out   std_logic; 
             ALUop             : out   std_logic_vector (1 downto 0); 
             Instruction_funct : in    std_logic_vector (5 downto 0));
   end component;
   
   component PCA
      port ( PC  : in    std_logic_vector (31 downto 0); 
             PC4 : out   std_logic_vector (31 downto 0));
   end component;
   
   component register_file
      port ( clk          : in    std_logic; 
             write_enable : in    std_logic; 
             Read_reg_1   : in    std_logic_vector (25 downto 21); 
             Read_reg_2   : in    std_logic_vector (20 downto 16); 
             Write_reg    : in    std_logic_vector (15 downto 11); 
             Write_data   : in    std_logic_vector (31 downto 0); 
             Read_data_1  : out   std_logic_vector (31 downto 0); 
             Read_data_2  : out   std_logic_vector (31 downto 0));
   end component;
   
   component sign_extend
      port ( instruction_in  : in    std_logic_vector (15 downto 0); 
             instruction_out : out   std_logic_vector (31 downto 0));
   end component;
   
   component pc
      port ( PC_out : out   std_logic_vector (31 downto 0); 
             PC_in  : in    std_logic_vector (31 downto 0); 
             clk    : in    std_logic; 
             reset  : in    std_logic);
   end component;
   
   component ALU
      port ( ALU_Input_1    : in    std_logic_vector (31 downto 0); 
             ALU_Input_2    : in    std_logic_vector (31 downto 0); 
             ALU_Control_In : in    std_logic_vector (3 downto 0); 
             ALU_Result     : out   std_logic_vector (31 downto 0); 
             ALU_Zero       : out   std_logic);
   end component;
   
   component MUX
      port ( selector    : in    std_logic; 
             vector_in_1 : in    std_logic_vector (31 downto 0); 
             vector_in_2 : in    std_logic_vector (31 downto 0); 
             vector_out  : out   std_logic_vector (31 downto 0));
   end component;
   
   component data_memory
      port ( clk        : in    std_logic; 
             MemWrite   : in    std_logic; 
             MemRead    : in    std_logic; 
             adress     : in    std_logic_vector (31 downto 0); 
             write_data : in    std_logic_vector (31 downto 0); 
             read_data  : out   std_logic_vector (31 downto 0));
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component MUX5
      port ( selector    : in    std_logic; 
             vector_in_1 : in    std_logic_vector (20 downto 16); 
             vector_in_2 : in    std_logic_vector (15 downto 11); 
             vector_out  : out   std_logic_vector (20 downto 16));
   end component;
   
begin
   XLXI_2 : ALU_Control
      port map (ALU_Funct_In(5 downto 0)=>XLXN_7(5 downto 0),
                ALU_OP(1 downto 0)=>XLXN_72(1 downto 0),
                ALU_Control_out(3 downto 0)=>XLXN_35(3 downto 0));
   
   XLXI_3 : jump_adder
      port map (instruction(31 downto 0)=>XLXN_20(31 downto 0),
                jmp_offset(31 downto 0)=>XLXN_28(31 downto 0),
                jmp_adress(31 downto 0)=>XLXN_32(31 downto 0));
   
   XLXI_5 : imem
      port map (pc(31 downto 0)=>XLXN_126(31 downto 0),
                Instruction(31 downto 0)=>XLXN_7(31 downto 0));
   
   XLXI_6 : Control
      port map (Instruction(31 downto 26)=>XLXN_7(31 downto 26),
                Instruction_funct(5 downto 0)=>XLXN_7(5 downto 0),
                ALUop(1 downto 0)=>XLXN_72(1 downto 0),
                ALUSrc=>XLXN_63,
                Branch=>XLXN_50,
                Branch_ne=>XLXN_54,
                MemRead=>XLXN_67,
                MemtoReg=>XLXN_68,
                MemWrite=>XLXN_66,
                RegDst=>XLXN_77,
                RegWrite=>XLXN_64);
   
   XLXI_7 : PCA
      port map (PC(31 downto 0)=>XLXN_126(31 downto 0),
                PC4(31 downto 0)=>XLXN_20(31 downto 0));
   
   XLXI_8 : register_file
      port map (clk=>CLK,
                Read_reg_1(25 downto 21)=>XLXN_7(25 downto 21),
                Read_reg_2(20 downto 16)=>XLXN_7(20 downto 16),
                Write_data(31 downto 0)=>XLXN_62(31 downto 0),
                write_enable=>XLXN_64,
                Write_reg(15 downto 11)=>XLXN_74(15 downto 11),
                Read_data_1(31 downto 0)=>XLXN_21(31 downto 0),
                Read_data_2(31 downto 0)=>XLXN_27(31 downto 0));
   
   XLXI_11 : sign_extend
      port map (instruction_in(15 downto 0)=>XLXN_7(15 downto 0),
                instruction_out(31 downto 0)=>XLXN_28(31 downto 0));
   
   XLXI_15 : pc
      port map (clk=>CLK,
                PC_in(31 downto 0)=>XLXN_57(31 downto 0),
                reset=>RST,
                PC_out(31 downto 0)=>XLXN_126(31 downto 0));
   
   XLXI_17 : ALU
      port map (ALU_Control_In(3 downto 0)=>XLXN_35(3 downto 0),
                ALU_Input_1(31 downto 0)=>XLXN_21(31 downto 0),
                ALU_Input_2(31 downto 0)=>XLXN_29(31 downto 0),
                ALU_Result(31 downto 0)=>XLXN_40(31 downto 0),
                ALU_Zero=>XLXN_51);
   
   XLXI_18 : MUX
      port map (selector=>XLXN_63,
                vector_in_1(31 downto 0)=>XLXN_27(31 downto 0),
                vector_in_2(31 downto 0)=>XLXN_28(31 downto 0),
                vector_out(31 downto 0)=>XLXN_29(31 downto 0));
   
   XLXI_19 : MUX
      port map (selector=>XLXN_46,
                vector_in_1(31 downto 0)=>XLXN_20(31 downto 0),
                vector_in_2(31 downto 0)=>XLXN_32(31 downto 0),
                vector_out(31 downto 0)=>XLXN_57(31 downto 0));
   
   XLXI_21 : data_memory
      port map (adress(31 downto 0)=>XLXN_40(31 downto 0),
                clk=>CLK,
                MemRead=>XLXN_67,
                MemWrite=>XLXN_66,
                write_data(31 downto 0)=>XLXN_27(31 downto 0),
                read_data(31 downto 0)=>XLXN_44(31 downto 0));
   
   XLXI_22 : MUX
      port map (selector=>XLXN_68,
                vector_in_1(31 downto 0)=>XLXN_40(31 downto 0),
                vector_in_2(31 downto 0)=>XLXN_44(31 downto 0),
                vector_out(31 downto 0)=>XLXN_62(31 downto 0));
   
   XLXI_24 : OR2
      port map (I0=>XLXN_48,
                I1=>XLXN_49,
                O=>XLXN_46);
   
   XLXI_26 : AND2
      port map (I0=>XLXN_51,
                I1=>XLXN_50,
                O=>XLXN_49);
   
   XLXI_28 : AND2B1
      port map (I0=>XLXN_51,
                I1=>XLXN_54,
                O=>XLXN_48);
   
   XLXI_30 : MUX5
      port map (selector=>XLXN_77,
                vector_in_1(20 downto 16)=>XLXN_7(20 downto 16),
                vector_in_2(15 downto 11)=>XLXN_7(15 downto 11),
                vector_out(20 downto 16)=>XLXN_74(15 downto 11));
   
end BEHAVIORAL;


