`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 03:08:56 PM
// Design Name: 
// Module Name: mux_parallel_connection
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


module mux_parallel_connection(
    input a_in,
    input b_in,
    input sel_in,
    output reg y_out
    );
    
always@(*)
begin
    case(sel_in)
        1'b0 : y_out = a_in;
        1'b1 : y_out = b_in;
    endcase
end

specify
    specparam delay1 = 2;
    specparam delay2 = 3;
    specparam delay3 = 1;
    specparam delay4 = 4;
    
    if(a_in)
        (a_in=>y_out) = delay1;
    if(~a_in)
        (a_in=>y_out) = delay2;
    if(b_in)
        (b_in=>y_out) = delay3;
    if(~b_in)
        (b_in=>y_out) = delay1;
    if(sel_in)
        (sel_in=>y_out) = delay4;
    if(~sel_in)
        (sel_in=>y_out) = delay4;
        
endspecify
endmodule
