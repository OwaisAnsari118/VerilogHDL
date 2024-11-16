`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2024 06:26:40 PM
// Design Name: 
// Module Name: D_Latch_8bit
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


module D_Latch_8bit(
    input [7:0] d_in,
    input enable_in,
    output [7:0] q_out
    );
    
    D_Latch_active_low U1(q_out[0],d_in[0],!enable_in);
    D_Latch_active_low U2(q_out[1],d_in[1],!enable_in);
    D_Latch_active_low U3(q_out[2],d_in[2],!enable_in);
    D_Latch_active_low U4(q_out[3],d_in[3],!enable_in);
    D_Latch_active_low U5(q_out[4],d_in[4],!enable_in);
    D_Latch_active_low U6(q_out[5],d_in[5],!enable_in);
    D_Latch_active_low U7(q_out[6],d_in[6],!enable_in);   
endmodule
