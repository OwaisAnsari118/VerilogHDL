`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 09:20:30 AM
// Design Name: 
// Module Name: tb_edge_sensitive
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


module tb_edge_sensitive();

    reg d_in;
    reg clk;
    reg reset_n;
    wire q_out;

edge_sensitive DUT(d_in,clk,reset_n,q_out);

always #5 clk = ~clk;
always #10 d_in = $random;

initial begin
    clk = 0;
    d_in = 0;
    reset_n = 0;
    
    #10 reset_n = 1;
    #200 reset_n = 0;
    #20 $finish;
end
endmodule
