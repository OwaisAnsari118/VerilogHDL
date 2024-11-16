`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 03:05:00 PM
// Design Name: 
// Module Name: tb_top_design_mux
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

`define N 8
module tb_top_design_mux();

reg [`N-1:0] a_in;
reg [`N-1:0] b_in;
wire [`N-1:0] y_out;
reg sel;

top_design_mux DUT(a_in,b_in,y_out,sel);

always #10 sel = ~sel;
always #10 a_in = a_in + 1;
always #5 b_in = b_in + 1;

initial 
begin
    a_in = 0;
    b_in = 0;
    sel =  0;
end


endmodule
