`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 01:35:26 PM
// Design Name: 
// Module Name: tb_add_8bit_fun
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


module tb_add_8bit_fun();

reg [3:0] a_in;
reg [3:0] b_in;
wire [3:0] sum_out;
wire carry_out;


add_8bit_fun DUT(
    .a_in(a_in),
    .b_in(b_in),
    .sum_out(sum_out),
    .carry_out(carry_out)
    );
 
always #10 a_in = a_in + 1;   
always #10 b_in = b_in + 1;  
initial
    begin 
        a_in = 4'b0000;
        b_in = 4'b0000;
        #500 $finish;
    end
endmodule
