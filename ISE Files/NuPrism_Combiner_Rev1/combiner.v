`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: TRIUMF
// Engineer: Daryl Bishop 
// 
// Create Date:	15:49:22 06/13/2022 
// Design Name:	NuPrism Clock/Trigger/POE combiner for mPMT Rev1		
// Module Name:	combiner 
// Project Name:	Combiner Rev1 
// Target Devices:XC9572XL-5Vq64 
// Tool versions: 
// Description: Create combined POE/Trigger/Clock trigger modulated clock for NuPrism - mPMT Rev1 RJ45 cable   
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
// 
module combiner(
    input osc_clk0,				//62.5MHz local clock oscillator
    input osc_clk1,				//50MHz local clock oscillator
    output osc_sel,				//select 50MHZ/62.5MHz pecl fanout clock to RJ45
    input sma_clk,				//SMA external input clock
	 
	 output trig_sel,				//25% modulation = 0 / 75% modulation =1
    output trig1,					//modulated 25%/75% trigger
	 output trig2,					//missing clock trigger
    output trig_en,				//enable pecl trigger outputs to RJ45
    input sma_trig,				//SMA external asynchronous trigger

    output [4:1] sma_trig_monitor,	//SMA 50 ohm output trigger monitor
    output [4:1] sma_clk_monitor,	//SMA 50 ohm output trigger monitor
	 
    output [8:1] poe_led,		//show status of POE power
    input [4:1] poe_aux_det,	//detect 4 channels of 48 volt AUX POE power
	 input [4:1] poe_vc_det,	//detect 4 channels of 48 volt VC POE power
    input [8:1] switch			//pcb option select switches
    );

// clk0 domain
reg d0_shreg_clk0, d1_shreg_clk0;
reg d0_pipe_clk0;
reg d0_25duty_clk0, d0_75duty_clk0, d1_75duty_clk0;
reg dff_clock_modulated_clk0;

wire duty_25_select_clk0;
wire duty_75_select_clk0;
wire dffe_trig_out_clk0;

FDPE dffe_trigger_clk0 (.D(sma_trig), .C(osc_clk0), .CE(d0_shreg_clk0 & !d1_shreg_clk0), .Q(dffe_trig_out_clk0)); //enable trigger on each DIV4 shift cycle	

always @(posedge osc_clk0)
begin
	if (osc_clk0==1'b1)
		begin
			d0_shreg_clk0 <= !d1_shreg_clk0; // DIV4
			d1_shreg_clk0 <= d0_shreg_clk0;
		
			d0_25duty_clk0 <= (d0_shreg_clk0 & !d1_shreg_clk0);	// register 25% duty cycle to equalize timing
			d0_75duty_clk0 <= (d0_shreg_clk0 | !d1_shreg_clk0);	// register 75% duty cycle to equalize timing
			d1_75duty_clk0 <= d0_75duty_clk0;							// delay one clock to align
		
			dff_clock_modulated_clk0 <= (duty_25_select_clk0 | duty_75_select_clk0);	//register output
			d0_pipe_clk0 <= dffe_trig_out_clk0; 													//remove metastability
		end
end
assign duty_25_select_clk0 = (d0_25duty_clk0 & !dffe_trig_out_clk0);	// 0 = select 25% trigger
assign duty_75_select_clk0 = (d1_75duty_clk0 &  dffe_trig_out_clk0);	// 1 = select 75% trigger

// clk1 domain
reg d0_shreg_clk1, d1_shreg_clk1;
reg d0_pipe_clk1;
reg d0_25duty_clk1, d0_75duty_clk1, d1_75duty_clk1;
reg dff_clock_modulated_clk1;

wire duty_25_select_clk1;
wire duty_75_select_clk1;
wire dffe_trig_out_clk1;

FDPE dffe_trigger_clk1 (.D(sma_trig), .C(osc_clk1), .CE(d0_shreg_clk1 & !d1_shreg_clk1), .Q(dffe_trig_out_clk1)); //enable trigger on each DIV4 shift cycle	

always @(posedge osc_clk1)
begin
	if (osc_clk1==1'b1)
		begin
			d0_shreg_clk1 <= !d1_shreg_clk1; // DIV4
			d1_shreg_clk1 <= d0_shreg_clk1;
		
			d0_25duty_clk1 <= (d0_shreg_clk1 & !d1_shreg_clk1);	// register 25% duty cycle to equalize timing
			d0_75duty_clk1 <= (d0_shreg_clk1 | !d1_shreg_clk1);	// register 75% duty cycle to equalize timing
			d1_75duty_clk1 <= d0_75duty_clk1;							// delay one clock to align
		
			dff_clock_modulated_clk1 <= (duty_25_select_clk1 | duty_75_select_clk1);	//register output
			d0_pipe_clk1 <= dffe_trig_out_clk1; 													//remove metastability
		end
end


assign trig1			 = dff_clock_modulated_clk0;				// registered modulated clock output pin
assign trig2			 = osc_clk0 & !dffe_trig_out_clk0 ;		//  missing clock output pin

assign sma_clk_monitor = {4{(osc_clk0 & !switch[3]) | (dff_clock_modulated_clk0 & switch[3])}}; //62.5MHz or modulated clock
									 
assign sma_trig_monitor = {4{d0_pipe_clk0}}; 					//synchronized trigger for  modulated clock
assign osc_sel = switch[1];									//(62.5MHz = 0) (25MHz = 1))
assign trig_sel = switch[2];									//(25%75% modulated clock = 1) (missing clock = 0) 
assign trig_en = 1'b1;											//drive enable on the 4:1 trigger buffer

assign poe_led[8] = !poe_vc_det[4]; // Connect LEDs to POE comparator
assign poe_led[6] = !poe_vc_det[3]; // Connect LEDs to POE comparator
assign poe_led[4] = !poe_vc_det[2]; // Connect LEDs to POE comparator
assign poe_led[2] = !poe_vc_det[1]; // Connect LEDs to POE comparator

assign poe_led[7] = !poe_aux_det[4]; // Connect LEDs to POE comparator
assign poe_led[5] = !poe_aux_det[3]; // Connect LEDs to POE comparator
assign poe_led[3] = !poe_aux_det[2]; // Connect LEDs to POE comparator
assign poe_led[1] = !poe_aux_det[1]; // Connect LEDs to POE comparator

endmodule


