`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2024 08:13:02 PM
// Design Name: 
// Module Name: tb_up_down_counter
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


module tb_up_down_counter();
reg clk;
reg reset_n;
reg up_counter;
reg down_counter;
wire [3:0] q_out;

up_down_counter DUT(clk,reset_n,up_counter,down_counter,q_out);


initial begin
    clk = 0;
    forever #10 clk = !clk;
end

initial begin
    reset_n = 0;
    up_counter = 0;
    down_counter = 0;
    
    #10 reset_n = 1;
    
    #10 up_counter = 1;
    #300 up_counter = 0;
    
    #100 down_counter = 1;  
    #200 down_counter = 0;
    
    #1000 $finish;
end
endmodule
