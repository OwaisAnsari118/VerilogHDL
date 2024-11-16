`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 01:48:06 AM
// Design Name: 
// Module Name: task_f_adder
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
//global task
task addition (input a_in,b_in,carry_in, 
              output sum_out,carry_out);
begin
    {carry_out,sum_out} = a_in + b_in + carry_in;
end
endtask 


module task_f_adder(
    input a_in,
    input b_in,
    input carry_in,
    output  reg sum_out,
    output  reg carry_out
    );


always@*
begin    
    addition(a_in,b_in,carry_in,sum_out,carry_out);
end

//statictask 
/*task addition (input a_in,b_in,carry_in, 
              output sum_out,carry_out);
begin
    {carry_out,sum_out} = a_in + b_in + carry_in;
end
endtask*/
        
              
endmodule
