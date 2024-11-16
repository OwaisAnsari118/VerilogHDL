`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 04:35:46 PM
// Design Name: 
// Module Name: n_bit_full_adder
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

`define N 8
module n_bit_full_adder(
    input [`N-1:0]a_in,
    input [`N-1:0]b_in,
    input carry_in,
    output [`N-1:0]sum_out,
    output carry_out 
    );

wire [`N-1:0]c;
    
genvar i;
generate
    full_adder U1(a_in[0],b_in[0],carry_in,sum_out[0],c[0]);
    for(i=1; i<`N; i=i+1)
    begin 
        full_adder U2(a_in[i],b_in[i],c[i-1],sum_out[i],c[i]);
    end
    assign carry_out = c[7]; 
endgenerate
   
endmodule
