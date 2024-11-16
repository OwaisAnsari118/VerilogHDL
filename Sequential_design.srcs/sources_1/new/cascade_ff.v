`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 08:26:40 PM
// Design Name: 
// Module Name: seq_logic
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


module seq_logic(
    input d_in,
    input clk,
    input reset_in,
    output reg q_out,
    output reg q1_out
    );
    
    always@(posedge clk, negedge reset_in)
    begin   
        if(!reset_in)
        begin
            q_out <= 0;
            q1_out <= 0;
        end
        else
        begin
            q_out <= d_in;
            q1_out <= ~d_in;
        end
     end      
endmodule
