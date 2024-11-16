`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2024 05:50:49 PM
// Design Name: 
// Module Name: and_or_delay
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


module and_or_delay(
    input a_in,
    input b_in,
    input c_in,
    input d_in,
    output y_out
    );
    
    wire y1,y2;
    //distributed delay
    assign #3 y1 = a_in && b_in;
    assign #3 y2 = c_in && d_in;
    assign #7 y_out = y1 | y2;
    
    /*//lumped delay
    assign y1 = a_in && b_in;
    assign y2 = c_in && d_in;
    assign #7 y_out = y1 | y2;*/
endmodule
