`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 02:52:39 PM
// Design Name: 
// Module Name: tb_seq_generator
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


module tb_seq_generator();

reg clk;
reg reset_n;
wire [3:0]q_out;

seq_generator DUT (         
            .clk(clk),
            .reset_n(reset_n),
            .q_out(q_out)
            );
    always #5 clk = ~clk;
    initial
    begin
        clk = 0;
        reset_n = 0;
        #50
        reset_n = 1;
        #1000 $finish;
    end
endmodule
