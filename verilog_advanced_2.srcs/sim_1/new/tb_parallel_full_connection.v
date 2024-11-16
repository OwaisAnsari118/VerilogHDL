`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 08:14:41 AM
// Design Name: 
// Module Name: tb_parallel_full_connection
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


module tb_parallel_full_connection();
    reg a_in;
    reg b_in;
    reg c_in;
    reg d_in;
    wire y_out;

parallel_full_connection DUT(a_in,b_in,c_in,d_in,y_out);

always #8 a_in = ~a_in;
always #4 b_in = ~b_in;
always #2 c_in = ~c_in;
always #1 d_in = ~d_in;
initial begin
    a_in = 0;
    b_in = 0;
    c_in = 0;
    d_in = 0;
    #100 $finish;
end

endmodule
