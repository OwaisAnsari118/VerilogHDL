`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2024 02:28:23 PM
// Design Name: 
// Module Name: tb_sync_FIFO
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


module tb_sync_FIFO();

reg [7:0] data_in;
reg       wr_en;
reg       rd_en;
reg       clk;
reg       reset_n;
wire [7:0]data_out;
wire      fifo_full;
wire      fifo_empty;

sync_FIFO DUT(data_in,wr_en,rd_en,clk,reset_n,data_out,fifo_full,fifo_empty);

initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

always #10 data_in = $random;
always #20 wr_en = ~wr_en;
always #20 rd_en = ~rd_en;

initial
begin
    data_in = 8'b0;
    wr_en = 0;
    rd_en = 0;
    reset_n = 0;
    
    #20 reset_n = 1;
    
    #1000 $finish;
end
endmodule
