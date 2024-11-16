`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 02:03:37 PM
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(
    input [3:0] data_in,
    input load,
    input reset_n,
    input clk,
    output reg [3:0] q_out
    );
    
    always @(posedge clk, negedge reset_n)
        begin
            if(~reset_n)
                q_out <= 4'b0000;
            else
            begin
                if(load)
                    q_out <= 4'b1000;
                else
                    q_out <= {q_out[0],q_out[3:1]};
            end
         end
endmodule
