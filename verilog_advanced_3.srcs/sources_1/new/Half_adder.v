`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 10:48:59 AM
// Design Name: 
// Module Name: Half_adder
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


module Half_adder(
    input a_in,
    input b_in,
    output sum_out,
    output carry_out
    );
    
    xor(sum_out,a_in,b_in);
    and(carry_out,a_in,b_in);
endmodule
