`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2024 02:36:13 AM
// Design Name: 
// Module Name: Ram_16x9bit
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


module Ram_16x9bit(
    input [3:0] addr_out,
    input m_en_out,
    input cs_out,
    input [8:0]data_in_r,
    input clk,
    output reg [8:0]result_out
    );
    
reg [3:0] memory [15:0];
    
    always@(posedge clk)
    begin
        if(!cs_out)
            result_out <= 9'b00000_0000;
        else
            if(m_en_out)
                memory[addr_out] <= data_in_r;
            else
                result_out <= memory[addr_out];
end
endmodule
