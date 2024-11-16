`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 05:51:46 PM
// Design Name: 
// Module Name: tb_mux_wait
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


module tb_mux_wait();

    reg a_in;
    reg b_in;
    reg sel_in;
    wire y_out;

mux_wait DUT(a_in,b_in,sel_in,y_out);

always #10 a_in = ~a_in;
always #5 b_in = ~b_in;
always #100 sel_in = ~sel_in;

initial begin
    a_in = 0;
    b_in = 0;
    sel_in = 0;
    #500 $finish;
end
endmodule
