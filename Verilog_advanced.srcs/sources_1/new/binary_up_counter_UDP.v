`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2024 01:39:34 PM
// Design Name: 
// Module Name: binary_up_counter_UDP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: A binary up counter using a user-defined primitive (UDP).
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

primitive binary_up_counter_UDP_0(q_out, clk, reset_n);
    output reg q_out;
    input clk;
    input reset_n;

table 
    //clk  reset_n :  q_out[1] : next state[1]
       ?    0      :   ?   :  0;    
       0    ?      :   ?   :  0;    
       1    1      :   0   :  0;    //0
       1    1      :   0   :  1;    //1
       1    1      :   1   :  1;    //2
       1    1      :   1   :  0;    //3
endtable
endprimitive
primitive binary_up_counter_UDP_1(q_out, clk, reset_n);
    output reg q_out;
    input clk;
    input reset_n;

table 
    // clk  reset_n :  q_out[0] : next state[1]
       ?    0      :   ?   :  0;    
       0    ?      :   ?   :  0;    
       1    1      :   0   :  1;    //0
       1    1      :   1   :  0;    //1
       1    1      :   0   :  1;    //2
       1    1      :   1   :  0;    //3 
endtable
endprimitive