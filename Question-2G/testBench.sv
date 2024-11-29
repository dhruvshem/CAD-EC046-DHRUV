module testbench;
  reg [7:0] A;       
  wire [2:0] Y;      
  wire valid;        
    prio_enco DUT (A, Y, valid);
  initial begin
    A = 8'b00000000; #10;
    A = 8'b00000001; #10;
    A = 8'b00000010; #10;
    A = 8'b00000100; #10;
    A = 8'b00001000; #10;
    A = 8'b00010000; #10;
    A = 8'b00100000; #10;
    A = 8'b01000000; #10;
    A = 8'b10000000; #10;
    A = 8'b11111111; #10;
  end
endmodule
