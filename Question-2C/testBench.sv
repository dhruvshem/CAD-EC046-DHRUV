module logic_circuit_tb;
    logic A, B, C, D;
    logic Y, Z;
    logic_circuit uut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .Y(Y),
        .Z(Z)
    );
    initial begin
        A = 0; B = 0; C = 0; D = 0; #10;
        A = 0; B = 0; C = 0; D = 1; #10;
        A = 0; B = 0; C = 1; D = 0; #10;
        A = 0; B = 0; C = 1; D = 1; #10;
        A = 0; B = 1; C = 0; D = 0; #10;
        A = 0; B = 1; C = 0; D = 1; #10;
        A = 0; B = 1; C = 1; D = 0; #10;
        A = 0; B = 1; C = 1; D = 1; #10;
        A = 1; B = 0; C = 0; D = 0; #10;
        A = 1; B = 0; C = 0; D = 1; #10;
        A = 1; B = 0; C = 1; D = 0; #10;
        A = 1; B = 0; C = 1; D = 1; #10;
        A = 1; B = 1; C = 0; D = 0; #10;
        A = 1; B = 1; C = 0; D = 1; #10;
        A = 1; B = 1; C = 1; D = 0; #10;
        A = 1; B = 1; C = 1; D = 1; #10;
    end
endmodule
