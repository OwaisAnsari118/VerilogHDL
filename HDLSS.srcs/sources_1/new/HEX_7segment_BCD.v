`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 04:27:00 PM
// Design Name: 
// Module Name: HEX_7segment_BCD
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


module HEX_7segment_BCD
(
    input [7:0] hex,
    output reg [11:0] bcd 
);

always@*
begin
    bcd = 12'b0;
    
    if(hex<=256)
    begin
        bcd = hex;
    end
end
endmodule
