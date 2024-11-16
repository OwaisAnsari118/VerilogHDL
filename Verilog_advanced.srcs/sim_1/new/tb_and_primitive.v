`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 09:36:27 PM
// Design Name: 
// Module Name: tb_and_primitive
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


module tb_and_primitive();

reg a_in;
reg b_in;
wire y_out;

and_primitive DUT(y_out,a_in,b_in);

always #10 a_in = ~a_in;
always #5 b_in = ~b_in;

initial
begin
    a_in =0;
    b_in =0;
    #100 $finish;
end
endmodule
