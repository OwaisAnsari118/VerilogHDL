`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 02:15:19 AM
// Design Name: 
// Module Name: r_l_shift_reg
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


module r_l_shift_reg(
        input [3:0] data_in,
        input load,
        input dir_in,
        input clk,
        input reset_n,
        output reg [3:0] q_out
    );
always @ (posedge clk, negedge reset_n)
    begin
        if(!reset_n)
            begin
                q_out <= 4'b0000;
            end
        else
            begin
                if(load)
                begin
                    q_out <= data_in;
                end
                else
                    begin
                        if(dir_in)
                        q_out <= {q_out[0],q_out[3:1]};
                        else
                        q_out <= {q_out[2:0],q_out[3]};
                    end
            end
    end
endmodule
