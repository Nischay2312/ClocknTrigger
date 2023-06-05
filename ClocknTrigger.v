
/*
*  This module takes in a fast clock and a trigger signal and outputs a clock that is modulated by the trigger signal.
*  The output clock is twice as slow as the input clock. If trigger is 1, the output clock is 0. If trigger is 0, the output clock is a clock.
*  The reset is asynchronous and active high.
*/
module ClocknTrigger(input wire fastclk,
                    input  wire trigger,
                    output wire clk_out,
                    input reset
                    );
    //Internal signals
    reg slowclk;
    wire trig_sync;
    //Generate the slow clock
    always @(posedge fastclk or posedge reset) begin
        if(reset)
            slowclk <= 1'b0;
        else
            slowclk <= ~slowclk;
    end
    //Generate the synchronized trigger, synchronized at negetive edge of the fast clock
    mySync TriggSync(.clk(!fastclk), .reset(reset), .data_in(trigger), .data_out(trig_sync));
    //Generate the output clock
    assign clk_out = (slowclk & !trig_sync);
endmodule

/*
*   ClocknTriggerDC
*   This module takes in a fast clock and a trigger signal and outputs a clock that is modulated by the trigger signal.
*   The output clock has a duty cycle of 25% if trigger is 1 and 75% if trigger is 0.
*   The reset is asynchronous and active high.
*/
module ClocknTriggerDC(input wire fastclk,
                        input wire reset,
                        input wire trigger,
                        output clk_out
                        );
wire TriggerSync;
wire clk_25DC;
wire clk_75DC;
reg [1:0]counter;
//Generate the synchronized trigger, synchronized at negetive edge of the fast clock
mySync TriggSync(.clk(!fastclk), .reset(reset), .data_in(trigger), .data_out(TriggerSync));
//create the counter to get 4 phases
always @(posedge fastclk or posedge reset) begin
    if(reset) begin
        counter <= 2'b00;
    end
    else begin
        if(counter == 2'b11)begin
            counter <= 2'b00;
        end
        else begin
            counter <= counter + 1'b1;
        end
    end
end
//produce the output
assign clk_25DC = (counter > 2'b10)? 1'b1: 1'b0;
assign clk_75DC = (counter > 2'b00)? 1'b1: 1'b0;
assign clk_out = TriggerSync? clk_25DC : clk_75DC;
endmodule


/*
    A very simple two stage signal synchronizer. The input signal is synchronized to the clock. With active high asynchronous reset.
*/
module mySync (input clk,
               input reset,
               input data_in,
               output reg data_out
                );
reg signalSync1;
always @(posedge clk or posedge reset) begin
    if (reset) begin
        signalSync1 <= 1'b0;
        data_out <= 1'b0;
    end else begin
        signalSync1 <= data_in;
        data_out <= signalSync1;
    end
end
endmodule
