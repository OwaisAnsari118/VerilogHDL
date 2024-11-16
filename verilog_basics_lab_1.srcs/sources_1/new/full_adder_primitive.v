`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 02:23:11 PM
// Design Name: 
// Module Name: full_adder_primitive
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


module full_adder_primitive(
     input a_in,
     input b_in,
     input c_in,
     output sum,
     output carry
    );
    
 Half_ader u1 (a_in,b_in,y_out,y1);
 Half_ader u2 (y_out,c_in,sum,y2);
 or u3 (carry,y1,y2);
    
endmodule
