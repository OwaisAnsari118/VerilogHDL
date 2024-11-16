`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 07:22:36 PM
// Design Name: 
// Module Name: tri_state_lumped
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


module tri_state_lumped(
    input [7:0] data_in,
    input en_in,
    output [7:0] data_out
    );
    
    assign #4 data_out = (en_in) ? data_in : 8'bzzzz_zzzz;
endmodule
