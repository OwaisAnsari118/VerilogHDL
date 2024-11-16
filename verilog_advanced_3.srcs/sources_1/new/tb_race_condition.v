`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 02:59:51 PM
// Design Name: 
// Module Name: tb_race_condition
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


module tb_race_condition();

    reg clk;
    reg reset_p;
    wire q1_out;
    wire q2_out;

race_condition DUT(clk,reset_p,q1_out,q2_out);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset_p = 1;
    
    #10 reset_p = 0;
    #100 reset_p = 1;
    #200 $finish;
end
endmodule
