`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 06:21:09 PM
// Design Name: 
// Module Name: tb_gate_primitive_delay
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


module tb_gate_primitive_delay();

reg a_in;
reg b_in;
reg c_in;
reg d_in;
wire y_out;
wire y1;
wire y2;

gate_primitive_delay DUT(a_in,b_in,c_in,d_in,y_out,y1,y2);

always #10 a_in = ~a_in;
always #20 b_in = ~b_in;
always #30 c_in = ~c_in;
always #40 d_in = ~d_in;
initial 
begin
    a_in = 0;
    b_in = 0;
    c_in = 0;
    d_in = 0;
    #100 $finish;
end
endmodule
