`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 02:14:01 AM
// Design Name: 
// Module Name: task_h_adder
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
task add (input a_in,b_in, 
              output sum_out,carry_out);
begin
    {carry_out,sum_out} = a_in + b_in;
end
endtask 

module task_h_adder(
    input a_in,
    input b_in,
    output reg sum_out,
    output reg carry_out
    );
always@*
begin    
    add(a_in,b_in,sum_out,carry_out);
end
endmodule

module task_h_adder1(
    input a_in,
    input b_in,
    output reg sum_out,
    output reg carry_out
    );
always@*
begin    
    add(a_in,b_in,sum_out,carry_out);
end
endmodule

