`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2024 11:52:08 PM
// Design Name: 
// Module Name: Mem_RAM_16
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

module Mem_RAM_16 (
    input [3:0] addr_in_0,
    input [7:0]a_in,
    input m_en_0,
    input cs_0,
    input clk,
    output reg [7:0]data_out_0 
    );
    
    reg [3:0] memory [15:0];
    
    always@(posedge clk)
    begin
        if(!cs_0)
            data_out_0 <= 8'b0000_0000;
        else
            if(m_en_0)
                memory[addr_in_0] <= a_in;
            else
                data_out_0 <= memory[addr_in_0];
    end
endmodule
