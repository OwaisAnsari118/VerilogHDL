`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2024 02:03:40 AM
// Design Name: 
// Module Name: tb_ifdef
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


module tb_ifdef();

reg clk;
`ifdef INCLUDE_RST
        reg reset_n;
`endif
reg [7:0] d_in;
wire [7:0] d_out;

PIPO_16bit DUT(clk,d_in,reset_n,d_out);

always #1 clk = ~clk;
always #2 d_in = d_in + 1;

initial
begin
    clk = 0;
    `ifdef INCLUDE_RST
        reset_n = 0;
    `endif
    d_in = 0;
    
    #10 reset_n = 1;
    //for 8 bit
    #2600 reset_n = 0;
    //for 16 bit
    //#70000 reset_n = 0;
    #100 $finish;
end
endmodule
