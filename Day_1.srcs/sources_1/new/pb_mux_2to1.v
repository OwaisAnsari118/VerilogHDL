`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 02:45:27 AM
// Design Name: 
// Module Name: pb_mux_2to1
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


module pb_mux_2to1(
    input a_in,
    input b_in,
    input sel_in,
    output reg y_out
    );
    
//always@(a_in,b_in,sel_in)
always@(*)
begin
    if(sel_in)
        y_out=b_in;
    else
        y_out=a_in;
end
endmodule
