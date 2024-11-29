module carpad_tb;
    logic [3:0] A, B;
    logic [3:0] S;
    carpad uut (A,B,S);
    initial begin
        A = 4'b0000;
        B = 4'b0000;
        #10; 
        if (S !== (A + B));
        A = 4'b0001;
        B = 4'b0001;
        #10;
        if (S !== (A + B));
        A = 4'b0110;
        B = 4'b0101;
        #10;
        if (S !== (A + B));
        A = 4'b1111;
        B = 4'b0001;
        #10;
        if (S !== (A + B));
        A = 4'b1010;
        B = 4'b0101;
        #10;
        if (S !== (A + B));
        A = 4'b1001;
        B = 4'b0110;
        #10;
        if (S !== (A + B));
    end
endmodule
