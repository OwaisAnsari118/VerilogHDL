`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 02:55:55 PM
// Design Name: 
// Module Name: single_port_16x8bit
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


module single_port_16x8bit(
        inout [7:0] data_io,
        input [3:0] address_in,
        input cs,
        input write_en,
        input out_en,
        input clk
        );
    
    reg [7:0] temp_reg;
    reg [7:0] memory [15:0];

always@(posedge clk)
begin
    if(cs && write_en)
        memory[address_in] <= data_io;
end
always@(posedge clk)
begin
    if(cs && !write_en)
        temp_reg <= memory[address_in];
end
assign data_io =(cs && !write_en && out_en) ? temp_reg:8'bzzzz_zzzz;
endmodule
