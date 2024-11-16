`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 01:38:03 PM
// Design Name: 
// Module Name: prority_encoder
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

`define N 4
module prority_encoder(
    input      [`N-1:0] irq,
    output reg [`N-3:0] y_out
    );
    
always@* begin
    if(irq[3] == 'b1)
        y_out = 2'b11;
    else if(irq[2] == 'b1)
        y_out = 2'b10;
    else if(irq[1] == 'b1)
        y_out = 2'b01;
    else if(irq[0] == 'b1)
        y_out = 2'b00;
end
endmodule
