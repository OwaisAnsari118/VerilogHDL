`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 02:46:19 AM
// Design Name: 
// Module Name: tb_tri_state_bus
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


module tb_tri_state_bus();

reg [7:0] data_bus_in;
reg en_in;
wire [7:0] data_bus_out;

tri_state_bus DUT(
    .data_bus_in(data_bus_in),
    .en_in(en_in),
    .data_bus_out(data_bus_out)
    );
    
always #10 en_in = ~en_in;
always #20 data_bus_in = ~data_bus_in;
 
initial
    begin
    data_bus_in = 0;
    en_in = 0;
    #500 $finish;
   
    end
endmodule
