`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 02:07:55 PM
// Design Name: 
// Module Name: Multiple_driver
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


module Multiple_driver(
    input a_in,
    input b_in,
    output reg y_out
    );
    always @*
    begin
        y_out = ~a_in;
    end
    always @*
    begin
        y_out = a_in ^ b_in;
    end
    always @*
    begin
        y_out = a_in & b_in;
    end
    
endmodule
