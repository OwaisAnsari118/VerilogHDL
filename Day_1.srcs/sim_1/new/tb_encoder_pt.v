`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/05/2024 03:03:56 AM
// Design Name: 
// Module Name: tb_encoder_pt
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


module tb_encoder_pt();

reg [3:0]int_req;
wire [1:0]y_out;
wire valid_out;

encoder_pt DUT(
    .int_req(int_req),
    .y_out(y_out),
    .valid_out(valid_out)
    );
    
    always #10 int_req =int_req+1;
    
    initial
    begin
    $monitor("time=%0t,int_req,y_out=%0h,valid_out=%0h",$time,int_req, y_out, valid_out);
        int_req=0;
        #160 $finish;
    end
    
endmodule
