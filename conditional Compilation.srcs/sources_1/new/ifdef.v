`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 01:56:18 AM
// Design Name: 
// Module Name: ifdef
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
module ifdef(
    input clk,
    input [7:0] d_in,
    `ifdef INCLUDE_RST
        input reset_n,
    `endif
    output reg [7:0] d_out
    );
    
always @ (posedge clk)
begin
    `ifdef INCLUDE_RST
        if(!reset_n)
            d_out <= 8'b0;
        else
     `endif
        d_out <= d_in;
end
endmodule
