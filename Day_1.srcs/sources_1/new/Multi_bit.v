`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 01:07:52 PM
// Design Name: 
// Module Name: Multi_bit
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


module Multi_bit #(parameter DATA_WIDTH=8)(
    input [DATA_WIDTH-1:0] a_in,
    input [DATA_WIDTH-1:0] b_in,
    output [DATA_WIDTH-1:0] y_out
    );
    assign y_out = a_in & b_in;
endmodule
