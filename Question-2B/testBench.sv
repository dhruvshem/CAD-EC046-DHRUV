module log_tb;
    reg a, b, c, d, e;  
    wire Y;         
    log uut (a,b,c,d,e,Y);
    initial begin
        a = 0; b = 0; c = 0; d = 0; e = 0;
        #10;
        a = 0; b = 0; c = 0; d = 0; e = 1;
        #10;
        a = 0; b = 0; c = 0; d = 1; e = 0;
        #10;
        a = 0; b = 0; c = 0; d = 1; e = 1;
        #10;
    end	
endmodule
