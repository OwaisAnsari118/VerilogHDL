`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 01:52:16 PM
// Design Name: 
// Module Name: tb_fulladder_fun
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


module tb_fulladder_fun();

reg a_in;
reg b_in;
reg carry_in;
wire sum_out;
wire carry_out;


fulladder_fun DUT(
    .a_in(a_in),
    .b_in(b_in),
    .carry_in(carry_in),
    .sum_out(sum_out),
    .carry_out(carry_out)
    );
 
always #10 a_in = a_in + 1;   
always #10 b_in = b_in + 1;
always #20 carry_in = ~carry_in;
  
initial
    begin 
        a_in = 0;
        b_in = 0;
        carry_in = 0;
        #500 $finish;
    end
endmodule
