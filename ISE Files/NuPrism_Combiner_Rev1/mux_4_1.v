`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:47:10 06/15/2022 
// Design Name: 
// Module Name:    mux_4_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux_4_1(
    input a,
    input b,
    input c,
    input d,
    input s0,
    input s1,
    output reg out
    );

always @(a or b or c or d or s0 or s1)
	begin
		case (s0 | s1)
		2'b00 : out <= a;
		2'b01 : out <= b;
		2'b10 : out <= c;
		2'b11 : out <= d;
		endcase
	end
endmodule

