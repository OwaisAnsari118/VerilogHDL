`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 02:54:53 PM
// Design Name: 
// Module Name: top_design_mux
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

`define N 8
module top_design_mux(
    input [`N-1:0] a_in,
    input [`N-1:0] b_in,
    output [`N-1:0] y_out,
    input sel
    );
    
    
generate
genvar i;
    for(i=0; i<8 ; i = i+1)
        begin
            mux_2to1 u (a_in[i],b_in[i],y_out[i],sel);
        end
endgenerate
endmodule
