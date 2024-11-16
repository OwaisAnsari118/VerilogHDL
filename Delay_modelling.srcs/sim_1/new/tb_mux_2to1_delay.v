`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 06:44:44 PM
// Design Name: 
// Module Name: tb_mux_2to1_delay
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


module tb_mux_2to1_delay();

reg a_in;
reg b_in;
reg sel_in;
wire y_out;
wire y1;
wire y2;
wire y3;

mux_2to1_delay DUT(a_in,b_in,sel_in,y_out);

always #10 a_in = ~a_in;
always #20 b_in = ~b_in;
always #100 sel_in = ~sel_in;
initial 
begin
    a_in = 0;
    b_in = 0;
    sel_in = 0;
    #500 $finish;
end
endmodule
