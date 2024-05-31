Author: Josh White
For: ECE 4120 - Fundamentals of Computer Design
Phase 3 of MIPS



Note: This readme is for SINGLE CYCLE ONLY. No pipeline.

**** FILE DESCRIPTORS ****

P3_tb.vhdl          <- Testbench used to analyze the P3_top behavior
P3_top.sdc          <- Create the clock
P3_top.vhdl         <- Top level entity
ALU.vhdl            <- The Arithmatic Logic Unit (32 bits)
ALU_CTRL.vhdl       <- Control unit to handle ALU Operation specifically
CTRL_UNIT.vhdl      <- Control unit for entire datapath
MUX2.vhdl           <- 32-bit 2 to 1 MUX
SEX.vhdl            <- 16 to 32 bit sign extension
