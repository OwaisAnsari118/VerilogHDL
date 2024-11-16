`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 04:26:26 PM
// Design Name: 
// Module Name: tb_dual_port_16x8bit
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


module tb_dual_port_16x8bit();
wire [7:0] data_io_0;
wire [7:0] data_io_1;
reg [3:0] address_in_0;
reg [3:0] address_in_1;
reg cs_0;
reg cs_1;
reg write_en_1;
reg write_en_0;
reg out_en_0;
reg out_en_1;
reg clk;

reg [7:0] temp_data_0;
reg [7:0] temp_data_1;

Dual_port_16x8bit DUT (data_io_0,
            address_in_0,
            cs_0,
            write_en_0,
            out_en_0,
            data_io_1,
            address_in_1,
            cs_1,
            write_en_1,
            out_en_1,
            clk);

reg [7:0] temp_data_0;
reg [7:0] temp_data_1;

assign data_io_0 = (!out_en_0 && write_en_0 && cs_0) ? temp_data_0 : 8'bzzzz_zzzz;
assign data_io_1 = (!out_en_1 && write_en_1 && cs_1) ? temp_data_1 : 8'bzzzz_zzzz;
always #5 clk = !clk;
always #10 address_in_0 = address_in_0 + 1;
always #10 address_in_1 = address_in_1 + 1;
always #160 write_en_0 = !write_en_0;
always #160 write_en_1 = !write_en_1;
always #400 cs_0 = !cs_0;
always #400 cs_1 = !cs_1;
always #160 out_en_0 = !out_en_0;
always #160 out_en_1 = !out_en_1;
always #10 temp_data_0 = $random();
always #10 temp_data_1 = $random();

initial
begin
    temp_data_0 = 0;
    temp_data_1 = 0;
    clk = 0;
    address_in_0 = 0;
    address_in_1 = 0;
    write_en_0 = 1;
    write_en_1 = 1;
    cs_0 = 1;
    cs_1 = 1;
    out_en_0 = 0;
    out_en_1 = 0;
    
    #1000 $finish();
end
endmodule
