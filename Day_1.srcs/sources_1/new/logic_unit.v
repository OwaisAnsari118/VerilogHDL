`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 01:55:13 AM
// Design Name: 
// Module Name: logic_unit
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


module logic_unit(
    input [3:0] a_in,
    input [3:0] b_in,
    input [1:0] opcode,
    output reg [3:0] result_out
    );
    
    always@*
    begin
        case(opcode)
            2'b00:result_out = ~a_in;
            2'b01:result_out = a_in | b_in;
            2'b10:result_out = a_in & b_in;
            2'b11:result_out = a_in ^ b_in;
        endcase
     end
endmodule
