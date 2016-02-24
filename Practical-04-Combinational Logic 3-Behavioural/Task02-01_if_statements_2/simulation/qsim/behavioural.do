onerror {exit -code 1}
vlib work
vlog -work work behavioural.vo
vlog -work work behavioural_tests.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.behavioural_vlg_vec_tst -voptargs="+acc"
vcd file -direction behavioural.msim.vcd
vcd add -internal behavioural_vlg_vec_tst/*
vcd add -internal behavioural_vlg_vec_tst/i1/*
run -all
quit -f
