`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 01:37:10 AM
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input a_in,
    input b_in,
    input c_in,
    output sum_out,
    output carry_out);
    
    wire sum_0;
    wire carrry_0;
    wire carry_1;
    
Half_Adder U1 (
    .a_in(a_in),
    .b_in(b_in),
    .sum_out(sum_0),
    .carry_out(carry_0)
);

Half_Adder U2 (
    .a_in(sum_0),
    .b_in(c_in),
    .sum_out(sum_out),
    .carry_out(carry_1)
);

assign carry_out = carry_1 | carry_0;


endmodule
