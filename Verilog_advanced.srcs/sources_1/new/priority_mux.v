`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 08:56:36 PM
// Design Name: 
// Module Name: priority_mux
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


module priority_mux(
    input a_in,
    input b_in,
    input c_in,
    input d_in,
    input [1:0]sel_in,
    output reg y_out
    );
    
always@*
begin
        if(sel_in == 2'b00)
               y_out = a_in;
        else if(sel_in == 2'b01)
               y_out = b_in;
        else if(sel_in == 2'b10)
               y_out = c_in;
        else
               y_out = d_in;
end
endmodule
