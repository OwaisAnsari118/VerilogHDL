`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/11/2024 03:07:10 PM
// Design Name: 
// Module Name: combo_logic
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


module combo_logic(
    input [2:0] ieq,
    output reg y_out
    );

always @* begin


    y_out = 0;
    casez(ieq) //synopsys parallel_case
        3'b1??: y_out = ieq[2];
        3'b?1?: y_out = ieq[1];
        3'b??1: y_out = ieq[0];
    endcase    
end
endmodule
