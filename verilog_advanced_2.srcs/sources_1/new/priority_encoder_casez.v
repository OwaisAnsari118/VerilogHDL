`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 01:57:08 PM
// Design Name: 
// Module Name: priority_encoder_casez
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
module priority_encoder_casez(
    input      [`N-1:0] irq,
    output reg [`N-3:0] y_out
    );
    
always@* begin
    casez(irq)
        4'b0001: y_out = 2'b11;
        4'b001z: y_out = 2'b10;
        4'b01zz: y_out = 2'b01;
        4'b1zzz: y_out = 2'b00;
        default: y_out = 2'b00;
    endcase
end
endmodule
