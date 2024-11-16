`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 02:28:30 AM
// Design Name: 
// Module Name: no_of_1s_16bit
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


module no_of_1s_16bit(
    input [15:0] d_in,
    input clk,
    input reset_n,
    output reg [4:0] d_out
    );
    
integer i;
integer count=0;   
always @ (posedge clk, negedge reset_n)
begin
    if(~reset_n)
        d_out <= 5'b0;
    else
    
        begin
            for(i = 0; i < 16; i=i+1)
            
            begin
                if(d_in[i])
                    count = count + 1;
                else
                    count = count + 0;         
            end
            d_out <= count;
         end
end
endmodule


