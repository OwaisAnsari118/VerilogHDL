`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/05/2024 02:45:43 AM
// Design Name: 
// Module Name: TOP
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


module TOP(
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
    input [3:0] addr_out,
    input m_en_out,
    input cs_out,
    output [8:0] result_out
    
    );
    
Mem_RAM_16 U0 (addr_in_0, a_in, m_en_0, cs_0, clk, data_out_0);
Mem_RAM_16 U1 (addr_in_1, b_in, m_en_1, cs_1, clk, data_out_1);

reg [8:0] data_in_r;
reg [3:0] opcode_temp;
reg [7:0] alu_out;
reg c_out;
reg [7:0] a_in_temp;
reg [7:0] b_in_temp;
wire [8:0] temp_out; 
    

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
        data_in_r <= 9'b0000_0000_0;
    end
    else
    begin
        data_in_r <= temp_out;
    end
end

assign temp_out = {c_out,alu_out};

Ram_16x9bit U3 (addr_out,m_en_out,cs_out,data_in_r,clk,result_out);

endmodule

