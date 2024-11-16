`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 08:20:59 PM
// Design Name: 
// Module Name: tb_mux_4to1
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


module tb_mux_4to1();

reg a_in;
reg b_in;
reg c_in;
reg d_in;
reg [1:0]sel_in;
wire y_out;

mux_4to1 DUT(a_in,b_in,c_in,d_in,sel_in,y_out);

always #8 a_in = ~a_in;
always #8 b_in = ~b_in;
always #8 c_in = ~c_in;
always #8 d_in = ~d_in;
always #16 sel_in = sel_in +1;

initial 
begin
    a_in = 0;
    b_in = 1;
    c_in = 0;
    d_in = 1;
    sel_in = 0;
    #500 $finish;
end
endmodule
