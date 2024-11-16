`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 09:46:51 PM
// Design Name: 
// Module Name: tb_half_adder_primitive
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


module tb_half_adder_primitive();

wire sum_out,carry_out;
reg a_in,b_in;

half_adder_sum DUT1(sum_out,a_in,b_in);
half_adder_carry DUT2(carry_out,a_in,b_in);

always #10 a_in = ~a_in;
always #5 b_in = ~b_in;

initial
begin
    a_in =0;
    b_in =0;
end
endmodule
