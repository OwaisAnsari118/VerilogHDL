`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 01:24:19 PM
// Design Name: 
// Module Name: mux_2to1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_2to1(
    input a_in,
    input b_in,
    input sel_in,
    output y_out
    );
wire y1;
wire y2;
wire y3;

assign y2 = y3 & a_in;
assign y1 = sel_in & b_in;
assign y_out = y1 | y2;
assign y3 = !sel_in;

endmodule
