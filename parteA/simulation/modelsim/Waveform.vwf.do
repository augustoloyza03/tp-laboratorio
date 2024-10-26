vlog -work work F:/Users/Administrador/Documents/GitHub/tp-laboratorio/parteA/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.parteA_vlg_vec_tst
onerror {resume}
add wave {parteA_vlg_vec_tst/i1/LED}
add wave {parteA_vlg_vec_tst/i1/SW1}
add wave {parteA_vlg_vec_tst/i1/SW2}
add wave {parteA_vlg_vec_tst/i1/SW3}
run -all
