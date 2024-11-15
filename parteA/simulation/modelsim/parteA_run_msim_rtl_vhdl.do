transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/Users/Administrador/Documents/GitHub/tp-laboratorio/parteA/parteA.vhd}

vcom -93 -work work {F:/Users/Administrador/Documents/GitHub/tp-laboratorio/parteA/tb_parteA.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  tb_parteA

add wave *
view structure
view signals
run 80 us
