`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 03:21:10 PM
// Design Name: 
// Module Name: PIPO_8bit_reg
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
module PIPO_8bit_reg(
    input  [`N-1:0]d_in,
    input          clk,
    input          reset_n,
    output [`N-1:0]q_out
    );
    
generate
genvar i;
    for(i=0; i<8 ; i = i+1)
        begin
            D_ff u (d_in[i],clk,reset_n,q_out[i]);
        end
endgenerate
endmodule
