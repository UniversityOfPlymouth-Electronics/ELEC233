transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {clock.vho}

vcom -93 -work work {C:/Users/noutram/Desktop/TestBench/Demo5 - checking timing/simulation/modelsim/my_jk.vht}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=clock_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" my_jk_vhd_tst

add wave *
view structure
view signals
run -all
