`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 02:54:15 PM
// Design Name: 
// Module Name: tb_delay
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


module tb_delay();
    reg a_in;
    reg b_in;
    reg c_in;
    wire y_out;


delay DUT(a_in,b_in,c_in,y_out);

initial
begin
        a_in <= 0; b_in <= 0; c_in <= 0;
    #10 a_in = 1; b_in = 0; c_in = 1;
    
    #50 $finish;
end
endmodule
