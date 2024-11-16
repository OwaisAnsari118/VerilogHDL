`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 05:24:09 PM
// Design Name: 
// Module Name: tb_design_gen_if
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


module tb_design_gen_if();

reg a_in;
reg b_in;
wire y_out;

design_gen_if DUT(a_in,b_in,y_out);

always #2 a_in = a_in + 1;
always #1 b_in = ~b_in;
initial
begin   
    a_in = 0;
    b_in = 0;
    #100 $finish;
end
endmodule
