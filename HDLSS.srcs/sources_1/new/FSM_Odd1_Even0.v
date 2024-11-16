`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2024 07:48:54 PM
// Design Name: 
// Module Name: FSM_Odd1_Even0
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2024 12:41:16 AM
// Design Name: 
// Module Name: sequence_dect_moore_101_overlapping
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


module FSM_Odd1_Even0(
    input d_in,
    input clk,
    input reset_n,
    output reg q_out
    );
parameter RESET=1'b0;
parameter DONE=1'b1;

reg present_state;
reg next_state;

always@(posedge clk,negedge reset_n)
begin
    if(!reset_n)
    begin
        present_state <= 1'b0;
    end
    else
        present_state <= next_state;         
end

always@*
begin
    next_state = 1'b0;
    case (present_state)
    RESET: if(d_in)
                next_state = DONE;
        else
                next_state = RESET;
    DONE: if(!d_in)
                next_state = DONE;
        else
                next_state = RESET;
    endcase
end   
    
always@*
begin
    q_out = 'b0;
    case (present_state)
    RESET: q_out = (d_in)?DONE:RESET;
    DONE: q_out = 'b0;
    endcase
end
endmodule
