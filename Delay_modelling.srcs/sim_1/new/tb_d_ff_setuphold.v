`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2024 02:39:26 PM
// Design Name: 
// Module Name: tb_d_ff_setuphold
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


module tb_d_ff_setuphold();

reg d_in;
reg clk;
reg reset_n;
wire q_out;

D_ff_timing_check DUT(d_in,clk,reset_n,q_out);

always #5 clk = ~clk;

initial
begin
    $monitor("time=%0t,d_in=%0h,q_out=%0h,tsu=%0d,th=%0d",$time,d_in,q_out,tsu,th);
end


initial
fork
    d_in = 0;
    #4 d_in = 1;
    #6 d_in = 0;
    #15 d_in = 1;
    #24.5 d_in = 0;
    #34.5 d_in = 1;
    #35.5 d_in = 0;
    #42 d_in = 1;
    #46 d_in = 0;
    #49 d_in = 1;
    #51 d_in = 0;
    #55.5 d_in = 1;
join


initial
begin
    clk=0;
    reset_n=0;
    #2 reset_n =1;
    #100 $finish();
end


assign D1=d_in;
assign clk1 = clk;
specify
    specparam th=0.5;
    specparam tsu=1;
    $setuphold(clk1,D1,tsu,th);
endspecify

endmodule

