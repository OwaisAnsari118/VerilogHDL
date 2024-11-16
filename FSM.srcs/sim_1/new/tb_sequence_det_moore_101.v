`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:36:36 AM
// Design Name: 
// Module Name: tb_sequence_det_moore_101
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


module tb_sequence_det_moore_101();

reg d_in;
reg clk;
reg reset_n;
wire d_out;

sequence_dect_melay_10101_1bitoverlapping DUT(d_in,clk,reset_n,d_out);

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


/*initial
fork
    d_in = 0;
    #10 d_in = 1;
    #20 d_in = 0;
    #30 d_in = 1;
    #40 d_in = 0;
    #50 d_in = 1;
    #60 d_in = 0;
    #70 d_in = 1;
    #80 d_in = 0;
    #90 d_in = 1;
    #100 d_in = 0;
    #110 d_in = 0;
    #120 d_in = 1;
    #130 d_in = 0;
    #140 d_in = 1;
    #150 d_in = 0;
    #160 d_in = 1;
join*/