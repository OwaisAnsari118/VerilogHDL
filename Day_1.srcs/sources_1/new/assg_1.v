`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2024 06:12:20 PM
// Design Name: 
// Module Name: cascade_not
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


module cascade_not(
    input a_in,
    output y_out,
    inout a1,a2
    );
    
    assign a1 = !a_in;
    assign a2 = !a1;
    assign y_out = !a2;
endmodule
