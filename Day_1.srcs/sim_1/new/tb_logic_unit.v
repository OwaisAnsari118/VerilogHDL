`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 02:02:04 AM
// Design Name: 
// Module Name: tb_logic_unit
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


module tb_logic_unit;

reg [3:0] a_in;
reg [3:0] b_in;
reg [1:0] opcode;
wire [3:0] result_out;

logic_unit DUT (
            .a_in(a_in),
            .b_in(b_in),
            .opcode(opcode),
            .result_out(result_out));
            
            always #10 a_in = a_in + 1;
            always #10 b_in = b_in + 1;
            always #10 opcode = opcode + 1;
            initial 
                begin
                    a_in = 4'b0000;
                    b_in = 4'b0000;
                    opcode = 2'b00;
                    
                    #100 $finish;
                end    
endmodule
