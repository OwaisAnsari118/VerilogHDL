`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 09:05:04 PM
// Design Name: 
// Module Name: tb_result_out_8bit
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


module tb_result_out_8bit();
//`define DATA_WIDTH  8 
reg [`DATA_WIDTH-1:0]a_in;
reg [`DATA_WIDTH-1:0]b_in;
reg [`DATA_WIDTH-7:0]opcode;
wire [`DATA_WIDTH-1:0]result_out;

always #50 opcode = opcode + 1;
always #10 a_in = $random();
always #10 b_in = $random();
result_out_8bit DUT(a_in,b_in,opcode,result_out);

initial 
begin
    a_in = 0;
    b_in = 0;
    opcode = 2'b00;
    
    #500 $finish;
end
endmodule
