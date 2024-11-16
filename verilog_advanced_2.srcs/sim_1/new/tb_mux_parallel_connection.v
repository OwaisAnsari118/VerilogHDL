`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 03:15:51 PM
// Design Name: 
// Module Name: tb_mux_parallel_connection
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


module tb_mux_parallel_connection();
reg a_in;
reg b_in;
reg sel_in;
wire y_out;

mux_parallel_connection DUT(a_in,b_in,sel_in,y_out);

always #5 a_in = ~a_in;
always #10 b_in = ~b_in;
always #50 sel_in = ~sel_in;
initial begin
    a_in = 0;
    b_in = 0;
    sel_in = 0;
    #200 $finish;
end
endmodule
