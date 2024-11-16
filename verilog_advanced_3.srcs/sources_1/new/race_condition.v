`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 02:56:24 PM
// Design Name: 
// Module Name: race_condition
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


module race_condition(
    input clk,
    input reset_p,
    output reg q1_out,
    output reg q2_out
    );
    


always@(posedge clk, posedge reset_p) begin
    if(reset_p)
        q2_out <= 1;
    else   
        q2_out <= q1_out;
end


always@(posedge clk, posedge reset_p) begin
    if(reset_p)
        q1_out <= 0;
    else   
        q1_out <= q2_out;
end


endmodule