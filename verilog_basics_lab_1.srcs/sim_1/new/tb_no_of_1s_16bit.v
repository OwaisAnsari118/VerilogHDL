`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 02:56:46 AM
// Design Name: 
// Module Name: tb_no_of_1s_16bit
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


module tb_no_of_1s_16bit();
reg [15:0]d_in;
reg clk;
reg reset_n;
wire [4:0]d_out;

no_of_1s_16bit DUT(d_in,clk,reset_n,d_out);

always #10 clk = ~clk;
always #20 d_in = d_in + 1; 
initial
begin
    d_in = 16'b0;
    clk = 0;
    reset_n = 0;
    #50 reset_n = 1;
    #500 $finish;  
end
endmodule
