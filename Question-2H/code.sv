module carpad(
    input  logic [3:0] A,     
    input  logic [3:0] B,    
    output logic [3:0] S      
);
    logic [3:0] C;
    assign C[0] = A[0] & B[0];
    assign S[0] = A[0] ^ B[0];
    assign C[1] = (A[1] & B[1]) | (C[0] & (A[1] ^ B[1]));
    assign S[1] = A[1] ^ B[1] ^ C[0];
    assign C[2] = (A[2] & B[2]) | (C[1] & (A[2] ^ B[2]));
    assign S[2] = A[2] ^ B[2] ^ C[1];
    assign C[3] = (A[3] & B[3]) | (C[2] & (A[3] ^ B[3]));
    assign S[3] = A[3] ^ B[3] ^ C[2];
endmodule
