`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 07:24:53 PM
// Design Name: 
// Module Name: tb_tri_lumped
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


module tb_tri_lumped();
reg [7:0]data_in;
reg en_in;
wire [7:0] data_out;

tri_state_lumped DUT (data_in,en_in,data_out);

always #10 data_in = $random;
always #40 en_in = ~en_in;
initial
begin
    en_in = 0;
    data_in = 8'b0;
    #100 $finish;
end
endmodule
