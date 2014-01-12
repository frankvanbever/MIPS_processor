# ROLLMIPS-1

Regularly Operating Logicaly Logic MIPS Processor


This is an implementation of a single cycle MIPS processor in VHDL. It was made for the Computer Architecture Course at Erasmus University College in the accademic year 2012-2013 by Steven Vanden Branden and Frank Vanbever.
It can currently execute following instructions:
* add
* sub
* and
* or
* slt
* nor
* beq
* bne
* addi
* sw
* lw
* mult	(with Hi and Lo registers)
* mfhi
* mflo


The testbenches folder contains the testbenches for the different components.
The Xilinx\_Files folder contains the Xilinx ISE project file (MIPS\_processor\_2.xise). It may be necessary to point ISE to the folder containting the VHDL files.
The docs folder contains the Doxygen generated documentation in the form of a number of HTML files. The easiest way to consult these is through the [github.io](http://frankvanbever.github.io/MIPS_processor/) site of this project. Be warned that this documentation is not up to date and far from complete.
In the assembler_code folder an application can be found that calculates the Fibonacci numbers, as well as the hexadecimal representation of this application that can be used in the application. 

The Xilinx ISE schematic editor was used to create the top-level file for this design. 

![processor](https://dl.dropboxusercontent.com/u/16037101/rollmips.png)
