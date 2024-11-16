`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 01:26:22 AM
// Design Name: 
// Module Name: tb_design
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


module tb_design();
initial
    print();
initial
    print();
initial
    print();
    
task print();
    integer i;
    begin 
        i=0;
        i=i+1;
        $display("%0h",i);
        end
endtask
endmodule

