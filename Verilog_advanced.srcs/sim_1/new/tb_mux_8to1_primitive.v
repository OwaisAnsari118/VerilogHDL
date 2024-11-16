`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 03:44:40 PM
// Design Name: 
// Module Name: tb_mux_8to1_primitive
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
module tb_mux_8to1_primitive();

reg [`N-1:0]d_in;
reg [`N-6:0]sel_in;
wire y_out;

mux_8to1_primitive DUT(d_in,sel_in,y_out);

always #10 d_in = $random;
always #10 sel_in = sel_in + 1;
initial
begin
    d_in = 8'b0;
    sel_in = 3'b0;
    #500 $finish;
end

endmodule
