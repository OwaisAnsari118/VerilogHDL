`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 01:26:34 AM
// Design Name: 
// Module Name: ring_counter_decoder
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


module ring_counter_decoder(
    input clk,
    input reset_n,
    output  [3:0] q_out
    );
wire [1:0]c_out;    
Decoder_2to4 U1(
    .en_in(1'b1),
    .sel_in(~c_out),
    .y_out(q_out)
    );
    
Up_counter U2(
    .clk(clk),
    .reset_n(reset_n),
    .q_out(c_out)
    );
endmodule
