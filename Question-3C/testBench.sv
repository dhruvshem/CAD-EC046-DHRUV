module tb_fp_multiplier;
    reg [31:0] a, b;          
    wire [31:0] result;       
    fp_multiplier uut (a,b,result);
    initial begin
        a = 32'h40000000; 
        b = 32'h40400000; 
        #10;
        a = 32'h3F000000; 
        b = 32'h40800000; 
        #10;
        a = 32'h3FA00000; 
        b = 32'h3FC00000; 
        #10;
        a = 32'hC0000000;
        b = 32'h40400000;
        #10;
        a = 32'h00000000; 
        b = 32'h40A00000; 
        #10;
        a = 32'h3F800000;
        b = 32'hBF800000;
        #10;
    end
endmodule
