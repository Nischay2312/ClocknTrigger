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


//instantiate the DUT
ClocknTriggerDC DUT_DC(
    .fastclk(fastclk),
    .trigger(trigger),
    .clk_out(clk_out_DC),
    .reset(reset)
    );

ClocknTrigger DUT(
    .fastclk(fastclk),
    .trigger(trigger),
    .clk_out(clk_out),
    .reset(reset)
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
    #1;
    reset = 1'b1;
    #3;
    reset = 1'b0;
    //wait for sometime
    #59;
    //assert trigger
    trigger = 1'b1;
    //wait for sometime
    #48;
    //deassert trigger
    trigger = 1'b0;
    //wait for sometime
    #100;
    //and the simulation
    $finish;

end

endmodule

