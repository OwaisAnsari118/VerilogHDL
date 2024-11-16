`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 10:12:20 PM
// Design Name: 
// Module Name: tb_mux_2to1_primitive
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


module tb_mux_2to1_primitive();

wire y_out;
reg a_in,b_in,sel_in;

mux_2to1_primitive DUT(y_out,a_in,b_in,sel_in);

always #10 a_in = ~a_in;
always #5  b_in = ~b_in;
always #20 sel_in = ~sel_in;
initial
begin
    a_in = 0;
    b_in = 0;
    sel_in = 0;
    #100 $finish;
end
endmodule
