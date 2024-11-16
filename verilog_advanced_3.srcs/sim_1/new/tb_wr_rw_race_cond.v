`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 03:26:21 PM
// Design Name: 
// Module Name: tb_wr_rw_race_cond
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


module tb_wr_rw_race_cond();

reg y1,y2;
reg clk;

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end
//************write-read or read-write
/*always@(posedge clk) begin
    y1 = 0;
end

always@(posedge clk) begin
    y2 = y1;
end*/

//**********write-write
/*always@(posedge clk) begin
    y1 = 1;
end

always@(posedge clk) begin
    y1 = 0;
end*/


//*********fork join
/*always@(posedge clk) fork
    y1 = 1;
    y2 = y1;
join*/


/*always@(posedge clk) begin
    y1 = 1;
    y2 = y1;
end*/
endmodule
