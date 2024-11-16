`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 12:37:39 AM
// Design Name: 
// Module Name: seuence_dect_10
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


module seuence_dect_10(
    input d_in,
    input clk,
    input reset_n,
    output reg d_out
    );
parameter S0=2'b00;
parameter S1=2'b01;
parameter S2=2'b10;
reg [1:0]state;
reg [1:0]next_state;

always@(posedge clk,negedge reset_n)
begin
    if(!reset_n)
    begin
        state <= S0;
    end
    else
        state <= next_state;
            
end

always@*
begin
    next_state = S0;
    case (state)
    S0: if(d_in)
                next_state = S1;
        else
                next_state = S0;
    S1: if(!d_in)
                next_state = S2;
        else
                next_state = S1;
    S2: if(!d_in)
                next_state = S0;
            else    
                next_state = S1;
    endcase
end

always@(state)
begin
    case(state)
    S0: d_out = 1'b0;
    S1: d_out = 1'b0;
    S2: d_out = 1'b1;
    default: d_out = 1'b0;
    endcase
    
end
endmodule
