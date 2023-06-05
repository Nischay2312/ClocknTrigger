onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Testbench
add wave -noupdate /ClocknTrigger_tb/fastclk
add wave -noupdate /ClocknTrigger_tb/trigger
add wave -noupdate /ClocknTrigger_tb/clk_out
add wave -noupdate /ClocknTrigger_tb/reset
add wave -noupdate -divider DUT
add wave -noupdate /ClocknTrigger_tb/DUT/fastclk
add wave -noupdate /ClocknTrigger_tb/DUT/trigger
add wave -noupdate /ClocknTrigger_tb/DUT/clk_out
add wave -noupdate /ClocknTrigger_tb/DUT/reset
add wave -noupdate /ClocknTrigger_tb/DUT/slowclk
add wave -noupdate /ClocknTrigger_tb/DUT/trig_sync
add wave -noupdate -divider Sync
add wave -noupdate /ClocknTrigger_tb/DUT/TriggSync/clk
add wave -noupdate /ClocknTrigger_tb/DUT/TriggSync/reset
add wave -noupdate /ClocknTrigger_tb/DUT/TriggSync/data_in
add wave -noupdate /ClocknTrigger_tb/DUT/TriggSync/data_out
add wave -noupdate /ClocknTrigger_tb/DUT/TriggSync/signalSync1
TreeUpdate [SetDefaultTree]
quietly WaveActivateNextPane
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 235
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
WaveRestoreZoom {0 ps} {183735 ps}
