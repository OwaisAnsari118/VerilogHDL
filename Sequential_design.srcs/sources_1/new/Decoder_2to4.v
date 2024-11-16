`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 01:29:14 AM
// Design Name: 
// Module Name: Decoder_2to4
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


module Decoder_2to4(
    input [1:0] sel_in,
    input en_in,
    output [3:0] y_out
    );
    assign y_out[0] = en_in & (!sel_in[1]) & (!sel_in[0]);
    assign y_out[1] = en_in & (!sel_in[1]) & (sel_in[0]);
    assign y_out[2] = en_in & (sel_in[1]) & (!sel_in[0]);
    assign y_out[3] = en_in & (sel_in[1]) & (sel_in[0]); 
endmodule
