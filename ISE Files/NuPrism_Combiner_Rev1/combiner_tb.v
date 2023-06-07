`timescale 100ns / 1ns

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:07:17 06/15/2022
// Design Name:   combiner
// Module Name:   /home/ise/NuPrism_Combiner_Rev1/combiner_tb.v
// Project Name:  NuPrism_Combiner_Rev1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: combiner
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module combiner_tb;

	// Inputs
	reg osc_clk0;
	reg osc_clk1;
	reg sma_clk;
	reg sma_trig;
	reg [4:1] poe_aux_det;
	reg [4:1] poe_vc_det;
	reg [8:1] switch;

	// Outputs
	wire osc_sel;
	wire trig_sel;
	wire trig1;
	wire trig2;
	wire trig_en;
	wire [4:1] sma_trig_monitor;
	wire [4:1] sma_clk_monitor;
	wire [8:1] poe_led;

	// Instantiate the Unit Under Test (UUT)
	combiner uut (
		.osc_clk0(osc_clk0), 
		.osc_clk1(osc_clk1), 
		.osc_sel(osc_sel), 
		.sma_clk(sma_clk), 
		.trig_sel(trig_sel), 
		.trig1(trig1), 
		.trig2(trig2), 
		.trig_en(trig_en), 
		.sma_trig(sma_trig), 
		.sma_trig_monitor(sma_trig_monitor), 
		.sma_clk_monitor(sma_clk_monitor), 
		.poe_led(poe_led), 
		.poe_aux_det(poe_aux_det), 
		.poe_vc_det(poe_vc_det), 
		.switch(switch)
	);

	initial begin
		// Initialize Inputs
		osc_clk0 = 0;
		osc_clk1 = 0;
		sma_clk = 0;
		sma_trig = 0;
		poe_aux_det = 0;
		poe_vc_det = 0;
		switch = 0;

		// Wait 10 ns for global reset to finish
		#10;
		osc_clk0 = 1'b0;
		#10;
		osc_clk0 = 0'b0;
		#10;
		osc_clk0 = 1'b0;
		#10;
		osc_clk0 = 0'b0;
		#10;
		osc_clk0 = 1'b0;
		#10;
		osc_clk0 = 0'b0;;
		#10;
		osc_clk0 = 0'b0;		
		// Add stimulus here

	end
      
endmodule

