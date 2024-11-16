`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 09:56:44 AM
// Design Name: 
// Module Name: tb_complex_design
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


module tb_complex_design();
     
reg  [7:0] d_in;
reg        clk;  
reg        reset_n;
wire [7:0] q_out;



complex_design DUT(d_in,clk,reset_n,q_out);


always #5 clk = ~clk;
always #10 d_in = $random;

initial begin
    clk = 0;
    d_in = 0;
    reset_n = 0;
    
    #20 reset_n = 1;
    #200 reset_n = 0;
    #20 $finish;
end
endmodule
