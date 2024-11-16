`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 02:46:35 PM
// Design Name: 
// Module Name: tb_h_adder
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


module tb_h_adder();
reg a_in;
reg b_in;
wire sum_out;
wire carry_out;

h_adder DUT (a_in,b_in,sum_out,carry_out);

initial 
/*begin
    a_in=0; b_in=0;
    #10 a_in=1;//10
    #10 a_in=0;//20
    #5 b_in=1;//25
    #5 a_in=1;//30
    #10 b_in=0;//40
    #10 a_in=0;//50
    #10 a_in=1;//60
    #20 b_in=1;//80
    #50 $finish();
end*/
fork
    a_in=0; b_in=0;
    #10 a_in=1;//10
    #20 a_in=0;//20
    #25 b_in=1;//25
    #30 a_in=1;//30
    #40 b_in=0;//40
    #50 a_in=0;//50
    #60 a_in=1;//60
    #80 b_in=1;//80
    #100 $finish();
join
endmodule
