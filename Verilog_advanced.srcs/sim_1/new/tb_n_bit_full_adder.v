`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 05:01:12 PM
// Design Name: 
// Module Name: tb_n_bit_full_adder
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


module tb_n_bit_full_adder();

reg [`N-1:0]a_in;
reg [`N-1:0]b_in;
reg carry_in;
wire [`N-1:0]sum_out;
wire carry_out;


n_bit_full_adder DUT(a_in,b_in,carry_in,sum_out,carry_out);

always #4 a_in = $random;
always #2 b_in = $random;
always #1 carry_in = ~carry_in;
initial
begin
    a_in = 0;
    b_in = 0;
    carry_in = 0;
    
    #100 $finish;
end
endmodule
