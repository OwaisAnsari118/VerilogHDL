`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 05:11:14 PM
// Design Name: 
// Module Name: gray_counter_nbit
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
module gray_counter_nbit(
    input               clk,
    input               reset_n,
    output reg [`N-1:0] q_out
    );
    
    reg [`N-1:0] binary_count;
    
always@(posedge clk, negedge reset_n)
begin
    if(!reset_n) begin
        q_out = {`N{'b0}};
        binary_count = {`N{'b0}};
    end
    else    
        binary_count <= binary_count + 1;  
        q_out <= binary_count ^ (binary_count >> 1);
end
endmodule
