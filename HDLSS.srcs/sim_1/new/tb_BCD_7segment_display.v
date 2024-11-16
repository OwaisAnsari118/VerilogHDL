`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 04:34:06 PM
// Design Name: 
// Module Name: tb_BCD_7segment_display
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


module tb_BCD_7segment_display();

reg [3:0]BCD;
wire [6:0] segment;

BCD_7segment_display DUT(BCD,segment);
always #10 BCD = BCD + 1;
initial 
begin
    BCD = 0;
    #100 $finish;
 end   
endmodule
