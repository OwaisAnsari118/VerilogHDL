`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 05:31:17 PM
// Design Name: 
// Module Name: tb_gray_counter_nbit
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
module tb_gray_counter_nbit();

reg           clk;
reg           reset_n;
wire [`N-1:0] q_out;

gray_counter_nbit DUT(clk,reset_n,q_out);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset_n = 0;
    
    #10 reset_n = 1;
    #200 reset_n = 0;
    #100 $finish;
end
endmodule
