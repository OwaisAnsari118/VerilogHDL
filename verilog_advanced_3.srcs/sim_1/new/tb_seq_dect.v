`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 04:45:47 PM
// Design Name: 
// Module Name: tb_seq_dect
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


module tb_seq_dect();

reg d_in;
reg clk;
reg reset_n;
wire d_out;

tb_seq_dect DUT(d_in,clk,reset_n,d_out);

initial 
begin
    clk = 0;
    forever #5 clk = ~clk;
end

always #5 d_in = $random;


initial 
begin
    reset_n = 0;
    d_in = 0;
    
    #10 reset_n = 1;
    #5000 $finish;
end
endmodule