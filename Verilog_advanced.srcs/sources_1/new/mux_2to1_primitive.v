`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 10:03:28 PM
// Design Name: 
// Module Name: mux_2to1_primitive
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


primitive mux_2to1_primitive(y_out,a_in,b_in,sel_in);
                            output y_out;
                            input a_in,b_in,sel_in;

table
    //a_in b_in sel_in : y_out
        0   ?     0    :  0;
        1   ?     0    :  1; 
        ?   0     1    :  0; 
        ?   1     1    :  1; 
        0   0     x    :  0;
        1   1     x    :  1;
endtable
endprimitive
