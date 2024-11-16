`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 01:46:11 AM
// Design Name: 
// Module Name: add_sub_ternary
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


module add_sub_ternary(
    input a_in,
    input b_in,
    output result_out,
    output flag_out,
    input opcode
    );
    
    assign {flag_out,result_out} = (opcode)? a_in + b_in : a_in - b_in;
    
endmodule
