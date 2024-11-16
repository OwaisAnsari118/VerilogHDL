`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 02:47:51 PM
// Design Name: 
// Module Name: h_adder
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


module h_adder(
    input a_in,
    input b_in,
    output sum_out,
    output carry_out
    );
    
    
    assign sum_out = a_in ^ b_in;
    assign carry_out = a_in & b_in;
endmodule
