    `timescale 1ns / 1ps
    //////////////////////////////////////////////////////////////////////////////////
    // Company: 
    // Engineer: 
    // 
    // Create Date: 11/08/2024 08:05:27 PM
    // Design Name: 
    // Module Name: up_down_counter
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
    
    
    module up_down_counter(
        input clk,            
        input reset_n,       
        input up_counter,     
        input down_counter,   
        output reg [3:0] count 
    );
    
                  always @(posedge clk or negedge reset_n) begin
        if (!reset_n) begin
            count <= 4'b0000;  
        end else if (up_counter) begin
            if (count < 4'b1001)  
                count <= count + 1;
            else
                count <= 4'b0000;  
        end else if (down_counter) begin
            if (count > 4'b0000) 
                count <= count - 1;
            else
                count <= 4'b0000; 
        end
    end
    
endmodule

