`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 01:13:33 PM
// Design Name: 
// Module Name: Mod5_counter
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


module Mod5_counter #(parameter N=4)(
            input up_dn_in,
            input [N-2:0] data_in,
            input clk,
            input reset_n,
            input load,
            output reg [N-2:0] q_out
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
                        begin
                             
                            if(q_out==3'b100)
                                 q_out <= 3'b000; 
                            else
                            q_out <= q_out + 1;
                        end        
                        else
                        begin
                            if(q_out==3'b000)
                                q_out <= 3'b100;
                            else
                             q_out <= q_out - 1;
                    end
            end
        end
    end
endmodule
