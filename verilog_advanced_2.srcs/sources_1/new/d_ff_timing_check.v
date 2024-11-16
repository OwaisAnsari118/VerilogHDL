`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 01:34:12 PM
// Design Name: 
// Module Name: d_ff_timing_check
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


module d_ff_timing_check(
    input d_in,
    input clk,
    input reset_n,
    output reg q_out
    );

always@(posedge clk, negedge reset_n)
begin
    if(!reset_n)
        q_out <= 0;
    else    
        q_out <= d_in;
end

specify
    specparam dtoq=2;
    specparam clktoq=1;
    (d_in=>q_out) = dtoq;
    (clk=>q_out) = clktoq;
endspecify
endmodule
