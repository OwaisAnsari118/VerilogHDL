`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 03:15:19 PM
// Design Name: 
// Module Name: tb_full_adder_1bit_primitive
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


module tb_full_adder_1bit_primitive();

wire sum_out,carry_out;
reg a_in,b_in,carry_in;

full_adder_sum DUT1(sum_out,a_in,b_in,carry_in);
full_adder_carry DUT2(carry_out,a_in,b_in,carry_in);

always #4 a_in = ~a_in;
always #2 b_in = ~b_in;
always #1 carry_in = ~carry_in;

initial
begin
    a_in = 0;
    b_in = 0;
    carry_in = 0;
    #500 $finish;
end
endmodule
