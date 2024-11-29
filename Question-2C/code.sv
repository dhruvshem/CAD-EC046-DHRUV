module logic_circuit (
    input logic A, B, C, D,
    output logic Y, Z
);
    assign Y = (~A&D)|(B&D)|(A&~C&D)|(A&~B&C)|(A&B&C&D);
    assign Z = (B&D)|(A&~C&D);
endmodule
