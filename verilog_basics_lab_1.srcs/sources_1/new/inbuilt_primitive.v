`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 02:04:15 PM
// Design Name: 
// Module Name: inbuilt_primitive
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

module inbuilt_primitive(
    input a_in,
    input b_in,
    input sel_in,
    output y_out
    );
    wire y1,y2,y3;
and U1 (y2,a_in,sel_in);
not U2 (y1,sel_in);
and U3 (y3,b_in,y1);
or U4 (y_out,y2,y3);
endmodule






