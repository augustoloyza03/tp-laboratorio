onerror {quit -f}
vlib work
vlog -work work parteB.vo
vlog -work work parteB.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.parteB_vlg_vec_tst
vcd file -direction parteB.msim.vcd
vcd add -internal parteB_vlg_vec_tst/*
vcd add -internal parteB_vlg_vec_tst/i1/*
add wave /*
run -all
