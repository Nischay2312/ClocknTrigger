/*
ClocknTrigger.v testbench
*/

//set timescale 
`timescale 1ns / 1ps


/*
*   ClocknTrigger_tb
*   Testbench for ClocknTrigger.v
*/

module ClocknTrigger_tb();

//Declare the signals
reg fastclk;
reg trigger;
wire clk_out_DC;
wire clk_out;
reg reset;
reg [1:0] Switches;
wire Trig_sel;
wire Clock_sel;
wire Trig_en;
wire SMA_CLK_PORT;
wire SMA_TRIG_PORT;


//instantiate the DUT

ClocknTrigger DUT(
    .fastclk(fastclk),
    .trigger(trigger),
    .clk_out(clk_out),
    .clk_out_DC(clk_out_DC),
    .reset(reset),
    .Switches(Switches),
    .Trig_sel(Trig_sel),
    .Clock_sel(Clock_sel),
    .Trig_en(Trig_en),
    .SMA_CLK_PORT(SMA_CLK_PORT),
    .SMA_TRIG_PORT(SMA_TRIG_PORT)
    );



//clock generator

always begin
    fastclk = 1'b0;
    #2;
    fastclk = 1'b1;
    #2;
end



//Testbench Begin
initial begin
    //assert reset
    reset = 1'b0;
    trigger = 1'b0;
    Switches = 2'b00;
    #1;
    reset = 1'b1;
    #3;
    reset = 1'b0;
    //wait for sometime
    #54;
    Switches = 2'b01;
    //wait for sometime
    #24;
    Switches = 2'b10;
    #24;
    Switches = 2'b11;
    #21;
    Switches = 2'b00;
    //assert trigger
    trigger = 1'b1;
    //wait for sometime
    #48;
    //deassert trigger
    trigger = 1'b0;
    //wait for sometime
    #100;
    //and the simulation
    $stop;

end

endmodule