`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 07:52:48 PM
// Design Name: 
// Module Name: tb_pos_D_sync
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


module tb_pos_D_sync();
reg d_in;
reg clk;
wire q_out;
reg reset_n;

pos_D_sync DUT(
    .d_in(d_in),
    .clk(clk),
    .q_out(q_out),
    .reset_n(reset_n)
    );
    
    always #15 d_in = ~d_in;
    always #5 clk  = ~clk;
    initial
    begin
        $monitor("time=%0t, d_in=%0h, reset_n=%0h, q_out=%0h",$time, d_in, reset_n, q_out);
        d_in = 0;
        clk  = 0;
        reset_n=0;
        
        #100 
        reset_n =1;
        #200
        reset_n =0;
        #200 $finish ;
    end
endmodule
