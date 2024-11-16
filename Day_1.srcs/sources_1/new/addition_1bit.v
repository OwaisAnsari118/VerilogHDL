`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 01:56:35 PM
// Design Name: 
// Module Name: addition_1bit
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


module addition_1bit(
    input a_in,
    input b_in,
    output sum_out,
    output carry_out
    );
    //wire [1:0] temp_sum;
    
/*    assign temp_sum = a_in + b_in;
    assign sum_out = temp_sum[0];
    assign carry_out = temp_sum[1];*/
    
    assign {carry_out, sum_out} = a_in + b_in;
    
endmodule