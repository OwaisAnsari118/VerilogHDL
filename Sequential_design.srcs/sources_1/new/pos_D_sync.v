`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 07:43:30 PM
// Design Name: 
// Module Name: pos_D_sync
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


module pos_D_sync(
    input d_in,
    input clk,
    input reset_n,
    output reg q_out
    );
    
    always@(posedge clk)
    begin
        if(!reset_n)
            q_out <= 1'b0;
        else 
            q_out <= d_in;
    end
endmodule
