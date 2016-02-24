transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/noutram/Desktop/TestBench/Demo5 - checking timing/my_jk.vhd}

vcom -93 -work work {C:/Users/noutram/Desktop/TestBench/Demo5 - checking timing/simulation/modelsim/my_jk.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc" my_jk_vhd_tst

add wave *
view structure
view signals
run -all
