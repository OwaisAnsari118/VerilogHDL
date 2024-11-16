`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 01:44:52 PM
// Design Name: 
// Module Name: tb_priority_encoder
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


module tb_priority_encoder();

    reg  [`N-1:0] irq;
    wire [`N-3:0] y_out;
    
//prority_encoder DUT(irq,y_out);
priority_encoder_casex DUT1(irq,y_out);
//priority_encoder_casez DUT2(irq,y_out);

always #5 irq = irq + 1;

initial begin
    irq = 4'b0000;
end
endmodule
