`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2024 01:56:24 PM
// Design Name: 
// Module Name: tb_jk_ff
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


module tb_jk_ff();
    reg j, k, clk, reset_n;
    wire q_out;

    jk_ff DUT(j, k, clk, reset_n, q_out);

    // Clock generation
    always #10 clk = ~clk;

    // Test stimulus
    initial begin
        // Initialize inputs
        j = 0;
        k = 0;
        clk = 0;
        reset_n = 0;

        // Reset the flip-flop
        #50 reset_n = 1;

        // Test cases
        // Set the JK inputs and observe the output
        #20 j = 1; k = 0;  // Set
        #20 j = 0; k = 1;  // Reset
        #20 j = 1; k = 1;  // Toggle
        #20 j = 0; k = 0;  // No change

        // Add more test cases if necessary
        #20 j = 1; k = 0;  // Set again
        #20 j = 1; k = 1;  // Toggle again
        #20 j = 0; k = 1;  // Reset again
        #20 j = 0; k = 0;  // No change

        #100 $finish; // End simulation
    end
endmodule

