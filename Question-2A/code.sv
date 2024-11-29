module combilogic(
    input logic a,b,c,d,
    output logic Y);
    assign Y = ~a|(~b&~d)|(~b&~c)|(b&d);
endmodule
