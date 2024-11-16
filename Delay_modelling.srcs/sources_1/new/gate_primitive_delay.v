`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 06:18:26 PM
// Design Name: 
// Module Name: gate_primitive_delay
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


module gate_primitive_delay(
    input a_in,
    input b_in,
    input c_in,
    input d_in,
    output y_out,
    inout y1,
    inout y2);
    
    
    and #3 U1(y1,a_in,b_in);
    and #4 U2(y2,c_in,d_in);
    or #5 U3 (y_out,y1,y2);
endmodule
