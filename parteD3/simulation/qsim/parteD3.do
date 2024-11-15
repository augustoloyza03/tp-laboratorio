onerror {quit -f}
vlib work
vlog -work work parteD3.vo
vlog -work work parteD3.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.parteD3_vlg_vec_tst
vcd file -direction parteD3.msim.vcd
vcd add -internal parteD3_vlg_vec_tst/*
vcd add -internal parteD3_vlg_vec_tst/i1/*
add wave /*
run -all
