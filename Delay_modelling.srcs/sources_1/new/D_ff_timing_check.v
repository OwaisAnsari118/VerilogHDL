`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 09:57:41 PM
// Design Name: 
// Module Name: D_ff_timing_check
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


module D_ff_timing_check(
    input d_in,
    input clk,
    input reset_n,
    output reg q_out
    );
    
always@(posedge clk , negedge reset_n)
begin
    if(!reset_n)
        q_out <= 0;
    else
        q_out <= d_in;
end
endmodule
