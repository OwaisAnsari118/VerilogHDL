`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2024 01:15:19 PM
// Design Name: 
// Module Name: task_no_of_0s
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


module task_no_of_0s(
    input [7:0] d_in,
    output reg [3:0] no_of_0s
);
    
    task count_0 (input [7:0] d_in,output [3:0] no_of_0s);
        integer count;
        integer i;
        begin
            count = 0;
            for ( i = 0; i < 8; i = i + 1) begin
                if (~d_in[i]) begin
                    count = count + 1;
                end
            end
            no_of_0s = count;
        end
    endtask

    always @(*) begin
        count_0(d_in, no_of_0s);
    end

endmodule

