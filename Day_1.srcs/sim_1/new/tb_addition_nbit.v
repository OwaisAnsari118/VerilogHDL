`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/03/2024 02:43:03 PM
// Design Name: 
// Module Name: tb_addition_nbit
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


module tb_addition_nbit #(parameter DATA_WIDTH = 4);

reg [DATA_WIDTH-1:0]a_in;
reg [DATA_WIDTH-1:0]b_in;
wire [DATA_WIDTH-1:0]sum_out;
wire carry_out;

addition_nbit #(.DATA_WIDTH(DATA_WIDTH)) DUT(
    .a_in(a_in),
    .b_in(b_in),
    .sum_out(sum_out),
    .carry_out(carry_out)    
);
always #10 a_in = a_in + 1;
always #10 b_in = b_in + 1;

initial
    begin
    a_in=4'b0000; b_in=4'b0000;
    #500 $finish();
    end
endmodule
