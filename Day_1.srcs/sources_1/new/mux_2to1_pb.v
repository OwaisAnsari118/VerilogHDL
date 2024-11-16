`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 02:28:16 AM
// Design Name: 
// Module Name: mux_2to1_pb
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


module mux_2to1_pb(
    input a_in,
    input b_in,
    input sel_in,
    output reg y_out
    );
    
always@(a_in,b_in,sel_in)
begin
    if(sel_in == 1'b1)
        y_out = b_in;
    else
        y_out = a_in;
end
endmodule
