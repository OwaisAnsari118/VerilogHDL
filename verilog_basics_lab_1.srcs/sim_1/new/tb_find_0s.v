`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 01:37:04 PM
// Design Name: 
// Module Name: tb_find_0s
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


module tb_find_0s();
reg d_in;
wire no_of_0s;

task_no_of_0s DUT (
     .d_in(d_in),
     .no_of_0s(no_of_0s));
     
always #10 d_in = d_in + 1;     

initial
begin
    d_in = 8'b0000_0000;     
    #100 $finish;
end
endmodule
