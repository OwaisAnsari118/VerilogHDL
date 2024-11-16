`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 01:21:56 AM
// Design Name: 
// Module Name: tb_frequency_div2
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


module tb_frequency_div2();
reg clk;
reg reset_n;
wire q_out;

frequency_div2 DUT(
    .clk(clk),
    .reset_n(reset_n),
    .q_out(q_out)
    );
    always #10 clk = ~clk;
    initial
    begin
        clk = 0;
        reset_n = 0;
        #50
        reset_n = 1;
        #500 $finish;
    end
    
endmodule
