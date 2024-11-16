`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 06:09:20 PM
// Design Name: 
// Module Name: tb_binary_gray_counter_nbit
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

`define N 4
module tb_binary_gray_counter_nbit();
    reg clk;
    reg reset_n;
    wire [`N-1:0] binary_out;
    wire [`N-1:0] gray_out;

binary_gray_counter_nbit DUT(clk,reset_n,binary_out,gray_out);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset_n = 0;
    
    #10 reset_n = 1;
    #200 reset_n = 0;
    #100 $finish;
end
endmodule
