onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ClocknTrigger_tb/fastclk
add wave -noupdate /ClocknTrigger_tb/trigger
add wave -noupdate /ClocknTrigger_tb/clk_out
add wave -noupdate /ClocknTrigger_tb/reset
add wave -noupdate -divider DUT
add wave -noupdate /ClocknTrigger_tb/DUT/fastclk
add wave -noupdate /ClocknTrigger_tb/DUT/reset
add wave -noupdate /ClocknTrigger_tb/DUT/trigger
add wave -noupdate /ClocknTrigger_tb/DUT/clk_out
add wave -noupdate /ClocknTrigger_tb/DUT/TriggerSync
add wave -noupdate /ClocknTrigger_tb/DUT/clk_25DC
add wave -noupdate /ClocknTrigger_tb/DUT/clk_75DC
add wave -noupdate -radix unsigned /ClocknTrigger_tb/DUT/counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {12902 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {221550 ps}
