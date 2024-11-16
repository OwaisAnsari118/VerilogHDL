`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 03:07:59 AM
// Design Name: 
// Module Name: MUX_2to1_ternary
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


module MUX_2to1_ternary(
    input a_in,
    input b_in,
    input sel,
    output y_out
    );
    
    assign y_out = (sel)?b_in:a_in;
    //assign y_out = in[sel];
endmodule
