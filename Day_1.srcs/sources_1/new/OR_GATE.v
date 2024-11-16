`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2024 02:36:10 PM
// Design Name: 
// Module Name: OR_GATE
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


module OR_GATE(
    input a_in,
    input b_in,
    output y_and_out,y_or_out,y_not_out
    );
    
    assign y_and_out = a_in && b_in;
    assign y_or_out = a_in || b_in;
    assign y_not_out = !a_in;
    
endmodule
