`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 02:36:56 AM
// Design Name: 
// Module Name: encoder_pt
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


module encoder_pt(
    input [3:0] int_req,
    output reg [1:0] y_out,
    output reg valid_out
    );
    
    always @(*)
        begin
            if(int_req[3]==1'b1)
                begin
                y_out = 2'b11;
                valid_out=1;
                end
            else if(int_req[2]==1'b1)
                begin
                y_out = 2'b10;
                valid_out=1;
                end
            else if(int_req[1]==1'b1)
                begin
                y_out = 2'b01;
                valid_out=1;
                end
            else if (int_req[1]==1'b1)
            begin
                y_out= 2'b00;
                valid_out=1;
            end
            else
                valid_out=0;
           end           
endmodule
