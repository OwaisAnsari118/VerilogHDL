`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 01:14:42 PM
// Design Name: 
// Module Name: add_sub_1bit
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


module add_sub_1bit(
    input a_in,
    input b_in,
    input opcode,
    output reg sum_out,
    output reg flag_out
    );
    
always@*
    begin
    if(opcode)        
        {flag_out,sum_out} = a_in - b_in;  
    else
        {flag_out,sum_out} = a_in + b_in;
    end
endmodule
