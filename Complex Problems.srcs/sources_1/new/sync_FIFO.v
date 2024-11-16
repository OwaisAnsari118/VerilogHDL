`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2024 01:35:43 PM
// Design Name: 
// Module Name: sync_FIFO
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


module sync_FIFO(
 input      [7:0] data_in,
 input            wr_en,
 input            rd_en,
 input            clk,
 input            reset_n,
 output reg [7:0] data_out,
 output reg       fifo_full,
 output reg       fifo_empty   
    );

reg [3:0] wr_ptr;
reg [3:0] rd_ptr;
reg [7:0] memory [15:0];


always@(posedge clk,negedge reset_n)
begin
    if(!reset_n) begin
        wr_ptr <= 4'b0000;
        rd_ptr <= 4'b0000;
        fifo_full <= 0;
        fifo_empty <= 1;
    end
    else
    begin
        //write operation
        if(wr_en && !fifo_full) begin
            memory[wr_ptr] <= data_in;
            wr_ptr <= wr_ptr + 1;
        end
        if(rd_ptr == wr_ptr + 1)
            fifo_full <= 1;        
        else
            fifo_full <= 0;
            
        //read operation
        if(rd_en && !fifo_empty) begin
            data_out <= memory[rd_ptr];
            rd_ptr <= rd_ptr + 1;
        end
        
        if(wr_ptr == rd_ptr)
            fifo_empty <= 1;
        else
            fifo_empty <= 0;    
end
end
endmodule

