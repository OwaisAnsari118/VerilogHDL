`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 03:25:24 PM
// Design Name: 
// Module Name: tb_PIPO_8bit_reg
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

`define N 8
module tb_PIPO_8bit_reg();

reg  [`N-1:0]d_in;
reg clk;
reg reset_n;
wire [`N-1:0]q_out;

PIPO_8bit_reg DUT(d_in,clk,reset_n,q_out);

always #5 d_in = $random();
always #5 clk = ~clk;
initial
begin
    d_in = 8'b0;
    clk = 0;
    reset_n=0;
    
    #10 reset_n = 1;
    #260 reset_n = 0;
    #100 $finish;
end

endmodule
