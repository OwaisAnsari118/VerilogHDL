`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/06/2024 12:47:55 AM
// Design Name: 
// Module Name: tb_up_dn_counter_load
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


module tb_up_dn_counter_load #(parameter N = 4);

reg up_dn_in;
reg [N-1:0]data_in;
reg clk;
reg reset_n;
reg load;
wire [N-1:0]q_out;

up_dn_counter_load #(.N(N)) DUT (
            .up_dn_in(up_dn_in),
            .clk(clk),
            .data_in(data_in),
            .reset_n(reset_n),
            .load(load),
            .q_out(q_out)
            );
    always #200 up_dn_in = ~up_dn_in;
    always #5 clk = ~clk;
    always #400 load = ~load;
    always #200 data_in = data_in + 1;
    initial
    begin
        clk = 0;
        reset_n = 0;
        load = 0;
        data_in = 0;
        up_dn_in = 0;
        #50
        reset_n = 1;
        #500 $finish;
    end
endmodule
