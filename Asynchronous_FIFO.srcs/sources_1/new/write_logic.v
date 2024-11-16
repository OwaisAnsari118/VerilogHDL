`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 08:24:17 PM
// Design Name: 
// Module Name: write_logic
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
module write_logic(
    input                wr_clk,
    input                wr_rst_n,
    input      [`N-13:0] g_rd_ptr,
    output reg [`N-13:0] gray_wr_ptr,
    output reg [`N-13:0] wr_ptr,
    output reg           fifo_full
    );
    
    gray_counter U1(wr_clk,wr_rst_n,gray_count);
    gray_to_binary  U2 (g_rd_ptr,g_rd_ptr_bin);
   
    wire [`N-13:0] gray_count; 
    wire [`N-13:0] g_rd_ptr_bin; 
always@(posedge wr_clk, negedge wr_rst_n) begin
    if(!wr_rst_n) begin
        fifo_full <= 0;
        wr_ptr <= {`N{'b0}};
        gray_wr_ptr <= {`N{'b0}};
    end
    else begin
        if(!fifo_full) begin
            wr_ptr <= wr_ptr + 1;
            gray_wr_ptr <= gray_count;
        end
        if (wr_ptr + 1 == g_rd_ptr_bin) begin
            fifo_full <= 1;      
        end else begin
            fifo_full <= 0;
        end
    end
end
            
endmodule
