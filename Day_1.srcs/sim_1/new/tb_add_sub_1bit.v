`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 01:29:27 PM
// Design Name: 
// Module Name: tb_add_sub_1bit
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


module tb_add_sub_1bit();

reg a_in;
reg b_in;
reg opcode;
wire sum_out;
wire flag_out;

add_sub_1bit DUT (
        .a_in(a_in),
        .b_in(b_in),
        .opcode(opcode),
        .sum_out(sum_out),
        .flag_out(flag_out));

always #10 a_in = ~a_in;
always #20 b_in = ~b_in;
always #100 opcode = ~opcode;
 
initial
    begin
    opcode = 1'b0;
    a_in = 1'b0;
    b_in = 1'b0;
    #500 $finish;
   
    end
endmodule
