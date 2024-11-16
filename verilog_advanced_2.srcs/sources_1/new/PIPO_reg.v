`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 01:58:22 PM
// Design Name: 
// Module Name: PIPO_reg
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
module PIPO_reg(
    input [`N-1:0] d_in,
    input clk,
    input reset_n,
    output reg [`N-1:0] q_out
    );

always@(posedge clk, negedge reset_n)
begin
    if(!reset_n)
        q_out <= 8'b0;
    else    
        q_out <= d_in;
end

specify
    specparam dtoq=3;
    specparam clktoq=2;
    (d_in=>q_out) = dtoq;
    (clk=>q_out) = clktoq;
endspecify
endmodule
