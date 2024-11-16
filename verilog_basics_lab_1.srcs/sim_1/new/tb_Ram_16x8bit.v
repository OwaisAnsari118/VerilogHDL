`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 02:31:11 PM
// Design Name: 
// Module Name: tb_Ram_16x8bit
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


module tb_Ram_16x8bit();
reg [7:0] data_in;
reg [3:0] address_in;
reg cs;
reg write_en;
reg out_en;
reg clk;
wire [7:0] data_out;

RAM_16x8bit DUT (data_in,address_in,cs,write_en,out_en,clk,data_out);


always #5 clk = !clk;
always #10 address_in = address_in + 1;
always #400 cs = !cs;
always #160 write_en = !write_en;
always #160 out_en = !out_en;
always #10 data_in = data_in + 1;

initial
begin
    clk = 0;
    data_in = 0;
    address_in = 0;
    write_en = 1;
    cs = 1;
    out_en = 0;
    data_in = 0;
    
    #500 $finish;
end
endmodule
