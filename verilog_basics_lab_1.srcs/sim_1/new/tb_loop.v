`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2024 02:03:03 PM
// Design Name: 
// Module Name: tb_loop
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


module tb_loop();
reg clk;

always forever #5 clk = ~clk;
/*initial 
begin   
    begin
    clk=0;
    //forever #5 clk = ~clk;
    end
end*/
initial 
    begin 
    #250 $finish();
    end 

endmodule
