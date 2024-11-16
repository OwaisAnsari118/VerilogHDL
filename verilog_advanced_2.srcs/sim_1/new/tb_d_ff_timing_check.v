`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 01:38:27 PM
// Design Name: 
// Module Name: tb_d_ff_timing_check
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


module tb_d_ff_timing_check();

    reg d_in;
    reg clk;
    reg reset_n;
    wire q_out;

d_ff_timing_check DUT(d_in,clk,reset_n,q_out);
//PIPO_reg DUT(d_in,clk,reset_n,q_out);
initial begin
    $monitor("$time=%0t,clk=%0d,d_in=%0d,q_out=%0d",$time,clk,d_in,q_out);
end

always #5 clk = ~clk;
always #10 d_in = d_in + 1;


initial begin
    d_in = 0;
    clk = 0;
    reset_n = 0;
    
    #20 reset_n = 1;
    
    #200 reset_n = 0;
    
    #50 $finish;
    
end
endmodule
