`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/16/2024 09:29:16 AM
// Design Name: 
// Module Name: counter_up_dn
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

//using defparam
/*module counter_up_dn #(parameter DATA_WIDTH = 4,up_down = 0)
(
    input       enable_in,
    input       clk,
    input       reset_n,
    output reg [DATA_WIDTH-1:0]count_out
    );
    
   
    
always@(posedge clk,negedge reset_n)
begin
    if(!reset_n)
        count_out <= {DATA_WIDTH{'b0}};
    else 
        if(enable_in) 
            if(up_down) 
                count_out <= count_out + 1;
            else    
                count_out <= count_out - 1;
         
end
endmodule*/


//using localparam
module counter_up_dn #(parameter DATA_WIDTH = 4,count_type = 0)
(
    input       enable_in,
    input       clk,
    input       reset_n,
    output reg [DATA_WIDTH-1:0]count_out
    );
    
 localparam up_down = 0 + count_type;  
    
always@(posedge clk,negedge reset_n)
begin
    if(!reset_n)
        count_out <= {DATA_WIDTH{'b0}};
    else 
        if(enable_in) 
            if(up_down) 
                count_out <= count_out + 1;
            else    
                count_out <= count_out - 1;
         
end
endmodule