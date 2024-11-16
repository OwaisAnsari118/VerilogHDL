`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 08:31:52 PM
// Design Name: 
// Module Name: D_ff_sync
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


module D_ff_sync(
    input d_in,
    input clk,
    input reset_n,
    output reg q_out
    );
    
always@(posedge clk)
begin
    if(!reset_n)
        q_out <= 'b0;
    else    
        q_out <= d_in;
end

endmodule
