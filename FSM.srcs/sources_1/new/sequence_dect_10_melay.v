`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 01:53:56 AM
// Design Name: 
// Module Name: sequence_dect_10_melay
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


module sequence_dect_10_melay(
    input d_in,
    input clk,
    input reset_n,
    output reg d_out
    );
    
parameter S0=2'b0;
parameter S1=2'b1;
reg [1:0]present_state;
reg [1:0]next_state;

always@(posedge clk,negedge reset_n)
begin
    if(!reset_n)
    begin
        present_state <= S0;
    end
    else
        present_state <= next_state;         
end

always@*
begin
    next_state = S0;
    case (present_state)
    S0: if(d_in)
                next_state = S1;
        else
                next_state = S0;
    S1: if(!d_in)
                next_state = S0;
        else
                next_state = S1;
    endcase
end
always@*
begin
    d_out = 'b0;
    case (present_state)
    S0: d_out = 'b0;
    S1: if (!d_in) 
            d_out = 1'b1;
    endcase
end
endmodule
