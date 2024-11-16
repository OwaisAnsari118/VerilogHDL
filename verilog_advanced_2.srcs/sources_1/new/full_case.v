`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 02:40:32 PM
// Design Name: 
// Module Name: full_case
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


module full_case(
    input [3:0] d_in,
    input [1:0] sel_in,
    output reg y_out
    );

always @* begin

    case(sel_in) //synopsys full_case
        2'b00: y_out = d_in[0];
        2'b01: y_out = d_in[1];
        2'b10: y_out = d_in[2];
    endcase
    
end
endmodule
