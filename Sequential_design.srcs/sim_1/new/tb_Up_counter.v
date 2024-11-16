`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 11:20:04 PM
// Design Name: 
// Module Name: tb_Up_counter
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


module tb_Up_counter();

reg clk;
reg reset_n;
wire q_out;

Up_counter DUT(
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
        #200 $finish;
    end

endmodule
