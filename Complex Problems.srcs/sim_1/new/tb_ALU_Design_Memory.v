`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2024 12:59:34 AM
// Design Name: 
// Module Name: tb_ALU_Design_Memory
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


module tb_ALU_Design_Memory();

reg  [3:0] addr_in_0;
reg  [7:0] a_in;
reg        m_en_0;
reg        cs_0;
reg        clk;
wire [7:0] data_out_0;
reg  [3:0] addr_in_1;
reg  [7:0] b_in;
reg        m_en_1;
reg        cs_1;
wire [7:0] data_out_1; 


    
reg  [3:0] opcode_in;
reg        reset_n;
wire [7:0] result_out;
wire carry_out;

ALU_Design_Memory DUT(addr_in_0,a_in,m_en_0,cs_0,clk,data_out_0,addr_in_1,b_in,m_en_1,cs_1,data_out_1,opcode_in,reset_n,result_out,carry_out);
initial
begin
    clk = 0;
    forever #10 clk = ~clk;
end

initial
begin
    reset_n =0;
    #10 reset_n = 1;
end

always #20 a_in = $random;
always #40 b_in = $random;

always #100 opcode_in = opcode_in + 1;

always #20 addr_in_0 = addr_in_0+1;
always #20 addr_in_1 = addr_in_1+1;

always #320 m_en_0 = ~m_en_0;
always #320 m_en_1 = ~m_en_1;

initial
begin
    a_in = 0;
    b_in = 0;
    addr_in_0 = 0;
    addr_in_1 = 0;
    opcode_in = 0;
    m_en_0 = 1;
    m_en_1 = 1;
    cs_0 = 0;
    cs_1 = 0;
    #10
    cs_0 = 1;
    cs_1 = 1;
end
endmodule
