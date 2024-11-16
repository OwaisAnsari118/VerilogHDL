`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 11:36:41 PM
// Design Name: 
// Module Name: nbit_up_down_counter
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


module nbit_up_down_counter #(parameter N=4)(
            input up_dn_in,
            input clk,
            input reset_n,
            output reg [N-1:0] q_out
    );
always @ (posedge clk, negedge reset_n)
    begin
        if(!reset_n)
            begin
                q_out <= {N{'b0}};
            end
        else
            begin
                if(up_dn_in)
                    q_out <= q_out + 1;
                else
                    q_out <= q_out - 1;
            end
    end
endmodule
