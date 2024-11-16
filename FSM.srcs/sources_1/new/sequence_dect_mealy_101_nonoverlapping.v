`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 01:23:55 AM
// Design Name: 
// Module Name: sequence_dect_mealy_101_nonoverlapping
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


module sequence_dect_mealy_101_nonoverlapping(
    input d_in,
    input clk,
    input reset_n,
    output reg q_out
    );
parameter S0=2'b00;
parameter S1=2'b01;
parameter S2=2'b10;

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
                next_state = S2;
        else
                next_state = S1;
    S2: if(!d_in)
                next_state = S0;
        else
                next_state = S0;
   
    endcase
end   
    
always@*
begin
    q_out = 'b0;
    case (present_state)
    S0: q_out = 'b0;
    S1: q_out = 'b0;
    S2: if(d_in)
            q_out = 'b1;
    endcase
end
endmodule
