module BCD_Adder_tb;
    reg [7:0] A, B;   
    reg Cin;        
    wire [7:0] S;    
    wire c;          
    BCD_Adder uut (A,B,Cin,S,c);
    initial
     begin
        A = 8'b00000010;B = 8'b00000011;Cin = 0;#10;
        A = 8'b00001001;B = 8'b00000010;Cin = 0;#10;
        A = 8'b01011000;B = 8'b01001001;Cin = 0;#10;
        A = 8'b00000101;B = 8'b00000101;Cin = 1;#10;
        A = 8'b10011001;B = 8'b10011001; Cin = 0;#10;
        A = 8'b00000000;B = 8'b00000000;Cin = 0;#10;
        A = 8'b00100110;B = 8'b00010101;Cin = 1;#10;
    end
endmodule
