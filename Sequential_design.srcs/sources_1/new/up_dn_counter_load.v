`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 12:31:08 AM
// Design Name: 
// Module Name: up_dn_counter_load
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


module up_dn_counter_load #(parameter N=4)(
            input up_dn_in,
            input [N-1:0] data_in,
            input clk,
            input reset_n,
            input load,
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
                if(load)
                begin
                    q_out <= data_in;
                end
                else
                    begin
                        if(up_dn_in)
                        q_out <= q_out + 1;
                        else
                        q_out <= q_out - 1;
                    end
            end
    end
            
endmodule
