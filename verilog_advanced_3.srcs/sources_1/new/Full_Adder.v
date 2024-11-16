`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 10:50:39 AM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input a_in,
    input b_in,
    input c_in,
    output sum_out,
    output carry_out
    );
    
    Half_adder HA1 (a_in,b_in,y1,y2);
    Half_adder HA2 (y1,c_in,sum_out,y3);
    or(carry_out, y3, y2);
endmodule
