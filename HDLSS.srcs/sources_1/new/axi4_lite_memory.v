`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2024 06:18:27 PM
// Design Name: 
// Module Name: axi4_lite_memory
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


module axi4_lite_ram (
    // AXI4-Lite Write Address Channel
    input wire [31:0] AWADDR,   // Write address
    input wire AWVALID,          // Write address valid
    output wire AWREADY,         // Write address ready
    
    // AXI4-Lite Write Data Channel
    input wire [31:0] WDATA,    // Write data
    input wire [3:0] WSTRB,     // Write strobes (used for byte/word enable)
    input wire WVALID,           // Write data valid
    output wire WREADY,          // Write data ready
    
    // AXI4-Lite Write Response Channel
    output wire BVALID,          // Write response valid
    input wire BREADY,           // Write response ready
    
    // AXI4-Lite Read Address Channel
    input wire [31:0] ARADDR,    // Read address
    input wire ARVALID,          // Read address valid
    output wire ARREADY,         // Read address ready
    
    // AXI4-Lite Read Data Channel
    output wire [31:0] RDATA,    // Read data
    output wire RVALID,          // Read data valid
    input wire RREADY,           // Read data ready
    
    // Clock and Reset
    input wire CLK,
    input wire RESET
);

    // RAM configuration
    reg [31:0] ram [0:255];  // 256 x 32-bit words RAM
    reg [31:0] rdata_reg;    // Read data register
    
    // Write operation logic
    reg awready_reg, wready_reg, bvalid_reg;
    always @(posedge CLK or posedge RESET) begin
        if (RESET) begin
            awready_reg <= 1'b0;
            wready_reg <= 1'b0;
            bvalid_reg <= 1'b0;
        end else begin
            // Write address handshake
            if (AWVALID && !AWREADY) begin
                awready_reg <= 1'b1;
            end else if (AWVALID && AWREADY) begin
                awready_reg <= 1'b0;
            end

            // Write data handshake
            if (WVALID && AWREADY && !WREADY) begin
                wready_reg <= 1'b1;
            end else if (WVALID && WREADY) begin
                wready_reg <= 1'b0;
            end

            // Handle write to memory (Check WSTRB for byte enable if needed)
            if (WVALID && AWREADY) begin
                if (WSTRB[0]) ram[AWADDR[7:0]] <= WDATA[7:0];
                if (WSTRB[1]) ram[AWADDR[7:0] + 1] <= WDATA[15:8];
                if (WSTRB[2]) ram[AWADDR[7:0] + 2] <= WDATA[23:16];
                if (WSTRB[3]) ram[AWADDR[7:0] + 3] <= WDATA[31:24];
            end

            // Write response logic
            if (WVALID && WREADY) begin
                bvalid_reg <= 1'b1;
            end else if (BREADY && BVALID) begin
                bvalid_reg <= 1'b0;
            end
        end
    end

    // Read operation logic
    reg arready_reg, rvalid_reg;
    always @(posedge CLK or posedge RESET) begin
        if (RESET) begin
            arready_reg <= 1'b0;
            rvalid_reg <= 1'b0;
        end else begin
            // Read address handshake
            if (ARVALID && !ARREADY) begin
                arready_reg <= 1'b1;
            end else if (ARVALID && ARREADY) begin
                arready_reg <= 1'b0;
            end

            // Read data from RAM
            if (ARVALID && ARREADY) begin
                rdata_reg <= ram[ARADDR[7:0]]; // Reading from RAM at address (lower 8 bits of ARADDR)
            end

            // Read data response
            if (ARVALID && ARREADY) begin
                rvalid_reg <= 1'b1;
            end else if (RREADY && RVALID) begin
                rvalid_reg <= 1'b0;
            end
        end
    end

    // Output the signals
    assign AWREADY = awready_reg;
    assign WREADY = wready_reg;
    assign BVALID = bvalid_reg;
    assign ARREADY = arready_reg;
    assign RDATA = rdata_reg;
    assign RVALID = rvalid_reg;

endmodule

