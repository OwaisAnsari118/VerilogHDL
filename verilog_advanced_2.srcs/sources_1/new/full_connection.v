`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 07:58:30 AM
// Design Name: 
// Module Name: full_connection
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


module full_connection(
    input a_in,
    input b_in,
    input c_in,
    input d_in,
    output y_out
    );
    
    assign y_out = (a_in & b_in) | (c_in & d_in);
    
specify
    if({a_in,b_in}==2'b10)
        (a_in,b_in *> y_out) = 2;
    if({a_in,b_in} != 2'b10)
        (a_in,b_in *> y_out) = 1;
endspecify
endmodule
