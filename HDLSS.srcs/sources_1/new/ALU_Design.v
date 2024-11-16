module ALU_Design 
(
    input  wire A,           
    input  wire B,           
    input  wire Cin,         
    input  wire [2:0] Op,    
    output reg  Result,      
    output wire Cout        
);

wire G, P;              
wire Sum;
                   
assign G = A & B;       
assign P = A ^ B;       

assign Sum = P ^ Cin;            
assign Cout = G | (P & Cin);     

always @(*) 
begin
    case (Op)
        3'b000: Result = A & B;         
        3'b001: Result = A | B;         
        3'b010: Result = A ^ B;         
        3'b011: Result = Sum;           
        3'b100: Result = A - B;         
        3'b101: Result = ~A;            
        3'b110: Result = A & ~B;        
        3'b111: Result = ~(A ^ B);      
        default: Result = 1'b0;         
    endcase
end
endmodule