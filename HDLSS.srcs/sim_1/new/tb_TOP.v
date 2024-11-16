`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2024 09:27:55 PM
// Design Name: 
// Module Name: tb_TOP
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



module tb_TOP;

    reg clk;
    reg reset_n;
    reg up_counter;
    reg down_counter;
    wire [6:0] segment;

    TOP uut (
        .clk(clk),
        .reset_n(reset_n),
        .up_counter(up_counter),
        .down_counter(down_counter),
        .segment(segment)
    );

    
    always begin
        #5 clk = ~clk;  
    end

   
    initial begin
        
        clk = 0;
        reset_n = 0;
        up_counter = 0;
        down_counter = 0;

        
        #10 reset_n = 1;  

      
        #10 up_counter = 1;
        #300 up_counter = 0;  

        
        #10 down_counter = 1;
        #100 down_counter = 0;  

        
        #10 up_counter = 1;  
        #100 up_counter = 0;  

        #10 down_counter = 1;  
        #50 down_counter = 0;  

        #30 $finish; 
    end

    initial begin
        $monitor("At time %t, count = %d, segment = %b", $time, uut.count, segment);
    end

endmodule

