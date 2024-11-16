`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 02:32:04 PM
// Design Name: 
// Module Name: tb_priority_logic
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


module tb_priority_logic();

    reg  [2:0] irq;
    wire [2:0] int;
    
priority_logic DUT(irq,int);

always #5 irq = irq + 1;

initial begin
    irq = 3'b000;
end
endmodule
