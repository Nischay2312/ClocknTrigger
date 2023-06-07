onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider TestBench
add wave -noupdate /ClocknTrigger_tb/reset
add wave -noupdate /ClocknTrigger_tb/fastclk
add wave -noupdate /ClocknTrigger_tb/trigger
add wave -noupdate /ClocknTrigger_tb/clk_out
add wave -noupdate /ClocknTrigger_tb/clk_out_DC
add wave -noupdate -divider DutyCycle
add wave -noupdate /ClocknTrigger_tb/DUT/CnTDC/reset
add wave -noupdate /ClocknTrigger_tb/DUT/CnTDC/fastclk
add wave -noupdate /ClocknTrigger_tb/DUT/CnTDC/trigger
add wave -noupdate /ClocknTrigger_tb/DUT/CnTDC/TriggerSync
add wave -noupdate /ClocknTrigger_tb/DUT/CnTDC/clk_25DC
add wave -noupdate /ClocknTrigger_tb/DUT/CnTDC/clk_75DC
add wave -noupdate /ClocknTrigger_tb/DUT/CnTDC/clk_out
add wave -noupdate /ClocknTrigger_tb/DUT/CnTDC/counter
add wave -noupdate -divider {Dr. Linn}
add wave -noupdate /ClocknTrigger_tb/DUT/CnT/reset
add wave -noupdate /ClocknTrigger_tb/DUT/CnT/fastclk
add wave -noupdate /ClocknTrigger_tb/DUT/CnT/slowclk
add wave -noupdate /ClocknTrigger_tb/DUT/CnT/slowclk_90deg
add wave -noupdate /ClocknTrigger_tb/DUT/CnT/trigger
add wave -noupdate /ClocknTrigger_tb/DUT/CnT/trig_sync
add wave -noupdate /ClocknTrigger_tb/DUT/CnT/clk_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {128527 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 231
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
WaveRestoreZoom {0 ps} {291900 ps}
