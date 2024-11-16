`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 09:40:13 AM
// Design Name: 
// Module Name: complex_design
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


module complex_design(
    input     [7:0] d_in,
    input           clk,
    input           reset_n,
    output reg[7:0] q_out
    );
    reg [7:0] q_p,q_n;
    //q_p
    always@(posedge clk)
    begin
        if(!reset_n)
            q_p <= 0;
        else
            q_p <= d_in;
    end
    //q_N
    always@(negedge clk)
    begin 
        if(!reset_n)
            q_n <= 0;
        else
            q_n <= d_in;
    end
    //MUX
    always@*
    begin
        if(clk)
            q_out = q_p;
        else
            q_out = q_n;
    end
    
    specify
        specparam dtoq = 2;
        specparam ctoq = 2;
        
        (d_in => q_out) = dtoq;
        (clk => q_out) = ctoq;
    endspecify
endmodule
