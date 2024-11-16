`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 01:44:16 PM
// Design Name: 
// Module Name: add_sub_RS
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


module add_sub_RS(
    input a_in,
    input b_in,
    input opcode,
    output reg sum_out,
    output reg flag_out
    );
    
    reg inter_b_in;
    //assign {flag_out,sum_out} = a_in + inter_b_in + opcode;
always@*
    begin
        {flag_out,sum_out} = a_in + inter_b_in + opcode;
    end 
always@*
    begin
        if(opcode==0)
            inter_b_in = b_in;
        else
            inter_b_in = ~b_in;
    end
endmodule
