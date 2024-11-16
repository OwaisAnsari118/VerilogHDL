`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 02:18:03 PM
// Design Name: 
// Module Name: Half_ader
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


module Half_ader(
    input a_in,
    input b_in,
    output sum,
    output carry 
    );
    
    xor u1(sum,a_in,b_in);
    and u2(carry,a_in,b_in); 
endmodule
