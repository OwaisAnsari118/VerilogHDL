`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 05:42:15 PM
// Design Name: 
// Module Name: D_Latch
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


primitive D_Latch(q_out,d_in,enable_in);
    input d_in;
    input enable_in;
    output reg q_out;

table
//en_in  d_in q_out q_out+
    1     0  :  ? : 0;
    1     1  :  ? : 1;
    0     ?  :  ? : -;
endtable
endprimitive

primitive D_Latch_active_low(q_out,d_in,enable_in);
    input d_in;
    input enable_in;
    output reg q_out;

table
//en_in  d_in q_out q_out+
    0     0  :  ? : 0;
    0     1  :  ? : 1;
    1     ?  :  ? : -;
endtable
endprimitive