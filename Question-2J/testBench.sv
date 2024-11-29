module gray_tb;
    reg [2:0] b;
    wire [2:0] g; 
    gray dut (b,g);
   initial begin
    b = 3'b000; 
    #1;
    b = 3'b001; #1;
    b = 3'b010; #1;
    b = 3'b011; #1;
    b = 3'b100; #1;
    b = 3'b101; #1;
    b = 3'b110; #1;
    b = 3'b111; #1;
end
endmodule
