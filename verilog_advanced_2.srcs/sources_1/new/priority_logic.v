`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 02:26:26 PM
// Design Name: 
// Module Name: priority_logic
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


module priority_logic(
    input      [2:0] irq,
    output reg [2:0] int
    );
    
always @* begin
    {int[2],int[1],int[0]} = 3'b000;
    casez(irq)
    3'b1??: int[2] = 1'b1;
    3'b?1?: int[1] = 1'b1;
    3'b??1: int[0] = 1'b1;
    endcase
end
endmodule
