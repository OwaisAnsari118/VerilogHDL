`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 01:55:17 AM
// Design Name: 
// Module Name: sequence_dect_melay_10101_1bitoverlapping
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


module sequence_dect_melay_10101_1bitoverlapping(
    input d_in,
    input clk,
    input reset_n,
    output reg d_out
    );
parameter S0=3'b000;
parameter S1=3'b001;
parameter S2=3'b010;
parameter S3=3'b011;
parameter S4=3'b101;

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
                next_state = S3;
    S3: if(!d_in)
                next_state = S4;
        else
                next_state = S1;
    S4 : if(!d_in)
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
    S1: d_out = 'b0;
    S2: d_out = 'b0;
    S3: d_out = 'b0;
    S4: if(d_in)
            d_out = 'b1;
    endcase
end
    
endmodule
