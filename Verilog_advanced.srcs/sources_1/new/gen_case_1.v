`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 06:29:23 PM
// Design Name: 
// Module Name: gen_case_1
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

module gen_case_1(
    input a_in,
    input b_in,
    input c_in,
    input d_in,
    output y_out
    );

parameter PRIORITY_LOGIC = 1; 

generate   
    case(PRIORITY_LOGIC)
    1'b0: assign y_out = (a_in & b_in) & (c_in & d_in);
    1'b1: assign y_out = c_in & d_in & b_in & a_in;
    endcase
endgenerate

endmodule
