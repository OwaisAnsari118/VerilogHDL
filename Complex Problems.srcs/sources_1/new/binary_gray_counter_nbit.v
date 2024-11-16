`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 05:59:12 PM
// Design Name: 
// Module Name: binary_gray_counter_nbit
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

`define N 4
module binary_gray_counter_nbit(
    input clk,
    input reset_n,
    output reg [`N-1:0] binary_out,
    output reg [`N-1:0] gray_out
    );
always@(posedge clk, negedge reset_n)
begin
    if(!reset_n) begin
        gray_out = {`N{'b0}};
        binary_out = {`N{'b0}};
    end
    else    
        binary_out <= binary_out + 1;  
        gray_out <= binary_out ^ (binary_out >> 1);
end   
endmodule
