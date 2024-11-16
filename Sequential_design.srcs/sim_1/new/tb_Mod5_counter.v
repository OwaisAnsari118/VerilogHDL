`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2024 01:20:36 PM
// Design Name: 
// Module Name: tb_Mod5_counter
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


module tb_Mod5_counter #(parameter N = 4);

reg up_dn_in;
reg [N-2:0]data_in;
reg clk;
reg reset_n;
reg load;
wire [N-2:0]q_out;

Mod5_counter #(.N(N)) DUT (
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
        up_dn_in = 1;
        #50
        reset_n = 1;
        #5000 $finish;
    end
endmodule
