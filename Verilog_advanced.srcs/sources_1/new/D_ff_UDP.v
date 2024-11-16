`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 07:18:45 PM
// Design Name: 
// Module Name: D_ff_UDP
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


primitive D_ff_UDP(q_out,reset_in,clk,d_in);

input d_in;
input reset_in;
input clk;
output reg q_out;

table
    //reset_in clk   d_in : q_out : q_out+;
        0       ?     ?   :   ?   :   0;
        1      (01)   0   :   ?   :    0;
        1      (01)   1   :   ?   :    1;
        1      (0?)   1   :   1   :    1;
        1      (0?)   0   :   0   :    0;
        
        1      (?0)   0   :   ?   :    -;
        
        1      ?     (??)   :   ?  :     -;
endtable


endprimitive
