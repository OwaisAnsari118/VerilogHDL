`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 01:58:56 AM
// Design Name: 
// Module Name: shift_lef_reg_for
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


module shift_lef_reg_for(
    input [7:0] d_in,
    input load,
    input clk,
    input reset_n,
    output reg [7:0] d_out
    );
integer i;
always@(posedge clk, negedge reset_n)
begin
    if(!reset_n)
        d_out <= 8'b0000_0000;
    else
        if(load)
            d_out <= d_in;
        else
            for(i=0;i<8;i=i+1)
                begin
                    if(i==0)
                        d_out[i] = d_in[7];
                    else
                        d_out[i] = d_in[i-1];
                end
end
endmodule
