onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /my_jk_vhd_tst/clk
add wave -noupdate /my_jk_vhd_tst/j
add wave -noupdate /my_jk_vhd_tst/k
add wave -noupdate /my_jk_vhd_tst/q
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {199379 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {512 ns}
