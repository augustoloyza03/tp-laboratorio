transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/Users/Administrador/Documents/GitHub/tp-laboratorio/parteC/Block1.vhd}
vcom -93 -work work {F:/Users/Administrador/Documents/GitHub/tp-laboratorio/parteB/FlipFlopD.vhd}
vcom -93 -work work {F:/Users/Administrador/Documents/GitHub/tp-laboratorio/parteC/parteC.vhdl}

vcom -93 -work work {F:/Users/Administrador/Documents/GitHub/tp-laboratorio/parteC/tb_Block1.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  tb_Block1

add wave *
view structure
view signals
run 120 ns
