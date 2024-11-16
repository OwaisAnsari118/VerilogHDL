`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 09:11:15 PM
// Design Name: 
// Module Name: read_logic
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
module read_logic(
    input                rd_clk,
    input                rd_rst_n,
    input      [`N-13:0] g_wr_ptr,
    output reg [`N-13:0] gray_rd_ptr,
    output reg [`N-13:0] rd_ptr,
    output reg           fifo_empty
    );
    
    gray_counter U3(rd_clk,rd_rst_n,gray_count);
    gray_to_binary  U4(g_rd_ptr,g_wr_ptr_bin);
   
    //wire [`N-13:0] gray_count; 
always @(posedge rd_clk or negedge rd_rst_n) begin
        if (!rd_rst_n) begin
            rd_ptr <= {`N{1'b0}};            
            gray_rd_ptr <= {`N{1'b0}};      
            fifo_empty <= 1;             
        end else begin
            
            if (rd_ptr == g_wr_ptr_bin) begin
                fifo_empty <= 1;             
            end else begin
                fifo_empty <= 0; 
                rd_ptr <= rd_ptr + 1;        
                gray_rd_ptr <= gray_count;   
            end
        end
    end
endmodule
