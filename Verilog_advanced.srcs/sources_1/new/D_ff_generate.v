`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 08:35:06 PM
// Design Name: 
// Module Name: D_ff_generate
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


module D_ff_generate(
    input d_in,
    input clk,
    input reset_n,
    output q_out
    );
    
parameter RESET_TYPE = 1; //sync reset
generate
    case(RESET_TYPE)
    1'b0: D_ff_async U1 (d_in,clk,reset_n,q_out);
    1'b1: D_ff_sync U2 (d_in,clk,reset_n,q_out);
    endcase    
endgenerate
endmodule
