`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 02:17:31 AM
// Design Name: 
// Module Name: PIPO_16bit
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

`define INCLUDE_RST
module PIPO_16bit(
    input clk,
    input [15:0] d_in,
    `ifdef INCLUDE_RST
        input reset_n,
    `endif
    output reg [15:0] d_out
    );
    
always @ (posedge clk, negedge reset_n)
begin
    `ifdef INCLUDE_RST
        if(!reset_n)
            d_out <= 8'b0;
        else
     `endif
        d_out <= d_in;
end
endmodule   
    
