`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 09:15:23 AM
// Design Name: 
// Module Name: edge_sensitive
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


module edge_sensitive(
    input d_in,
    input clk,
    input reset_n,
    output reg q_out
    );

always@(posedge clk, negedge reset_n)
begin
    if(!reset_n)
        q_out <= 0;
    else 
        q_out <= d_in;
end
        
specify
    specparam trise = 3;
    specparam tfall = 2;
    (posedge clk => (q_out +: d_in))=(trise,tfall);
endspecify
endmodule
