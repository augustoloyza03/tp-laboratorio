transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {parteA.vho}

vcom -93 -work work {F:/Users/Administrador/Documents/GitHub/tp-laboratorio/parteA/tb_parteA.vhd}

vsim -t 1ps -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  tb_parteA

add wave *
view structure
view signals
run 80 us
