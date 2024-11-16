`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2024 09:21:46 PM
// Design Name: 
// Module Name: TOP
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


module TOP(
    input clk,
    input reset_n,
    input up_counter,
    input down_counter,
    output [6:0] segment
    );
    
    wire [3:0] count;
    
    BCD_7segment_display display_inst(count,segment);
    
    up_down_counter counter_inst(clk,reset_n,up_counter,down_counter,count);
endmodule
