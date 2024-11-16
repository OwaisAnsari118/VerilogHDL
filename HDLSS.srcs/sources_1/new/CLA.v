module CLA (
    input [3:0] a_in,      // 4-bit input A
    input [3:0] b_in,      // 4-bit input B
    input C_in,         // Carry input
    output [3:0] sel,     // 4-bit sum output
    output C_out        // Carry output
);

    wire [3:0] G;       // Generate signals for each bit
    wire [3:0] P;       // Propagate signals for each bit
    wire [4:0] C;       // Carry signals (C[0] = C_in)

    // Generate and Propagate for each bit
    assign G = a_in & b_in;          // Generate
    assign P = a_in | b_in;          // Propagate

    // Carry logic
    assign C[0] = C_in;        // C[0] is the initial carry input
    assign C[1] = G[0] | (P[0] & C[0]); // Carry for bit 1
    assign C[2] = G[1] | (P[1] & C[1]); // Carry for bit 2
    assign C[3] = G[2] | (P[2] & C[2]); // Carry for bit 3
    assign C[4] = G[3] | (P[3] & C[3]); // Carry out

    // Sum output for each bit
    assign S = a_in ^ b_in ^ C[0]; // Sum calculation

    // Final carry out
    assign C_out = C[4];

endmodule
