`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 11:02:26 AM
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder();

reg a_in;
reg b_in;
reg c_in;
wire sum_out;
wire carry_out;

Full_Adder DUT(a_in,b_in,c_in,sum_out,carry_out);

always #8 a_in = ~a_in;
always #4 b_in = ~b_in;
always #2 c_in = ~c_in;

initial begin
    $dumpfile("Full_Adder.vcd");
    $dumpvars(0,tb_full_adder);
    a_in = 0;
    b_in = 0;
    c_in = 0;
    #100 $dumpoff;
    #200 $dumpon; 

    #100 $finish;
end

endmodule
