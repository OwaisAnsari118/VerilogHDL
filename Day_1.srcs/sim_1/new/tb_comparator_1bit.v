`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2024 02:42:20 AM
// Design Name: 
// Module Name: tb_comparator_1bit
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


module tb_comparator_1bit();

reg a_in;
reg b_in;
wire g_out;
wire e_out;
wire l_out;

comparator_1bit DUT (
               .a_in(a_in),
               .b_in(b_in),
               .g_out(g_out),
               .e_out(e_out),
               .l_out(l_out)
               );
               
initial 
    begin
        a_in = 0;
        b_in = 0;
        
        #5 a_in = 0;
           b_in = 1;
           
        #5 a_in = 1;
            b_in = 0;
           
        #5 a_in = 1;
           b_in = 1;
            
            
    end
endmodule
