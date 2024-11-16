`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 10:01:55 PM
// Design Name: 
// Module Name: tb_D_ff_timing_check
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


/*module tb_D_ff_timing_check();
reg d_in;
reg clk;
reg reset_n;
wire q_out;

D_ff_timing_check DUT(d_in,clk,reset_n,q_out);

always #5 clk = ~clk;

initial
*//*fork
    d_in = 0;
    #3 d_in = 1;
    #7 d_in = 0;
    #12 d_in = 1;
    #14 d_in = 0;
    #20 d_in = 1;
    #24 d_in = 0;
join*//*

*//*fork
    d_in = 0;
    #5 d_in = 1;
    #14.5 d_in = 0;
    #22 d_in = 1;
    #28 d_in = 0;
    #35 d_in = 1;
    #42 d_in = 0;
    #52 d_in = 0;
join*//*

fork
    d_in = 0;
    #4 d_in = 1;
    #6 d_in = 0;
    #15 d_in = 1;
    #24.5 d_in = 0;
    #34.5 d_in = 1;
    #35.5 d_in = 0;
    #42 d_in = 0;
    #53 d_in = 0;
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
    //specparam tsu=2;
    specparam tsu=1;
    $setup(D1,clk1,tsu);
endspecify

endmodule*/




module tb_D_ff_timing_check();
reg d_in;
reg clk;
reg reset_n;
wire q_out;

D_ff_timing_check DUT(d_in,clk,reset_n,q_out);

always #5 clk = ~clk;



initial
fork
    d_in = 1;
    #4 d_in = 0;
    #6 d_in = 1;
    #15 d_in = 0;
    #21 d_in = 1;
    #27 d_in = 0;
    #35.5 d_in = 1;
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
    specparam tsu=1;
    specparam th=0.5;
    specparam tw=1.5;
    $setup(D1,clk1,tsu);
    $hold(clk1,D1,th);
    $setuphold(clk1,D1,tsu,th);
    $width(posedge D1,tw);
endspecify
initial
begin
$monitor("time=%0t,d_in=%0h,q_out=%0h,tsu=%0d,th=%0d,tw=%0d",$time,d_in,q_out,tsu,th,tw);
end
endmodule