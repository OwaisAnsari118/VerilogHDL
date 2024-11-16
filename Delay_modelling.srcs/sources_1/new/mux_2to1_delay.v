`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 06:38:06 PM
// Design Name: 
// Module Name: mux_2to1_delay
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


module mux_2to1_delay(
    input a_in,
    input b_in,
    input sel_in,
    output y_out
    );
    wire y1,y2,y3;
    
    /*//distributed delay
    not #1 (y3,sel_in);
    and #2 U1(y1,b_in,sel_in);
    and #2 U2(y2,y3,a_in);
    or #2 U3(y_out,y1,y2);*/
    
    //lumped delay
    not n1(y3,sel_in);
    and U1(y1,b_in,sel_in);
    and U2(y2,y3,a_in);
    or #5 U3(y_out,y1,y2);
endmodule
