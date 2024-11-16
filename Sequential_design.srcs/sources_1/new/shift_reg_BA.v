`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 08:43:19 PM
// Design Name: 
// Module Name: shift_reg_BA
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


module shift_reg_BA(
    input d_in,
    input reset_in,
    input clk,
    output reg q_out
    );
reg temp1,temp2;
    
always@(posedge clk, negedge reset_in)
    //using BA
    /*begin   
        if(!reset_in)
        begin
           temp1='b0;
           temp2='b0;
           q_out='b0;
        end
        else
        begin
            temp1=d_in;
            temp2=temp1;
            q_out=temp2;
        end
     end */   
     
     //*****using NBA  ***
     begin   
        if(!reset_in)
        begin
           temp1<='b0;
           temp2<='b0;
           q_out<='b0;
        end
        else
        begin
            temp1<=d_in;
            temp2<=temp1;
            q_out<=temp2;
        end
     end 
endmodule
