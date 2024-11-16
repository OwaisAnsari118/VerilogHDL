`timescale 1ns / 1ps
`define N 16
module tb_sequence_detector;

reg [`N-1:0] seq_in;
reg seq_load;
reg serial_data;
reg clk;
reg reset_n;
wire seq_valid;

sequence_detector uut (
    .seq_in(seq_in),
    .seq_load(seq_load),
    .serial_data(serial_data),
    .clk(clk),
    .reset_n(reset_n),
    .seq_valid(seq_valid)
);


initial begin
    clk = 0;
    forever #5 clk = ~clk;  
end

initial 
begin
        reset_n = 0;
        seq_load = 0;
        seq_in = 24'b0;
        serial_data = 0;
        
        #10 reset_n = 1;
        #20 seq_in = 16'h00af;
    
    #500;
    $finish;
end

endmodule
