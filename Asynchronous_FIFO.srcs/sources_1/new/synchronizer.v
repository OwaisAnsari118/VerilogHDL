`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 09:22:36 PM
// Design Name: 
// Module Name: synchronizer
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


module synchronizer(
    input [3:0] d_in,
    input clk,
    input reset_n,
    output reg [3:0] q_out
    );
    reg q_out_0;
    always@(posedge clk, negedge reset_n)
    begin
        if(!reset_n) begin
            q_out <= 4'b0;
            q_out_0 <= 4'b0;
        end
        else
        begin
            q_out_0 <= d_in;
            q_out <= q_out_0;
        end
    end
endmodule
