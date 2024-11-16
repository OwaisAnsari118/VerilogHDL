`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 03:31:27 PM
// Design Name: 
// Module Name: mux_8to1_primitive
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
module mux_8to1_primitive(
    input [`N-1:0]d_in,
    input [`N-6:0]sel_in,
    output y_out
    );
wire y1,y2,y3,y4,y5,y6;
    
mux_2to1_primitive U1 (y1,d_in[0],d_in[1],sel_in[0]);
mux_2to1_primitive U2 (y2,d_in[2],d_in[3],sel_in[0]);
mux_2to1_primitive U3 (y3,d_in[4],d_in[5],sel_in[0]);
mux_2to1_primitive U4 (y4,d_in[6],d_in[7],sel_in[0]);
mux_2to1_primitive U5 (y5,y1,y2,sel_in[1]);
mux_2to1_primitive U6 (y6,y3,y4,sel_in[1]);
mux_2to1_primitive U7 (y_out,y5,y6,sel_in[2]);
endmodule
