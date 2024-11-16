`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 02:05:39 PM
// Design Name: 
// Module Name: fulladder_8bit
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


module fulladder_8bit(
    input [7:0] a_in,
    input [7:0] b_in,
    input carry_in,
    output [7:0] sum_out,
    output carry_out
    );
    wire [6:0] c_in;
fulladder_fun U1(a_in[0],b_in[0],carry_in,sum_out[0],c_in[0]);
fulladder_fun U2(a_in[1],b_in[1],c_in[0],sum_out[1],c_in[1]);
fulladder_fun U3(a_in[2],b_in[2],c_in[1],sum_out[2],c_in[2]);
fulladder_fun U4(a_in[3],b_in[3],c_in[2],sum_out[3],c_in[3]);
fulladder_fun U5(a_in[4],b_in[4],c_in[3],sum_out[4],c_in[4]);
fulladder_fun U6(a_in[5],b_in[5],c_in[4],sum_out[5],c_in[5]);
fulladder_fun U7(a_in[6],b_in[6],c_in[5],sum_out[6],c_in[6]);
fulladder_fun U8(a_in[7],b_in[7],c_in[6],sum_out[7],carry_out);
endmodule
