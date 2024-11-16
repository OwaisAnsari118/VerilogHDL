`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 07:17:01 PM
// Design Name: 
// Module Name: neg_D
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


module neg_D(
    input d_in,
    input clk,
    input reset_n,
    output reg q_out
    );
    
    always@(negedge clk or negedge reset_n)
    begin
        if(!reset_n)
            q_out <= 1'b0;
        else 
            q_out <= d_in;
    end
endmodule
