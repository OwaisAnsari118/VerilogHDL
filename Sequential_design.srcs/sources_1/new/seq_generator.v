`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 02:38:43 PM
// Design Name: 
// Module Name: seq_generator
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


module seq_generator(
    input clk,
    input reset_n,
    output reg [4:0] q_out
    );
    always @(posedge clk, negedge reset_n)
        begin
            if(~reset_n)
                q_out <= 4'b0000;
            else
                q_out <= {~q_out[0],q_out[3:1]};
         end
endmodule
