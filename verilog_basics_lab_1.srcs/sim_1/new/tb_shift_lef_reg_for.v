`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 02:22:01 AM
// Design Name: 
// Module Name: tb_shift_lef_reg_for
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


module tb_shift_lef_reg_for();
reg [7:0]d_in;
reg load;
reg clk;
reg reset_n;
wire [7:0]d_out;

shift_lef_reg_for DUT(d_in,clk,reset_n,d_out);

initial
begin
end
endmodule
