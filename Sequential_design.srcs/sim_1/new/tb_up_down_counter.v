`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 11:55:39 PM
// Design Name: 
// Module Name: tb_up_down_counter
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


module tb_up_down_counter #(parameter N = 4);

reg up_dn_in;
reg clk;
reg reset_n;
wire [N-1:0]q_out;
nbit_up_down_counter #(.N(N)) DUT (
            .up_dn_in(up_dn_in),
            .clk(clk),
            .reset_n(reset_n),
            .q_out(q_out)
            );
    always #200 up_dn_in = ~up_dn_in;
    always #10 clk = ~clk;
    initial
    begin
        clk = 0;
        reset_n = 0;
        up_dn_in = 1;
        #50
        reset_n = 1;
        #500 $finish;
    end

endmodule
