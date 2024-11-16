`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 02:18:03 PM
// Design Name: 
// Module Name: tb_top_design_generate
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


module tb_top_design_generate();

reg  [7:0]a_in;
reg  [7:0]b_in;
wire [7:0]y_out;

top_design_generate DUT (a_in,b_in,y_out);

always #5 a_in = a_in + 1;
always #10 b_in = b_in + 1;

initial
begin
    a_in = 8'b0000_0000;
    b_in = 8'b0000_0000;
    #500 $finish;
end


endmodule
