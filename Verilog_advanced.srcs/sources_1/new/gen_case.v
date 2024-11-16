`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 06:21:34 PM
// Design Name: 
// Module Name: gen_case
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


module gen_case(
    input a_in,
    input b_in,
    output y_out
    );
    
parameter GATE_TYPE = 1; //1 for nand

generate   
    case(GATE_TYPE)
    1'b0: assign y_out = ~(a_in | b_in);
    1'b1: assign y_out = ~(a_in & b_in);
    endcase
endgenerate
endmodule
