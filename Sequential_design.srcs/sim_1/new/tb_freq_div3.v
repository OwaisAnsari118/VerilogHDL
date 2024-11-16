`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 02:04:45 AM
// Design Name: 
// Module Name: tb_freq_div3
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


module tb_freq_div3();
reg clk;
reg reset_n;
wire q_out;

frequency_div3 DUT(
    .clk(clk),
    .reset_n(reset_n),
    .q_out(q_out)
    );
    always #10 clk = ~clk;
    //always #10 reset_n = ~reset_n;
    
    initial
    begin
        clk = 0;
        reset_n = 0;
        #50
        reset_n = 1;
        #500 $finish;
    end
endmodule
