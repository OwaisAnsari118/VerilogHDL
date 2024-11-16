`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 02:53:25 PM
// Design Name: 
// Module Name: tb_fullcase
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


module tb_fullcase();

    reg [3:0] d_in;
    reg [1:0] sel_in;
    wire y_out;

full_case DUT(d_in,sel_in,y_out);

always #5 d_in = d_in + 1;
always #5 sel_in = sel_in + 1;

initial begin
    d_in = 4'b0000;
    sel_in = 2'b00;
end
endmodule
