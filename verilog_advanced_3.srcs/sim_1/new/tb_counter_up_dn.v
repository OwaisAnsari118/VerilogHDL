`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 09:38:07 AM
// Design Name: 
// Module Name: tb_counter_up_dn
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


module tb_counter_up_dn();

parameter DATA_WIDTH = 3;
    reg       enable_in;
    reg       clk;
    reg       reset_n;
    wire[DATA_WIDTH-1:0]count_out;


counter_up_dn #(.DATA_WIDTH(3)) DUT (enable_in,clk,reset_n,count_out);
//defparam DUT.up_down = 0; //using defparam
defparam DUT.count_type = 1;
always #5 clk = ~clk;


initial begin
    clk = 0;
    reset_n = 0;
    enable_in = 0;
    #20 reset_n = 1;
        enable_in = 1;
    #200 reset_n = 0;
    #50 $finish;
end
endmodule
