`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 08:38:20 PM
// Design Name: 
// Module Name: tb_D_ff_generate
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


module tb_D_ff_generate();
reg d_in;
reg clk;
reg reset_n;
wire q_out;


D_ff_generate DUT(d_in,clk,reset_n,q_out);

always #5 clk = ~clk;
always #2 d_in = ~d_in;

initial
begin
    clk = 0;
    d_in = 0;
    reset_n = 0;
    
    #10 reset_n = 1;
    #200 reset_n = 0;
    #100 $finish;
end
endmodule
