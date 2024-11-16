`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 08:07:04 PM
// Design Name: 
// Module Name: mux_4to1
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


module mux_4to1(
    input a_in,
    input b_in,
    input c_in,
    input d_in,
    input [1:0]sel_in,
    output y_out
    );


    
parameter PRIORITY_MUX = 1;
generate
begin
    if(PRIORITY_MUX)
        priority_mux U1(a_in,b_in,c_in,d_in,sel_in,y_out);
    else
        parallel_mux U2(a_in,b_in,c_in,d_in,sel_in,y_out);
end
endgenerate
endmodule
