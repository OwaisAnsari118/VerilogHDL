`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 02:04:10 AM
// Design Name: 
// Module Name: tb_ring_counter_decode
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


module tb_ring_counter_decode();
reg clk;
reg reset_n;
wire [3:0]q_out;

ring_counter_decoder DUT(
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
        #500 $finish;
    end
endmodule
