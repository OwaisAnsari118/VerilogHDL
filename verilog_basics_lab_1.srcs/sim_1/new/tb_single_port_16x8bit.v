`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 03:07:36 PM
// Design Name: 
// Module Name: tb_single_port_16x8bit
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


module tb_single_port_16x8bit();

wire [7:0] data_io;
reg [3:0] address_in;
reg cs;
reg write_en;
reg out_en;
reg clk;

reg [7:0] temp_data;

single_port_16x8bit DUT (data_io,address_in,cs,write_en,out_en,clk);

assign data_io = (!out_en && write_en && cs) ? temp_data : 8'bzzzz_zzzz;
always #5 clk = !clk;
always #10 address_in = address_in + 1;
always #160 write_en = !write_en;
always #400 cs = !cs;
always #160 out_en = !out_en;
always #10 temp_data = $random();

initial
begin
    temp_data = 0;
    clk = 0;
    address_in = 0;
    write_en = 1;
    cs = 1;
    out_en = 0;
    
    #1000 $finish();
end
endmodule
