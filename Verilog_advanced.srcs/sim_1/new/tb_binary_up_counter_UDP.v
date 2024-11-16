`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2024 02:05:38 PM
// Design Name: 
// Module Name: tb_binary_up_counter_UDP
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


module tb_binary_up_counter_UDP();
wire [1:0]q_out;
reg clk;
reg reset_n;

binary_up_counter_UDP_0 U1(q_out, clk, reset_n);
binary_up_counter_UDP_1 U2(q_out, clk, reset_n);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end
initial
begin
    reset_n = 0;
    
    #10 reset_n = 1;
    #200 reset_n = 0;
    #100 $finish;
end
endmodule
