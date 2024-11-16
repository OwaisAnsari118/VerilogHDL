`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/04/2024 11:51:20 PM
// Design Name: 
// Module Name: ALU_Design_Memory
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


module ALU_Design_Memory(
    input  [3:0] addr_in_0,
    input  [7:0] a_in,
    input        m_en_0,
    input        cs_0,
    input        clk,
    output [7:0] data_out_0,
    input  [3:0] addr_in_1,
    input  [7:0] b_in,
    input        m_en_1,
    input        cs_1,
    output [7:0] data_out_1, 


    
    input  [3:0] opcode_in,
    input        reset_n,
    output reg [7:0] result_out,
    output reg carry_out
    );
    
Mem_RAM_16 U0 (addr_in_0, a_in, m_en_0, cs_0, clk, data_out_0);
Mem_RAM_16 U1 (addr_in_1, b_in, m_en_1, cs_1, clk, data_out_1);

reg [3:0] opcode_temp;
reg [7:0] alu_out;
reg c_out;
reg [7:0] a_in_temp;
reg [7:0] b_in_temp;
    

always@(posedge clk, negedge reset_n)
begin
    if(!reset_n)
    begin
        opcode_temp <= 4'b0000;
    end
    else
    begin
        opcode_temp <= opcode_in;
    end
end

always@(*)
begin
    a_in_temp = data_out_0;
    b_in_temp = data_out_1;
    
    alu_out = 0;
    c_out = 0;
    case(opcode_temp)
    4'b0000: alu_out = a_in_temp;
    4'b0001: {c_out,alu_out} = a_in_temp + b_in_temp;
    4'b0010: {c_out,alu_out} = a_in_temp + b_in_temp + 1;
    4'b0011: {c_out,alu_out} = a_in_temp - b_in_temp;
    4'b0100: {c_out,alu_out} = a_in_temp - b_in_temp - 1;
    4'b0101: {c_out,alu_out} = a_in_temp + 1;
    4'b0110: {c_out,alu_out} = a_in_temp - 1;
    4'b0111: alu_out = b_in_temp;
    4'b1000: alu_out = a_in_temp | b_in_temp;
    4'b1001: alu_out = a_in_temp ^ b_in_temp;
    4'b1010: alu_out = a_in_temp & b_in_temp;
    4'b1011: alu_out = ~a_in_temp;
    endcase
end

always@(posedge clk, negedge reset_n)
begin
    if(!reset_n)
    begin
        result_out <= 8'b0;
        carry_out <= 'b0;
    end
    else
    begin
        result_out <= alu_out;
        carry_out <= c_out;
    end
end

endmodule
