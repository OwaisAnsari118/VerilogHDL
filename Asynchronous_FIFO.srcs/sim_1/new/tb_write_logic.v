`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2024 12:15:47 AM
// Design Name: 
// Module Name: tb_write_logic
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
module tb_write_logic();

    reg  wr_clk;
    reg  wr_rst_n;
    reg  [`N-13:0] g_rd_ptr;
    wire [`N-13:0] gray_wr_ptr;
    wire [`N-13:0] wr_ptr;
    wire fifo_full;

write_logic DUT(wr_clk,wr_rst_n,g_rd_ptr,gray_wr_ptr,wr_ptr,fifo_full);

initial begin
    wr_clk = 0;
    forever #5 wr_clk = ~wr_clk;
end
always #10 g_rd_ptr = g_rd_ptr + 1;
initial begin
    wr_rst_n = 0;
    g_rd_ptr = 0;
    #10 wr_rst_n = 1;
end
endmodule
