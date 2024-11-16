`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 09:30:18 PM
// Design Name: 
// Module Name: and_primitive
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


primitive and_primitive(y_out,a_in,b_in);
                        output y_out;
                        input a_in,b_in;
table
    0   0 : 0;
    0   1 : 0;
    1   0 : 0;
    1   1 : 1;
endtable

endprimitive
