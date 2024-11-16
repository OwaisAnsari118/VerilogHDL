`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2024 04:22:27 PM
// Design Name: 
// Module Name: sequence_detector
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
module sequence_detector
(
    input  [`N-1:0] seq_in,
    input  seq_load,
    input  serial_data,
    input  reset_n,
    input  clk,
    output reg seq_valid
);

reg [`N-1:0]temp_seq;
reg [`N-1:0]temp_data;

integer i;
always@(posedge clk)
begin
    if(!reset_n)
    begin
        seq_valid <= 1'b0;
        temp_seq <= {`N{'b0}};
    end
    else
    if(!seq_load)
    begin
        seq_valid <= 1'b0;
        temp_seq <= {`N{'b0}};
    end
    else
    begin
        temp_seq <= seq_in;
        temp_data <= serial_data;
        
        for( i = 0; i<`N-1;i = i+1)
        begin
        
        if (temp_seq[i] == temp_data) begin
            seq_valid <= 1'b1;   // Match condition
        end else begin
            seq_valid <= 1'b0;   // No match
        end
        end
    end
end
endmodule
