module fsm_tb;
    logic clk, reset, A, B;
    logic Q;
    fsm uut (clk,reset,A,B,Q);
    initial clk = 0;
    always #10 clk = ~clk;
    initial begin
        reset = 1;
        A = 0;
        B = 0;
        #20;
        reset = 0;
        #20;
        A = 1; B = 0;
        #20;
        A = 0; B = 1;
        #20;
        B = 1;
        #20;
        B = 0;
        #20;
        reset = 1;
        #20;
        reset = 0;
        #100;
    end
endmodule
