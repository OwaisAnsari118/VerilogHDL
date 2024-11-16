`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 01:26:26 PM
// Design Name: 
// Module Name: tb_while
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


module tb_while();

integer i = 0;

initial 
begin   
    while(i<10)
    begin
     $display("The value of i = %0h",i);
        i=i+1;
       
    end
end
endmodule
