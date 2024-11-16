`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 02:32:47 PM
// Design Name: 
// Module Name: tb_Multibit
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


module tb_Multibit #(parameter DATA_WIDTH=8);

reg [DATA_WIDTH-1:0] a_in;
reg [DATA_WIDTH-1:0] b_in;
wire [DATA_WIDTH-1:0] y_out;

//module instance
Multi_bit #(.DATA_WIDTH(8)) DUT (.a_in(a_in),.b_in(b_in),.y_out(y_out));

initial
    begin
    
    a_in = 0;
    b_in = 0;
    
    #10 a_in = 4'b1010;
        b_in = 4'b1011;
    
    #20 a_in = 4'b1111;
        b_in = 4'b0111;
end
endmodule
