module ALU_4bit (
    input  [3:0] A,          
    input  [3:0] B,          
    input  Cin,              
    input  [2:0] Op,         
    output [3:0] Result,     
    output Cout              
);

wire [3:0] carry;             

    
ALU_Design ALU_0 (
        .A(A[0]),
        .B(B[0]),
        .Cin(Cin),
        .Op(Op),
        .Result(Result[0]),
        .Cout(carry[0]));

ALU_Design ALU_1 (
        .A(A[1]),
        .B(B[1]),
        .Cin(carry[0]),
        .Op(Op),
        .Result(Result[1]),
        .Cout(carry[1]));

ALU_Design ALU_2 (
        .A(A[2]),
        .B(B[2]),
        .Cin(carry[1]),
        .Op(Op),
        .Result(Result[2]),
        .Cout(carry[2]));

ALU_Design ALU_3 (
        .A(A[3]),
        .B(B[3]),
        .Cin(carry[2]),
        .Op(Op),
        .Result(Result[3]),
        .Cout(Cout));

endmodule