`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 08:08:24 AM
// Design Name: 
// Module Name: parallel_full_connection
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


module parallel_full_connection(
    input a_in,
    input b_in,
    input c_in,
    input d_in,
    output y_out
    );
    
    assign y_out = (a_in & b_in) | (c_in & d_in);
    
specify
    if({a_in,b_in}==2'b10)
        (a_in,b_in *> y_out) = 3;
    if({a_in,b_in} != 2'b10)
        (a_in,b_in *> y_out) = 2;
        
    if({c_in,d_in}==2'b10)
        (c_in,d_in *> y_out) = 4;
    if({c_in,d_in} != 2'b10)
        (c_in,d_in *> y_out) = 3;
        
    specparam delay1=1;
    specparam delay2=2;
    specparam delay3=3;
    
    
    if(a_in)
        (a_in=>y_out) = delay2;
    if(~a_in)
        (a_in=>y_out) = delay1;
    /*if(b_in)
        (b_in=>y_out) = delay3;
    if(~b_in)
        (b_in=>y_out) = delay2;
    if(c_in)
        (c_in=>y_out) = delay2;
    if(~c_in)
        (c_in=>y_out) = delay1;
    if(d_in)
        (d_in=>y_out) = delay2;
    if(~d_in)
        (d_in=>y_out) = delay1;*/
endspecify
endmodule
