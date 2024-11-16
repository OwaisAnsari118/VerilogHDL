`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2024 05:41:56 PM
// Design Name: 
// Module Name: tb_toggle_fsm
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


module tb_toggle_fsm();

reg clk;       
reg rst;        
reg d_in;  
wire odd_even;

toggle_fsm DUT(clk,rst,d_in,odd_even);

always begin
        #5 clk = ~clk;  
    end
initial
fork
        #25 d_in = 0;
        #35 d_in = 1;  
        #45 d_in = 1;  
        #55 d_in = 0;  
        #65 d_in = 1;  
        #75 d_in = 0;  
        #85 d_in = 1;  
        #95 d_in = 1;
join
initial
begin
    
        clk = 0;
        rst = 0;
        d_in = 0;
        
        #10 rst = 1;  
        #10 rst = 0;  


        // End the simulation after some time
        #100 $finish;
    end

    // Monitor output and state
    initial begin
        $monitor("Time = %t, d_in = %b, odd_even = %b", $time, d_in, odd_even);
    end

endmodule
