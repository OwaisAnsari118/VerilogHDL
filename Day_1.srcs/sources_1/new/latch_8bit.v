`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 03:05:27 AM
// Design Name: 
// Module Name: latch_8bit
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


module latch_8bit(
    input [7:0] data_in,
    output reg [7:0] data_out,
    input en_in
    );
    
always @*
begin
    if(en_in)
        data_out = data_in;
end
endmodule
