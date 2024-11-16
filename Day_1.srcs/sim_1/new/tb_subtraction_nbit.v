`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/04/2024 01:32:45 AM
// Design Name: 
// Module Name: tb_subtraction_nbit
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


module tb_subtraction_nbit #(parameter DATA_WIDTH = 4);

reg [DATA_WIDTH-1:0]a_in;
reg [DATA_WIDTH-1:0]b_in;
wire [DATA_WIDTH-1:0]diff_out;
wire borrow_out;

subtraction_nbit #(.DATA_WIDTH(DATA_WIDTH)) DUT(
    .a_in(a_in),
    .b_in(b_in),
    .diff_out(diff_out),
    .borrow_out(borrow_out)    
);


initial
    begin
        a_in=4'b0000; b_in=4'b0000;
    #10 a_in=4'b0100; b_in=4'b0001;
    #10 a_in=4'b0011; b_in=4'b0101;
    #10 $finish();
    end
endmodule
