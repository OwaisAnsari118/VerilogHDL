`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 11:45:28 PM
// Design Name: 
// Module Name: tb_async_FIFO
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

module tb_async_FIFO();

    reg [`N-9:0]  data_in;
    reg           wr_en;
    reg           rd_en;
    wire          fifo_full;
    wire          fifo_empty;
    reg           wr_clk;
    reg           rd_clk;
    reg           wr_rst_n;
    reg           rd_rst_n;
    wire [`N-9:0] data_out;

async_FIFO DUT(data_in,wr_en,rd_en,fifo_full,fifo_empty,wr_clk,rd_clk,wr_rst_n,rd_rst_n,data_out);

    always #5 wr_clk = ~wr_clk;

    always #10 rd_clk = ~rd_clk;

    always #10 data_in = data_in + 1;
    initial begin
        
        wr_clk = 0;
        rd_clk = 0;
        wr_rst_n = 0;  
        rd_rst_n = 0;  
        wr_en = 0;
        rd_en = 0;
        data_in = 0;

        
        #10 wr_rst_n = 1;  
        #10 rd_rst_n = 1;  

        
        #10 wr_en = 1; data_in = 8'b00000000;  
         

        
        #160 wr_en = 0; rd_en = 1;  
                     

        
        #10 $display("FIFO full: %b, FIFO empty: %b", fifo_full, fifo_empty);

        
        #5000 $finish;
    end

endmodule
