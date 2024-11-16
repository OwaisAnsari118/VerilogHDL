`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 02:20:02 PM
// Design Name: 
// Module Name: tb_ring_counter
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


module tb_ring_counter();

reg [3:0]data_in;
reg clk;
reg reset_n;
reg load;
wire [3:0]q_out;

ring_counter DUT (         
            .clk(clk),
            .data_in(data_in),
            .reset_n(reset_n),
            .load(load),
            .q_out(q_out)
            );
    always #5 clk = ~clk;
    always #400 load = ~load;
    initial
    begin
        clk = 0;
        reset_n = 0;
        load = 0;
        data_in = 4'b1000;
        #50
        reset_n = 1;
        #5000 $finish;
    end
endmodule
