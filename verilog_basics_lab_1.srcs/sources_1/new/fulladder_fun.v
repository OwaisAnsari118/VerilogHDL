`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 01:46:46 PM
// Design Name: 
// Module Name: fulladder_fun
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


module fulladder_fun(
    input a_in,
    input b_in,
    input carry_in,
    output sum_out,
    output carry_out
    );
    
    assign {carry_out, sum_out} = addition(a_in,b_in,carry_in);
    
    function [1:0] addition (input a_in,b_in, carry_in);
    begin
        addition = a_in + b_in + carry_in; 
    end
    endfunction
endmodule
