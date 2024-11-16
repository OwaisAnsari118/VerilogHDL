`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2024 03:14:37 PM
// Design Name: 
// Module Name: tb_beh_desgin
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


module tb_beh_desgin();

    reg a_in;
    reg b_in;
    reg c_in;
    reg y_out;


/*initial begin
    a_in <= 0; b_in <= 0; c_in <= 0; y_out = 0;
    
    #10 a_in = 1; b_in = 0; c_in = 1;
    
    
    //#5 y_out <= (a_in & b_in) | c_in;
    //y_out <= #5 (a_in & b_in) | c_in;
    y_out <= #10 (a_in & b_in) | c_in;
    $monitor("Time: %t, a_in: %b, b_in: %b, c_in: %b, y_out: %b", $time, a_in, b_in, c_in, y_out);

    #60 $finish;
end*/
initial
fork 
        a_in <= 0; b_in <= 0; c_in <= 0; y_out = 0;
    #5  a_in = 1; #5  b_in = 0; #5  c_in = 1;
    #10 a_in <= 0;#10 b_in <= 1;#10 c_in <= 1;
    #25 a_in = 1; #25 b_in = 0; #25 c_in = 1;
    
    y_out <= #10 (a_in & b_in) | c_in;
join
endmodule
