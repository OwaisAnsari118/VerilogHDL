`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 09:46:27 PM
// Design Name: 
// Module Name: tb_RTL_Design_logic
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


module tb_RTL_Design_logic();

reg a_in;
reg b_in;
reg clk;
reg reset_n;
wire y_out;

RTL_Design_logic DUT(
        .a_in(a_in),
        .b_in(b_in),
        .clk(clk),
        .reset_n(reset_n),
        .y_out(y_out)
        );
        
        always #10 clk  = ~clk;
        always #15 a_in = ~a_in;
        always #20 b_in = ~b_in;
        
        initial
        begin
            a_in = 0;
            b_in = 0;
            clk  = 0;
            reset_n=0;
            
            #100 
            reset_n =1;
                                  
            #200 $finish;
        end
endmodule
