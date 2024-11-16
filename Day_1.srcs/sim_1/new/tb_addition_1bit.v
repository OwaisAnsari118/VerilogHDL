`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 02:21:35 PM
// Design Name: 
// Module Name: tb_addition_1bit
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


module tb_addition_1bit();

reg a_in,b_in;
wire sum_out,carry_out;

addition_1bit DUT(
    .a_in(a_in),
    .b_in(b_in),
    .sum_out(sum_out),
    .carry_out(carry_out)    
);
initial
    begin
    a_in=0; b_in=0;
    #10 a_in=0; b_in=1;
    #10 a_in=1; b_in=0;
    #10 a_in=1; b_in=1;
    #10 $finish;
    end
endmodule
