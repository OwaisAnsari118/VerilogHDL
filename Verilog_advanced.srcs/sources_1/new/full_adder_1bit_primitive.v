`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 03:07:37 PM
// Design Name: 
// Module Name: full_adder_1bit_primitive
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


primitive full_adder_sum(sum_out,a_in,b_in,carry_in);
                        output sum_out;
                        input a_in,b_in,carry_in;
table
//a_in b_in carry sum
    0   0    0    : 0;
    0   0    1    : 1;
    0   1    0    : 1;
    0   1    1    : 0;
    1   0    0    : 1;
    1   0    1    : 0;
    1   1    0    : 0;
    1   1    1    : 1;
endtable
endprimitive

primitive full_adder_carry(carry_out,a_in,b_in,carry_in);
                        output carry_out;
                        input a_in,b_in,carry_in;
table
//a_in b_in carry sum
    0   0    0    : 0;
    0   0    1    : 0;
    0   1    0    : 0;
    0   1    1    : 1;
    1   0    0    : 0;
    1   0    1    : 1;
    1   1    0    : 1;
    1   1    1    : 1;
endtable
endprimitive
