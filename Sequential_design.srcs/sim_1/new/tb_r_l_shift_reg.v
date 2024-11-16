`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/08/2024 02:30:31 AM
// Design Name: 
// Module Name: tb_r_l_shift_reg
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


module tb_r_l_shift_reg();
reg dir_in;
reg [3:0]data_in;
reg load;
reg clk;
reg reset_n;
wire [3:0]q_out;
r_l_shift_reg DUT (
            .dir_in(dir_in),
            .data_in(data_in),
            .load(load),
            .clk(clk),
            .reset_n(reset_n),
            .q_out(q_out)
            );
    
    always #200 dir_in = ~dir_in;
    always #5 clk = ~clk;
    always #400 load = ~load;
    always #200 data_in = data_in + 1;
    initial
    begin
    $monitor("$time=%0t,load=%0h,dir_in=%0h,reset_n=%0h,data_in=%0h,q_out=%0h",
                $time,  load,    dir_in,    reset_n,    data_in,    q_out);
        clk = 0;
        reset_n = 0;
        load = 0;
        data_in = 0;
        dir_in = 0;
        #50
        reset_n = 1;
        #5000 $finish;
    end
endmodule
