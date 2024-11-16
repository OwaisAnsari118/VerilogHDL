`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 02:06:14 PM
// Design Name: 
// Module Name: top_design_generate
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


module top_design_generate(
    input [7:0]a_in,
    input [7:0]b_in,
    input [7:0]y_out
    );

genvar i;
generate
    for(i=0; i<8 ; i = i+1)
        begin
            and_gate u1(a_in[i],b_in[i],y_out[i]);
        end
endgenerate
endmodule
