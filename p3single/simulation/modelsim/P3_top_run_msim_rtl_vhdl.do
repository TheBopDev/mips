transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3single/PC.vhdl}

vcom -93 -work work {/home/josh/school/ece4120/final_proj/p3single/Temp_PC_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Temp_PC_tb

add wave *
view structure
view signals
run 50 ns
