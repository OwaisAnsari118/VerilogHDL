`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 03:07:55 AM
// Design Name: 
// Module Name: tb_latch_8bit
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


module tb_latch_8bit();

reg [7:0]data_in;
reg en_in;
wire [7:0]data_out;

latch_8bit DUT(    
    .data_in(data_in),
    .data_out(data_out),
    .en_in(en_in)
    );

always #10 en_in = ~en_in;
always #20 data_in = ~data_in; 
initial
begin
    en_in=0;
    data_in=0;
end
endmodule
