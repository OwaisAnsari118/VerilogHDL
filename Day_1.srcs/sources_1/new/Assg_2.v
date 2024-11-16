`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2024 06:20:44 PM
// Design Name: 
// Module Name: AND
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


module AND(
    input a_in,
    input b_in,
    input c_in,
    input d_in,
    input y_out,
    inout a1,a2
    );
    
    assign a1 = a_in && b_in;
    assign a2 = a1 && c_in;
    assign y_out = a2 && d_in;
endmodule
