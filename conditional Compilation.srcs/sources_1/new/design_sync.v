`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 02:42:27 AM
// Design Name: 
// Module Name: design_sync
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

`define SYN
module design_sync(
    input a_in,
    input b_in,
    input c_in,
    input d_in,
    output y_out
    );


`ifdef SYN
    assign y_out = (a_in & b_in) & (c_in & d_in);
`else
    assign y_out = a_in & b_in & c_in & d_in;
`endif
endmodule
