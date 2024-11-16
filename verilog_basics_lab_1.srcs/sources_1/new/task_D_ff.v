`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 02:26:52 AM
// Design Name: 
// Module Name: task_D_ff
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
task d_ff (input d_in,reset_n,
           output q_out);
begin
    if(!reset_n)
        q_out = 1'b0;
    else
        q_out <= d_in;
end
endtask

module task_D_ff(
    input d_in,
    input clk,
    input reset_n,
    output reg q_out
    );
    

always @(posedge clk or negedge reset_n) begin
    begin
        d_ff(d_in, reset_n, q_out); 
    end
end
endmodule
