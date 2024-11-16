`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 06:55:09 PM
// Design Name: 
// Module Name: dual_port_RAM
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

`define N 16
module dual_port_RAM (
    input               wr_clk,
    input               rd_clk,
    input               wr_en,
    input               rd_en,                    
    input [`N-13:0]     wr_ptr,
    input [`N-13:0]     rd_ptr,
    input               fifo_full,
    input               fifo_empty,            
    input [`N-9:0]      data_in,            
    output reg[ `N-9:0] data_out    
);
   
    reg [7:0] memory [`N-1:0];
    
    //wr
    always @(posedge wr_clk) begin
        if(wr_en && !fifo_full) begin
            memory[wr_ptr] <= data_in;
            
    end
    end
    //Read Logic
    always @(posedge rd_clk) begin
        if(rd_en && !fifo_empty) begin
            data_out <= memory[rd_ptr];
            
        end
    end
    
endmodule

