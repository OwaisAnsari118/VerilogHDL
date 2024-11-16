`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 01:44:07 AM
// Design Name: 
// Module Name: Mux_4to1_ternary
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


module Mux_4to1_ternary(
    input [1:0] sel_in,
    output y_out,
    input  i0,i1,i2,i3
    );
    
    assign y_out = (sel_in == 2'b00)?i0:
                   (sel_in == 2'b01)?i1:
                   (sel_in == 2'b10)?i2:
                   i3;
                   
                    
endmodule
