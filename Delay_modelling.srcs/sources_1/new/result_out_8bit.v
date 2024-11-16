`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 08:54:06 PM
// Design Name: 
// Module Name: result_out_8bit
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
`include "common_defines.vh"


module result_out_8bit(
    input [`DATA_WIDTH-1:0]a_in,
    input [`DATA_WIDTH-1:0]b_in,
    input [`DATA_WIDTH-7:0]opcode,
    output reg [`DATA_WIDTH-1:0]result_out
    );
    
always@*
begin
    case (opcode)
        `NOT: #5 result_out = ~a_in;
        `XOR: #5 result_out = a_in ^ b_in;
        `AND: #5 result_out = a_in & b_in;
        `OR: #5 result_out = a_in | b_in;
    endcase   
end
endmodule





