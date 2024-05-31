transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/REG_DST_MUX.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/PL_ALU_CTRL.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/PL_WB_MUX.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/PL_BRANCH_MUX.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/MEMWB_REG.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/EXMEM_REG.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/DEEX_REG.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/IFDE_REG.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/CREATE_STALL.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/HAZARD_UNIT.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/BRANCH_ADDER.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/MUX3.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/AND2BIT.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/DECODER.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/MUX32.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/GEN_REG.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/JUMP_SHIFT.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/SEX.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/PC_ADD4.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/PC.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/MUX2.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/FWD_UNIT.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/CTRL_UNIT.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/ALU.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/IMEM.vhd}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/REGISTERS.vhdl}
vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/P3_top.vhdl}

vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3pipeline/P3_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  P3_tb

add wave *
view structure
view signals
run -all
