`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 11:09:25 PM
// Design Name: 
// Module Name: Up_counter
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


module Up_counter(
    input clk,
    input reset_n,
    output reg [1:0] q_out
    );
always @ (posedge clk, negedge reset_n)
    begin
        if(!reset_n)
            q_out <= 2'b00;
        else
            q_out <= q_out + 1;
    end
endmodule
