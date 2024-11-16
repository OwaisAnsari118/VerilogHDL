`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 01:29:45 AM
// Design Name: 
// Module Name: frequency_div3
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


module frequency_div3(
    input clk,
    input reset_n,
    output q_out
    );
    reg [1:0] count;
    always@(posedge clk, negedge reset_n)
        begin
            if(~reset_n)
                count <= 2'b00;  
            else if(count == 2'b10)
                count <= 2'b00;
            else
                count <= count+1;
        end 
        assign q_out = count[1]; 
endmodule
