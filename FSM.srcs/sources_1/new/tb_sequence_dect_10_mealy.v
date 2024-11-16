`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:04:40 AM
// Design Name: 
// Module Name: tb_sequence_dect_10_mealy
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


module tb_sequence_dect_10_mealy();

reg d_in;
reg clk;
reg reset_n;
wire d_out;

sequence_dect_10_melay DUT(d_in,clk,reset_n,d_out);

initial 
begin
    clk = 0;
    forever #5 clk = ~clk;
end

always #10 d_in = $random;

initial 
begin
    reset_n = 0;
    d_in = 0;
    
    #10 reset_n = 1;
    #500 $finish;
end
endmodule
