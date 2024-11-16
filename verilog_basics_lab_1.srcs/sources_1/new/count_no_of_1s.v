`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 02:46:19 PM
// Design Name: 
// Module Name: count_no_of_1s
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


module count_no_of_1s(
    input [7:0] a_in,
    output [3:0] no_of_1s
    );
    
integer i;                
     function [3:0]count_1 ([7:0]a_in);
     begin
        count_1 = 0;
        for(i=0; i<8; i=i+1)
        begin
            if(a_in[i])
                count_1=count_1+1;
        end
     end
     endfunction
     
     assign  no_of_1s = count_1(a_in);            

endmodule
