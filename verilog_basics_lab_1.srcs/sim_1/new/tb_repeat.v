`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2024 01:53:19 AM
// Design Name: 
// Module Name: tb_repeat
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


module tb_repeat();
integer i = 0;
initial 
begin
repeat(10) 
begin
    i=i+1;
    $display("Value of i is:%0d",i);
end
end
endmodule
