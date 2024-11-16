`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 11:11:29 PM
// Design Name: 
// Module Name: gray_to_binary
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

module gray_to_binary (
    input  [`N-13:0] gray,   // Gray code input
    output [`N-13:0] binary  // Binary output
);
    genvar i; // Declare genvar variable for the generate block
    
    generate
        // The first binary bit is equal to the first Gray code bit
        assign binary[0] = gray[0];  // MSB of Gray code is directly assigned to binary
        
        // For all subsequent bits, the binary bit is XORed with the previous binary bit
        for (i = 1; i < `N; i = i + 1) begin 
            assign binary[i] = gray[i] ^ binary[i-1]; // XOR each Gray code bit with the previous binary bit
        end
    endgenerate
endmodule
