`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 09:30:02 PM
// Design Name: 
// Module Name: RTL_Design_logic
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


module RTL_Design_logic(
        input a_in,
        input b_in,
        input clk,
        input reset_n,
        output reg y_out);
        
        reg q1_out,q2_out;
        //wire y1,y2;
        
always @(posedge clk, negedge reset_n)
begin
    if(~reset_n)
        begin
            q1_out <= 'b0;
            q2_out <= 'b0;
            y_out <= 'b0;
        end
    else
        begin
            q1_out <= a_in;
            q2_out <= b_in;
            y_out <=  ~(q1_out & q2_out); 
        end        
end

//assign y1 = q1_out & q2_out;
//assign y2 = ~y1; 
        
endmodule
