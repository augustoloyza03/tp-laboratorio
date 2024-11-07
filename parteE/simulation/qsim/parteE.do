onerror {quit -f}
vlib work
vlog -work work parteE.vo
vlog -work work parteE.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.circuiteria_vlg_vec_tst
vcd file -direction parteE.msim.vcd
vcd add -internal circuiteria_vlg_vec_tst/*
vcd add -internal circuiteria_vlg_vec_tst/i1/*
add wave /*
run -all
