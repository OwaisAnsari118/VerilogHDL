`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 05:18:14 PM
// Design Name: 
// Module Name: design_gen_if
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


module design_gen_if(
    input a_in,
    input b_in,
    output y_out
    );
    
parameter NAND_SEL = 1;
generate
    if(NAND_SEL)
        design_nand U1(a_in,b_in,y_out);
    else
        design_nor U1(a_in,b_in,y_out);
endgenerate
endmodule
