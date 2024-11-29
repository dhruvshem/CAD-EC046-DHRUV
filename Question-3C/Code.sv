module fp_multiplier(
    input [31:0] a,    
    input [31:0] b,    
    output [31:0] result
);
    wire sign_a = a[31];
    wire sign_b = b[31];
    wire [7:0] exp_a = a[30:23];
    wire [7:0] exp_b = b[30:23];
    wire [23:0] mant_a = {1'b1, a[22:0]}; 
    wire [23:0] mant_b = {1'b1, b[22:0]}; 
    wire sign_result = sign_a ^ sign_b;
    wire [8:0] exp_sum = exp_a + exp_b - 8'd127;
    wire [47:0] mant_product = mant_a * mant_b;
    wire [22:0] normalized_mantissa;
    wire [7:0] final_exponent;

    assign {final_exponent, normalized_mantissa} = (mant_product[47]) ? 
        {exp_sum[7:0] + 1'b1, mant_product[46:24]} : 
        {exp_sum[7:0], mant_product[45:23]};
    assign result = {sign_result, final_exponent, normalized_mantissa};

endmodule
