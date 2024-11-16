`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2024 02:30:11 PM
// Design Name: 
// Module Name: parallel_connection
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


module parallel_connection(
    input a_in,
    input b_in,
    input c_in,
    input d_in,
    output y_out
    );
    
assign y_out = (a_in & b_in) | (c_in & d_in);
    
specify
    specparam delay1=5;
    specparam delay2=6;
    specparam delay3=7;
    specparam delay4=8;
    
    if(a_in)
        (a_in=>y_out) = delay1;
    if(~a_in)
        (a_in=>y_out) = delay2;
    if(b_in)
        (b_in=>y_out) = delay1;
    if(~b_in)
        (b_in=>y_out) = delay2;
    /*if(c_in)
        (c_in=>y_out) = delay3;
    if(~c_in)
        (c_in=>y_out) = delay4;
    if(d_in)
        (d_in=>y_out) = delay3;
    if(~d_in)
        (d_in=>y_out) = delay4;*/
endspecify
endmodule
