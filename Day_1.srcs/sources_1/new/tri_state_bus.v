`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2024 02:39:58 AM
// Design Name: 
// Module Name: tri_state_bus
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


module tri_state_bus(
    input [7:0] data_bus_in,
    input en_in,
    output [7:0] data_bus_out
    );
    
/*always @*
begin
    if(en_in)
        data_bus_out = data_bus_in;
    else
        data_bus_out = 8'bzzzz_zzzz;
end*/
assign data_bus_out = (en_in)?data_bus_in:8'bzzzz_zzzz;

endmodule
