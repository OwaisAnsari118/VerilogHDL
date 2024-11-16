`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 02:24:56 PM
// Design Name: 
// Module Name: addition_nbit
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


module addition_nbit #(parameter DATA_WIDTH = 4) (

    input [DATA_WIDTH-1:0] a_in,
    input [DATA_WIDTH-1:0] b_in,
    output [DATA_WIDTH-1:0] sum_out,
    output carry_out
    );
    
    assign {carry_out, sum_out} = a_in + b_in;
endmodule
