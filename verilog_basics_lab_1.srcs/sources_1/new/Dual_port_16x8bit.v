`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 04:03:30 PM
// Design Name: 
// Module Name: Dual_port_16x8bit
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


module Dual_port_16x8bit(
        inout [7:0] data_io_0,
        input [3:0] address_in_0,
        input cs_0,
        input write_en_0,
        input out_en_0,
        inout [7:0] data_io_1,
        input [3:0] address_in_1,
        input cs_1,
        input write_en_1,
        input out_en_1,
        input clk
        );
        
    reg [7:0] temp_reg_0;
    reg [7:0] temp_reg_1;
    reg [7:0] memory [15:0];
    
always@(posedge clk)
begin
    if(cs_0 && write_en_0)
        memory[address_in_0] <= data_io_0;
        
end
always@(posedge clk)
begin
    if(cs_0 && !write_en_0)
        temp_reg_0 <= memory[address_in_0];
end
always@(posedge clk)
begin
    if(cs_1 && write_en_1)
        memory[address_in_1] <= data_io_1;
end
always@(posedge clk)
begin
    if(cs_1 && !write_en_1)
        temp_reg_1 <= memory[address_in_1];
end
assign data_io_0 =(cs_0 && !write_en_0 && out_en_0) ? temp_reg_0:8'bzzzz_zzzz; 
assign data_io_1 =(cs_1 && !write_en_1 && out_en_1) ? temp_reg_1:8'bzzzz_zzzz;    
endmodule
