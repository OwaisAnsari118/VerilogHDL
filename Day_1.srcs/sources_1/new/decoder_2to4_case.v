`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 01:26:58 AM
// Design Name: 
// Module Name: decoder_2to4_case
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


module decoder_2to4_case(
    input [1:0] sel_in,
    input en_in,
    output reg [3:0] y_out
    );
    always @(*)
        begin  
            /*if(en_in)
                begin
                case(sel_in)
                    2'b00: y_out=4'b0001;
                    2'b01: y_out=4'b0010;
                    2'b10: y_out=4'b0100;
                    2'b11: y_out=4'b1000;
                endcase
                end
             else
                y_out = 4'b0000;*/
             begin
                case({en_in,sel_in})
                    3'b100: y_out=4'b0001;
                    3'b101: y_out=4'b0010;
                    3'b110: y_out=4'b0100;
                    3'b111: y_out=4'b1000;
                    default: y_out=4'b0000;
                endcase
                end
        end
endmodule
