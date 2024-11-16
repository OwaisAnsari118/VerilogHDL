`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 03:59:04 PM
// Design Name: 
// Module Name: adder
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

module adder(
    input a,            // First input bit
    input b,            // Second input bit
    input cin,          // Carry input from previous bit (for multi-bit adder)
    output sum,         // Sum output
    output cout         // Carry output to next bit (for multi-bit adder)
);

    // Full adder logic
    assign sum = a ^ b ^ cin;          // Sum is the XOR of inputs and carry-in
    assign cout = (a & b) | (cin & (a ^ b));  // Carry-out is generated if both inputs or any input with carry-in is 1

endmodule

