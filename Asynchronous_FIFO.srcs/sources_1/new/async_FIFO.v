`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 11:01:54 PM
// Design Name: 
// Module Name: async_FIFO
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
module async_FIFO(
    input [`N-9:0]  data_in,
    input           wr_en,
    input           rd_en,
    output          fifo_full,
    output          fifo_empty,
    input           wr_clk,
    input           rd_clk,
    input           wr_rst_n,
    input           rd_rst_n,
    output [`N-9:0] data_out
    );
    
    wire [`N-13:0] gray_rd_ptr;           
    wire [`N-13:0] gray_wr_ptr; 
    
    wire [`N-13:0] g_rd_ptr;
    wire [`N-13:0] g_wr_ptr;
    
    
    
    wire [`N-13:0] rd_ptr_bin;        
    wire [`N-13:0] wr_ptr_bin;  
    
dual_port_RAM RAM_inst(wr_clk,rd_clk,wr_en,rd_en,wr_ptr_bin,rd_ptr_bin,fifo_full,fifo_empty,data_in,data_out);

synchronizer sync_wr_to_rd(gray_wr_ptr,rd_clk,rd_rst_n,g_wr_ptr);

synchronizer sync_rd_to_wr(gray_rd_ptr,wr_clk,wr_rst_n,g_rd_ptr);

write_logic write_inst(wr_clk,wr_rst_n,g_rd_ptr,gray_wr_ptr,wr_ptr_bin,fifo_full);

read_logic read_inst(rd_clk,rd_rst_n,g_wr_ptr,gray_rd_ptr,rd_ptr_bin,fifo_empty);
endmodule
