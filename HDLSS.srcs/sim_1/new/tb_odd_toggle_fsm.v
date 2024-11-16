`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2024 05:25:41 PM
// Design Name: 
// Module Name: tb_odd_toggle_fsm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// Testbench for odd_toggle_fsm
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_odd_toggle_fsm();

    reg clk;        
    reg rst;        
    reg toggle_in;  
    wire odd_even;  

    // Instantiate the Device Under Test (DUT)
    odd_togggle_fsm DUT (
        .clk(clk),
        .rst(rst),
        .toggle_in(toggle_in),
        .odd_even(odd_even)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;  // 100 MHz clock
    end
    always #10 toggle_in = $random;
    // Stimulus generation
    initial begin
        // Initialize signals
        clk = 0;
        rst = 0;
        toggle_in = 0;

        // Apply reset for a few cycles to ensure initialization
        #10 rst = 1;  
        #10 rst = 0;  

       

        // End the simulation after some time
        #500 $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time = %t, toggle_in = %b, odd_even = %b", $time, toggle_in, odd_even);
    end

endmodule
