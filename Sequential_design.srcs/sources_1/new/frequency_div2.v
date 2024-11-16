`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 01:12:09 AM
// Design Name: 
// Module Name: frequency_div2
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


module frequency_div2(
    input clk,
    input reset_n,
    output reg q_out);
    
    always@(posedge clk, negedge reset_n)
        begin
            if(~reset_n)
                q_out <= 'b0;
            else
                q_out <= ~q_out;
        end  
endmodule
