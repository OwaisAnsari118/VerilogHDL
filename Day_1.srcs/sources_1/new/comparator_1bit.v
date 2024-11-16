`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 02:37:56 AM
// Design Name: 
// Module Name: comparator_1bit
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


module comparator_1bit(
    input a_in,
    input b_in,
    output g_out,
    output e_out,
    output l_out
    );
    
    
    assign g_out = a_in > b_in;
    assign e_out = a_in == b_in;
    assign l_out = a_in < b_in;
endmodule
