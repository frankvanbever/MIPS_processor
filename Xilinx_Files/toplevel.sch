<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_7(31:26)" />
        <signal name="XLXN_7(25:21)" />
        <signal name="XLXN_7(20:16)" />
        <signal name="XLXN_7(31:0)" />
        <signal name="RST" />
        <signal name="CLK" />
        <signal name="XLXN_7(15:0)" />
        <signal name="XLXN_20(31:0)" />
        <signal name="XLXN_21(31:0)" />
        <signal name="XLXN_27(31:0)" />
        <signal name="XLXN_28(31:0)" />
        <signal name="XLXN_29(31:0)" />
        <signal name="XLXN_32(31:0)" />
        <signal name="XLXN_35(3:0)" />
        <signal name="ALU_res(31:0)" />
        <signal name="XLXN_44(31:0)" />
        <signal name="XLXN_46" />
        <signal name="XLXN_50" />
        <signal name="XLXN_51" />
        <signal name="XLXN_54" />
        <signal name="XLXN_57(31:0)" />
        <signal name="XLXN_49" />
        <signal name="XLXN_48" />
        <signal name="XLXN_62(31:0)" />
        <signal name="XLXN_63" />
        <signal name="XLXN_64" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_72(1:0)" />
        <signal name="XLXN_74(15:11)" />
        <signal name="XLXN_77" />
        <signal name="XLXN_7(5:0)" />
        <signal name="XLXN_7(15:11)" />
        <signal name="XLXN_133(31:0)" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="CLK" />
        <blockdef name="ALU_Control">
            <timestamp>2013-4-24T12:4:12</timestamp>
            <rect width="432" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="496" y="-108" height="24" />
            <line x2="560" y1="-96" y2="-96" x1="496" />
        </blockdef>
        <blockdef name="jump_adder">
            <timestamp>2013-4-24T12:48:44</timestamp>
            <rect width="416" x="64" y="-128" height="128" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="480" y="-108" height="24" />
            <line x2="544" y1="-96" y2="-96" x1="480" />
        </blockdef>
        <blockdef name="pc">
            <timestamp>2013-4-24T12:35:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
        </blockdef>
        <blockdef name="imem">
            <timestamp>2013-4-24T12:11:37</timestamp>
            <rect width="324" x="28" y="-220" height="220" />
            <rect width="64" x="0" y="-124" height="24" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-140" height="24" />
        </blockdef>
        <blockdef name="Control">
            <timestamp>2013-4-24T12:15:43</timestamp>
            <rect width="352" x="64" y="-576" height="576" />
            <rect width="64" x="0" y="-556" height="24" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="480" y1="-544" y2="-544" x1="416" />
            <line x2="480" y1="-480" y2="-480" x1="416" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
        </blockdef>
        <blockdef name="PCA">
            <timestamp>2013-4-24T17:0:1</timestamp>
            <rect width="64" x="0" y="-204" height="24" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <rect width="64" x="336" y="-124" height="24" />
            <line x2="400" y1="-112" y2="-112" x1="336" />
            <line x2="64" y1="-240" y2="-140" x1="64" />
            <line x2="336" y1="-160" y2="-60" x1="336" />
            <line x2="336" y1="-240" y2="-160" x1="64" />
            <line x2="112" y1="-140" y2="-112" x1="64" />
            <line x2="112" y1="-112" y2="-80" x1="112" />
            <line x2="64" y1="-80" y2="-48" x1="112" />
            <line x2="64" y1="-48" y2="52" x1="64" />
            <line x2="336" y1="52" y2="-60" x1="64" />
            <rect width="64" x="0" y="-12" height="24" />
        </blockdef>
        <blockdef name="register_file">
            <timestamp>2013-4-24T12:8:23</timestamp>
            <rect width="416" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="480" y="-364" height="24" />
            <line x2="544" y1="-352" y2="-352" x1="480" />
            <rect width="64" x="480" y="-44" height="24" />
            <line x2="544" y1="-32" y2="-32" x1="480" />
        </blockdef>
        <blockdef name="sign_extend">
            <timestamp>2013-4-24T12:42:20</timestamp>
            <rect width="448" x="64" y="-64" height="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="512" y="-44" height="24" />
            <line x2="576" y1="-32" y2="-32" x1="512" />
        </blockdef>
        <blockdef name="ALU">
            <timestamp>2013-4-24T12:56:33</timestamp>
            <rect width="448" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="512" y="-44" height="24" />
            <line x2="576" y1="-32" y2="-32" x1="512" />
            <line x2="576" y1="-160" y2="-160" x1="512" />
        </blockdef>
        <blockdef name="MUX">
            <timestamp>2013-4-29T13:21:21</timestamp>
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="288" x="64" y="-192" height="256" />
        </blockdef>
        <blockdef name="data_memory">
            <timestamp>2013-4-24T12:7:56</timestamp>
            <rect width="352" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="and2b1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="40" y1="-64" y2="-64" x1="0" />
            <circle r="12" cx="52" cy="-64" />
        </blockdef>
        <blockdef name="MUX5">
            <timestamp>2013-4-29T13:21:27</timestamp>
            <rect width="352" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
        </blockdef>
        <block symbolname="imem" name="i_imem">
            <blockpin signalname="XLXN_133(31:0)" name="pc(31:0)" />
            <blockpin signalname="XLXN_7(31:0)" name="Instruction(31:0)" />
        </block>
        <block symbolname="PCA" name="i_PCA">
            <blockpin signalname="XLXN_133(31:0)" name="PC(31:0)" />
            <blockpin signalname="XLXN_20(31:0)" name="PC4(31:0)" />
        </block>
        <block symbolname="Control" name="i_Control">
            <blockpin signalname="XLXN_7(31:26)" name="Instruction(31:26)" />
            <blockpin signalname="XLXN_77" name="RegDst" />
            <blockpin signalname="XLXN_63" name="ALUSrc" />
            <blockpin signalname="XLXN_68" name="MemtoReg" />
            <blockpin signalname="XLXN_64" name="RegWrite" />
            <blockpin signalname="XLXN_67" name="MemRead" />
            <blockpin signalname="XLXN_66" name="MemWrite" />
            <blockpin signalname="XLXN_50" name="Branch" />
            <blockpin signalname="XLXN_54" name="Branch_ne" />
            <blockpin signalname="XLXN_72(1:0)" name="ALUop(1:0)" />
            <blockpin signalname="XLXN_7(5:0)" name="Instruction_funct(5:0)" />
        </block>
        <block symbolname="register_file" name="i_reg_file">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_64" name="write_enable" />
            <blockpin signalname="XLXN_7(25:21)" name="Read_reg_1(25:21)" />
            <blockpin signalname="XLXN_7(20:16)" name="Read_reg_2(20:16)" />
            <blockpin signalname="XLXN_74(15:11)" name="Write_reg(15:11)" />
            <blockpin signalname="XLXN_62(31:0)" name="Write_data(31:0)" />
            <blockpin signalname="XLXN_21(31:0)" name="Read_data_1(31:0)" />
            <blockpin signalname="XLXN_27(31:0)" name="Read_data_2(31:0)" />
        </block>
        <block symbolname="pc" name="i_PC">
            <blockpin signalname="XLXN_133(31:0)" name="PC_out(31:0)" />
            <blockpin signalname="XLXN_57(31:0)" name="PC_in(31:0)" />
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="RST" name="reset" />
        </block>
        <block symbolname="sign_extend" name="i_sign_extend">
            <blockpin signalname="XLXN_7(15:0)" name="instruction_in(15:0)" />
            <blockpin signalname="XLXN_28(31:0)" name="instruction_out(31:0)" />
        </block>
        <block symbolname="ALU" name="i_ALU">
            <blockpin signalname="XLXN_21(31:0)" name="ALU_Input_1(31:0)" />
            <blockpin signalname="XLXN_29(31:0)" name="ALU_Input_2(31:0)" />
            <blockpin signalname="XLXN_35(3:0)" name="ALU_Control_In(3:0)" />
            <blockpin signalname="ALU_res(31:0)" name="ALU_Result(31:0)" />
            <blockpin signalname="XLXN_51" name="ALU_Zero" />
        </block>
        <block symbolname="MUX" name="i_alu2in_mux">
            <blockpin signalname="XLXN_63" name="selector" />
            <blockpin signalname="XLXN_27(31:0)" name="vector_in_1(31:0)" />
            <blockpin signalname="XLXN_28(31:0)" name="vector_in_2(31:0)" />
            <blockpin signalname="XLXN_29(31:0)" name="vector_out(31:0)" />
        </block>
        <block symbolname="jump_adder" name="i_jump_adder">
            <blockpin signalname="XLXN_20(31:0)" name="instruction(31:0)" />
            <blockpin signalname="XLXN_28(31:0)" name="jmp_offset(31:0)" />
            <blockpin signalname="XLXN_32(31:0)" name="jmp_adress(31:0)" />
        </block>
        <block symbolname="ALU_Control" name="i_ALU_control">
            <blockpin signalname="XLXN_72(1:0)" name="ALU_OP(1:0)" />
            <blockpin signalname="XLXN_7(5:0)" name="ALU_Funct_In(5:0)" />
            <blockpin signalname="XLXN_35(3:0)" name="ALU_Control_out(3:0)" />
        </block>
        <block symbolname="data_memory" name="i_datamem">
            <blockpin signalname="CLK" name="clk" />
            <blockpin signalname="XLXN_66" name="MemWrite" />
            <blockpin signalname="XLXN_67" name="MemRead" />
            <blockpin signalname="ALU_res(31:0)" name="adress(31:0)" />
            <blockpin signalname="XLXN_27(31:0)" name="write_data(31:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="read_data(31:0)" />
        </block>
        <block symbolname="and2" name="XLXI_26">
            <blockpin signalname="XLXN_51" name="I0" />
            <blockpin signalname="XLXN_50" name="I1" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="and2b1" name="XLXI_28">
            <blockpin signalname="XLXN_51" name="I0" />
            <blockpin signalname="XLXN_54" name="I1" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="MUX" name="i_jump_add_mux">
            <blockpin signalname="XLXN_46" name="selector" />
            <blockpin signalname="XLXN_20(31:0)" name="vector_in_1(31:0)" />
            <blockpin signalname="XLXN_32(31:0)" name="vector_in_2(31:0)" />
            <blockpin signalname="XLXN_57(31:0)" name="vector_out(31:0)" />
        </block>
        <block symbolname="or2" name="XLXI_24">
            <blockpin signalname="XLXN_48" name="I0" />
            <blockpin signalname="XLXN_49" name="I1" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="MUX" name="i_wreg_mux">
            <blockpin signalname="XLXN_68" name="selector" />
            <blockpin signalname="ALU_res(31:0)" name="vector_in_1(31:0)" />
            <blockpin signalname="XLXN_44(31:0)" name="vector_in_2(31:0)" />
            <blockpin signalname="XLXN_62(31:0)" name="vector_out(31:0)" />
        </block>
        <block symbolname="MUX5" name="i_write_reg_mux">
            <blockpin signalname="XLXN_77" name="selector" />
            <blockpin signalname="XLXN_7(20:16)" name="vector_in_1(20:16)" />
            <blockpin signalname="XLXN_7(15:11)" name="vector_in_2(15:11)" />
            <blockpin signalname="XLXN_74(15:11)" name="vector_out(20:16)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <attr value="Inch" name="LengthUnitName" />
        <attr value="10" name="GridsPerUnit" />
        <instance x="1456" y="2336" name="i_imem" orien="R0">
        </instance>
        <instance x="2176" y="1760" name="i_Control" orien="R0">
        </instance>
        <bustap x2="2064" y1="2320" y2="2320" x1="1968" />
        <branch name="XLXN_7(25:21)">
            <wire x2="2768" y1="2320" y2="2320" x1="2064" />
        </branch>
        <bustap x2="2064" y1="2384" y2="2384" x1="1968" />
        <branch name="XLXN_7(20:16)">
            <wire x2="2128" y1="2384" y2="2384" x1="2064" />
            <wire x2="2768" y1="2384" y2="2384" x1="2128" />
            <wire x2="2128" y1="2384" y2="2512" x1="2128" />
            <wire x2="2224" y1="2512" y2="2512" x1="2128" />
        </branch>
        <instance x="2768" y="2544" name="i_reg_file" orien="R0">
        </instance>
        <branch name="XLXN_7(31:0)">
            <wire x2="1888" y1="2208" y2="2208" x1="1840" />
            <wire x2="1920" y1="2208" y2="2208" x1="1888" />
            <wire x2="1968" y1="2208" y2="2208" x1="1920" />
            <wire x2="1968" y1="2208" y2="2240" x1="1968" />
            <wire x2="1968" y1="2240" y2="2320" x1="1968" />
            <wire x2="1968" y1="2320" y2="2384" x1="1968" />
            <wire x2="1968" y1="2384" y2="2464" x1="1968" />
            <wire x2="1968" y1="2464" y2="2544" x1="1968" />
            <wire x2="1968" y1="2544" y2="2624" x1="1968" />
        </branch>
        <instance x="944" y="2384" name="i_PC" orien="R0">
        </instance>
        <branch name="RST">
            <wire x2="944" y1="2304" y2="2304" x1="912" />
        </branch>
        <branch name="CLK">
            <wire x2="944" y1="2352" y2="2352" x1="912" />
        </branch>
        <bustap x2="2064" y1="2544" y2="2544" x1="1968" />
        <instance x="2112" y="2864" name="i_sign_extend" orien="R0">
        </instance>
        <branch name="XLXN_7(15:0)">
            <wire x2="2080" y1="2544" y2="2544" x1="2064" />
            <wire x2="2080" y1="2544" y2="2832" x1="2080" />
            <wire x2="2112" y1="2832" y2="2832" x1="2080" />
        </branch>
        <branch name="XLXN_20(31:0)">
            <wire x2="2416" y1="1056" y2="1056" x1="1632" />
            <wire x2="2416" y1="1056" y2="1072" x1="2416" />
            <wire x2="3200" y1="1072" y2="1072" x1="2416" />
            <wire x2="3376" y1="1072" y2="1072" x1="3200" />
            <wire x2="3200" y1="960" y2="1072" x1="3200" />
            <wire x2="4016" y1="960" y2="960" x1="3200" />
            <wire x2="4016" y1="960" y2="1104" x1="4016" />
            <wire x2="4096" y1="1104" y2="1104" x1="4016" />
        </branch>
        <branch name="XLXN_21(31:0)">
            <wire x2="4080" y1="2192" y2="2192" x1="3312" />
        </branch>
        <instance x="4080" y="2352" name="i_ALU" orien="R0">
        </instance>
        <instance x="3504" y="2608" name="i_alu2in_mux" orien="R0">
        </instance>
        <branch name="XLXN_28(31:0)">
            <wire x2="3088" y1="2832" y2="2832" x1="2688" />
            <wire x2="3088" y1="2576" y2="2832" x1="3088" />
            <wire x2="3360" y1="2576" y2="2576" x1="3088" />
            <wire x2="3504" y1="2576" y2="2576" x1="3360" />
            <wire x2="3104" y1="1232" y2="2000" x1="3104" />
            <wire x2="3360" y1="2000" y2="2000" x1="3104" />
            <wire x2="3360" y1="2000" y2="2576" x1="3360" />
            <wire x2="3312" y1="1232" y2="1232" x1="3104" />
            <wire x2="3312" y1="1136" y2="1232" x1="3312" />
            <wire x2="3376" y1="1136" y2="1136" x1="3312" />
        </branch>
        <branch name="XLXN_29(31:0)">
            <wire x2="4000" y1="2448" y2="2448" x1="3920" />
            <wire x2="4000" y1="2256" y2="2448" x1="4000" />
            <wire x2="4080" y1="2256" y2="2256" x1="4000" />
        </branch>
        <instance x="3376" y="1168" name="i_jump_adder" orien="R0">
        </instance>
        <branch name="XLXN_32(31:0)">
            <wire x2="3936" y1="1072" y2="1072" x1="3920" />
            <wire x2="3936" y1="1072" y2="1168" x1="3936" />
            <wire x2="4096" y1="1168" y2="1168" x1="3936" />
        </branch>
        <branch name="XLXN_35(3:0)">
            <wire x2="4064" y1="3072" y2="3072" x1="3952" />
            <wire x2="4080" y1="2320" y2="2320" x1="4064" />
            <wire x2="4064" y1="2320" y2="3072" x1="4064" />
        </branch>
        <instance x="3392" y="3168" name="i_ALU_control" orien="R0">
        </instance>
        <branch name="CLK">
            <wire x2="2768" y1="2192" y2="2192" x1="2736" />
        </branch>
        <instance x="4864" y="2400" name="i_datamem" orien="R0">
        </instance>
        <branch name="XLXN_44(31:0)">
            <wire x2="5360" y1="2112" y2="2112" x1="5344" />
            <wire x2="5776" y1="2032" y2="2032" x1="5360" />
            <wire x2="5360" y1="2032" y2="2112" x1="5360" />
        </branch>
        <branch name="XLXN_46">
            <wire x2="4080" y1="1408" y2="1408" x1="3888" />
            <wire x2="4096" y1="1040" y2="1040" x1="4080" />
            <wire x2="4080" y1="1040" y2="1408" x1="4080" />
        </branch>
        <instance x="3280" y="1408" name="XLXI_26" orien="R0" />
        <instance x="3280" y="1648" name="XLXI_28" orien="R0" />
        <branch name="XLXN_50">
            <wire x2="2960" y1="1600" y2="1600" x1="2656" />
            <wire x2="2960" y1="1280" y2="1600" x1="2960" />
            <wire x2="3280" y1="1280" y2="1280" x1="2960" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="3280" y1="1344" y2="1344" x1="3200" />
            <wire x2="3200" y1="1344" y2="1584" x1="3200" />
            <wire x2="3280" y1="1584" y2="1584" x1="3200" />
            <wire x2="3200" y1="1584" y2="1824" x1="3200" />
            <wire x2="4720" y1="1824" y2="1824" x1="3200" />
            <wire x2="4720" y1="1824" y2="2192" x1="4720" />
            <wire x2="4720" y1="2192" y2="2192" x1="4656" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="2976" y1="1664" y2="1664" x1="2656" />
            <wire x2="2976" y1="1520" y2="1664" x1="2976" />
            <wire x2="3280" y1="1520" y2="1520" x1="2976" />
        </branch>
        <instance x="4096" y="1200" name="i_jump_add_mux" orien="R0">
        </instance>
        <branch name="XLXN_57(31:0)">
            <wire x2="4592" y1="864" y2="864" x1="896" />
            <wire x2="4592" y1="864" y2="1040" x1="4592" />
            <wire x2="896" y1="864" y2="2256" x1="896" />
            <wire x2="944" y1="2256" y2="2256" x1="896" />
            <wire x2="4592" y1="1040" y2="1040" x1="4512" />
        </branch>
        <instance x="3632" y="1504" name="XLXI_24" orien="R0" />
        <branch name="XLXN_49">
            <wire x2="3552" y1="1312" y2="1312" x1="3536" />
            <wire x2="3552" y1="1312" y2="1376" x1="3552" />
            <wire x2="3632" y1="1376" y2="1376" x1="3552" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="3552" y1="1552" y2="1552" x1="3536" />
            <wire x2="3632" y1="1440" y2="1440" x1="3552" />
            <wire x2="3552" y1="1440" y2="1552" x1="3552" />
        </branch>
        <instance x="5776" y="2064" name="i_wreg_mux" orien="R0">
        </instance>
        <branch name="XLXN_62(31:0)">
            <wire x2="2768" y1="2512" y2="2512" x1="2688" />
            <wire x2="2688" y1="2512" y2="2672" x1="2688" />
            <wire x2="6272" y1="2672" y2="2672" x1="2688" />
            <wire x2="6272" y1="1904" y2="1904" x1="6192" />
            <wire x2="6272" y1="1904" y2="2672" x1="6272" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="2736" y1="1280" y2="1280" x1="2656" />
            <wire x2="2736" y1="1280" y2="1904" x1="2736" />
            <wire x2="3376" y1="1904" y2="1904" x1="2736" />
            <wire x2="3376" y1="1904" y2="2448" x1="3376" />
            <wire x2="3504" y1="2448" y2="2448" x1="3376" />
        </branch>
        <branch name="XLXN_64">
            <wire x2="2768" y1="1408" y2="1408" x1="2656" />
            <wire x2="2768" y1="1408" y2="2256" x1="2768" />
        </branch>
        <branch name="XLXN_66">
            <wire x2="2720" y1="1536" y2="1536" x1="2656" />
            <wire x2="2720" y1="1536" y2="1616" x1="2720" />
            <wire x2="4704" y1="1616" y2="1616" x1="2720" />
            <wire x2="4704" y1="1616" y2="2176" x1="4704" />
            <wire x2="4864" y1="2176" y2="2176" x1="4704" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="4688" y1="1472" y2="1472" x1="2656" />
            <wire x2="4688" y1="1472" y2="2240" x1="4688" />
            <wire x2="4864" y1="2240" y2="2240" x1="4688" />
        </branch>
        <branch name="XLXN_68">
            <wire x2="2720" y1="1344" y2="1344" x1="2656" />
            <wire x2="2720" y1="1200" y2="1344" x1="2720" />
            <wire x2="3616" y1="1200" y2="1200" x1="2720" />
            <wire x2="3616" y1="1200" y2="1904" x1="3616" />
            <wire x2="5776" y1="1904" y2="1904" x1="3616" />
        </branch>
        <branch name="XLXN_72(1:0)">
            <wire x2="2720" y1="1728" y2="1728" x1="2656" />
            <wire x2="2720" y1="1728" y2="1872" x1="2720" />
            <wire x2="3408" y1="1872" y2="1872" x1="2720" />
            <wire x2="3408" y1="1872" y2="2288" x1="3408" />
            <wire x2="3328" y1="2288" y2="3072" x1="3328" />
            <wire x2="3392" y1="3072" y2="3072" x1="3328" />
            <wire x2="3408" y1="2288" y2="2288" x1="3328" />
        </branch>
        <instance x="2224" y="2608" name="i_write_reg_mux" orien="R0">
        </instance>
        <branch name="XLXN_74(15:11)">
            <wire x2="2768" y1="2448" y2="2448" x1="2704" />
        </branch>
        <bustap x2="1888" y1="2208" y2="2112" x1="1888" />
        <branch name="XLXN_77">
            <wire x2="2656" y1="1120" y2="1120" x1="2016" />
            <wire x2="2656" y1="1120" y2="1216" x1="2656" />
            <wire x2="2016" y1="1120" y2="2656" x1="2016" />
            <wire x2="2208" y1="2656" y2="2656" x1="2016" />
            <wire x2="2224" y1="2448" y2="2448" x1="2208" />
            <wire x2="2208" y1="2448" y2="2656" x1="2208" />
        </branch>
        <iomarker fontsize="28" x="912" y="2304" name="RST" orien="R180" />
        <iomarker fontsize="28" x="912" y="2352" name="CLK" orien="R180" />
        <iomarker fontsize="28" x="2736" y="2192" name="CLK" orien="R180" />
        <branch name="CLK">
            <wire x2="4864" y1="2112" y2="2112" x1="4832" />
        </branch>
        <iomarker fontsize="28" x="4832" y="2112" name="CLK" orien="R180" />
        <branch name="XLXN_7(31:26)">
            <wire x2="2176" y1="1216" y2="1216" x1="1888" />
            <wire x2="1888" y1="1216" y2="2112" x1="1888" />
        </branch>
        <bustap x2="2064" y1="2240" y2="2240" x1="1968" />
        <branch name="XLXN_7(5:0)">
            <wire x2="2112" y1="2240" y2="2240" x1="2064" />
            <wire x2="2176" y1="1568" y2="1568" x1="2112" />
            <wire x2="2112" y1="1568" y2="2064" x1="2112" />
            <wire x2="2112" y1="2064" y2="2240" x1="2112" />
            <wire x2="3984" y1="2064" y2="2064" x1="2112" />
            <wire x2="3984" y1="2064" y2="3328" x1="3984" />
            <wire x2="3328" y1="3136" y2="3328" x1="3328" />
            <wire x2="3984" y1="3328" y2="3328" x1="3328" />
            <wire x2="3392" y1="3136" y2="3136" x1="3328" />
        </branch>
        <bustap x2="2064" y1="2464" y2="2464" x1="1968" />
        <branch name="XLXN_7(15:11)">
            <wire x2="2112" y1="2464" y2="2464" x1="2064" />
            <wire x2="2112" y1="2464" y2="2576" x1="2112" />
            <wire x2="2224" y1="2576" y2="2576" x1="2112" />
        </branch>
        <instance x="1232" y="1168" name="i_PCA" orien="R0">
        </instance>
        <branch name="XLXN_133(31:0)">
            <wire x2="1232" y1="976" y2="976" x1="1168" />
            <wire x2="1168" y1="976" y2="1296" x1="1168" />
            <wire x2="1392" y1="1296" y2="1296" x1="1168" />
            <wire x2="1392" y1="1296" y2="2224" x1="1392" />
            <wire x2="1456" y1="2224" y2="2224" x1="1392" />
            <wire x2="1392" y1="2224" y2="2224" x1="1328" />
        </branch>
        <branch name="ALU_res(31:0)">
            <wire x2="4672" y1="2320" y2="2320" x1="4656" />
            <wire x2="4672" y1="2304" y2="2320" x1="4672" />
            <wire x2="4736" y1="2304" y2="2304" x1="4672" />
            <wire x2="4752" y1="2304" y2="2304" x1="4736" />
            <wire x2="4768" y1="2304" y2="2304" x1="4752" />
            <wire x2="4864" y1="2304" y2="2304" x1="4768" />
            <wire x2="4736" y1="1968" y2="2304" x1="4736" />
            <wire x2="5776" y1="1968" y2="1968" x1="4736" />
        </branch>
        <branch name="XLXN_27(31:0)">
            <wire x2="3408" y1="2512" y2="2512" x1="3312" />
            <wire x2="3504" y1="2512" y2="2512" x1="3408" />
            <wire x2="3408" y1="2368" y2="2512" x1="3408" />
            <wire x2="4768" y1="2368" y2="2368" x1="3408" />
            <wire x2="4864" y1="2368" y2="2368" x1="4768" />
        </branch>
    </sheet>
</drawing>