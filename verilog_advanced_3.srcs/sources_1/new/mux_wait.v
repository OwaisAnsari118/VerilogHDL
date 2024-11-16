`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 05:49:55 PM
// Design Name: 
// Module Name: mux_wait
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


module mux_wait(
    input a_in,
    input b_in,
    input sel_in,
    output reg y_out
    );
    
always@* begin
    wait(!sel_in) #10 y_out = a_in;
    #5 y_out = b_in;

end
endmodule
