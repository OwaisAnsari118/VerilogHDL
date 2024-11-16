`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 05:51:10 PM
// Design Name: 
// Module Name: tb_D_Latch
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


module tb_D_Latch();
reg d_in;
reg enable_in;
wire q_out;

D_Latch DUT(q_out,d_in,enable_in);

always #20 d_in = ~d_in;
always #100 enable_in = ~enable_in;
initial 
begin
    d_in = 0;
    enable_in = 0;
    
    #10 enable_in = 1;
    #300 $finish;
end
endmodule
