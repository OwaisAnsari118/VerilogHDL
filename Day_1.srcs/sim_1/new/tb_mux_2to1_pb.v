`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 02:37:09 AM
// Design Name: 
// Module Name: tb_mux_2to1_pb
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


module tb_mux_2to1_pb();

reg a_in,b_in,sel_in;
wire y_out;

tb_mux_2to1_pb DUT(
    .a_in(a_in),
    .b_in(b_in),
    .sel_in(sel_in),
    .y_out(y_out)    
);
initial 
    begin
        a_in=0; b_in=0; sel_in=0;
    #10 a_in=0; b_in=0; sel_in=1;
    #10 a_in=0; b_in=1; sel_in=0;
    #10 a_in=0; b_in=1; sel_in=1;
    #10 a_in=1; b_in=0; sel_in=0;
    #10 a_in=1; b_in=0; sel_in=1;
    #10 a_in=1; b_in=1; sel_in=0;
    #10 a_in=1; b_in=1; sel_in=1;
    #10 $finish;
    end
endmodule
