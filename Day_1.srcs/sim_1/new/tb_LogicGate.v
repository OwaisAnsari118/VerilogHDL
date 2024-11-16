`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2024 02:45:15 PM
// Design Name: 
// Module Name: tb_LogicGate
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


module tb_LogicGate #(parameter DATA_WIDTH=4);

reg [DATA_WIDTH-1:0] a_in;
reg [DATA_WIDTH-1:0] b_in;
wire [DATA_WIDTH-1:0] NOT_out,AND_out,NAND_out,OR_out,NOR_out,XOR_out,XNOR_out;

Logic_gate4bit #(.DATA_WIDTH(4)) DUT(
    .a_in(a_in),
    .b_in(b_in),
    .NOT_out(NOT_out),
    .AND_out(AND_out),
    .NAND_out(NAND_out),
    .OR_out(OR_out),
    .NOR_out(NOR_out),
    .XOR_out(XOR_out),
    .XNOR_out(XNOR_out));
    
    initial 
        begin
        a_in = 0;
        b_in = 0;
        
        #10 a_in = 4'b1100;
            b_in = 4'b1101;
            
        

end
endmodule
