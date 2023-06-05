onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider TestBench
add wave -noupdate /ClocknTrigger_tb/fastclk
add wave -noupdate /ClocknTrigger_tb/trigger
add wave -noupdate /ClocknTrigger_tb/clk_out_DC
add wave -noupdate /ClocknTrigger_tb/clk_out
add wave -noupdate /ClocknTrigger_tb/reset
add wave -noupdate -divider DutyCycle
add wave -noupdate /ClocknTrigger_tb/DUT_DC/fastclk
add wave -noupdate /ClocknTrigger_tb/DUT_DC/reset
add wave -noupdate /ClocknTrigger_tb/DUT_DC/trigger
add wave -noupdate /ClocknTrigger_tb/DUT_DC/clk_out
add wave -noupdate /ClocknTrigger_tb/DUT_DC/TriggerSync
add wave -noupdate /ClocknTrigger_tb/DUT_DC/clk_25DC
add wave -noupdate /ClocknTrigger_tb/DUT_DC/clk_75DC
add wave -noupdate /ClocknTrigger_tb/DUT_DC/counter
add wave -noupdate -divider {Dr. Linn Method}
add wave -noupdate /ClocknTrigger_tb/DUT/fastclk
add wave -noupdate /ClocknTrigger_tb/DUT/trigger
add wave -noupdate /ClocknTrigger_tb/DUT/clk_out
add wave -noupdate /ClocknTrigger_tb/DUT/reset
add wave -noupdate /ClocknTrigger_tb/DUT/slowclk
add wave -noupdate /ClocknTrigger_tb/DUT/trig_sync
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 214
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
WaveRestoreZoom {0 ps} {1790 ps}
