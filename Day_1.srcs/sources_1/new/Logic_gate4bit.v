`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 01:24:35 PM
// Design Name: 
// Module Name: Logic_gate4bit
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


module Logic_gate4bit #(parameter DATA_WIDTH=4)(
        input [DATA_WIDTH-1:0] a_in,
        input [DATA_WIDTH-1:0] b_in,
        output [DATA_WIDTH-1:0] NOT_out,AND_out,NAND_out,OR_out,NOR_out,XOR_out,XNOR_out
    );
    assign NOT_out = ~a_in;
    assign AND_out = a_in & b_in;
    assign NAND_out = ~(a_in & b_in);
    assign OR_out = a_in | b_in;
    assign NOR_out = ~(a_in | b_in);
    assign XOR_out = a_in ^ b_in;
    assign XNOR_out = a_in ~^ b_in;   
    
endmodule
