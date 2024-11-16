`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 01:49:15 AM
// Design Name: 
// Module Name: tb_add_sub_ternary
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


module tb_add_sub_ternary();

reg a_in;
reg b_in;
wire result_out;
wire flag_out;
reg opcode;

add_sub_ternary DUT(
    .a_in(a_in),
    .b_in(b_in),
    .result_out(result_out),
    .flag_out(flag_out),
    .opcode(opcode)
    );


initial 
    begin
        a_in=0; b_in=0; opcode=0;
    #10 a_in=0; b_in=1; opcode=0;
    #10 a_in=1; b_in=0; opcode=0;
    #10 a_in=1; b_in=1; opcode=0;
    #10 a_in=0; b_in=0; opcode=1;
    #10 a_in=0; b_in=1; opcode=1;
    #10 a_in=1; b_in=0; opcode=1;
    #10 a_in=1; b_in=1; opcode=1;
    #10 $finish;
    end    
endmodule
