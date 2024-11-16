`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 05:34:25 PM
// Design Name: 
// Module Name: parity_check
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

module parity_check (
    input [`N-1:0] d_in,
    output parity_out  
);
        
       parameter EVEN_SEL = 1;
       generate
        if (EVEN_SEL)
            assign parity_out = ~(^d_in);
        else
            assign parity_out = (^d_in);
        endgenerate

endmodule
