module fsm (
    input logic clk,reset,A,B,            
    output logic Q            
);
    logic [1:0] cs,ns;
    always_comb begin
        case (cs)
            2'b00: begin  
                Q = 0;
                if (A)
                    ns=2'b01; 
                else
                    ns=2'b00; 
            end
            2'b01: begin  
                Q = 0;
                if (B)
                    ns=2'b10;  
                else
                    ns=2'b00;  
            end
            2'b10: begin  
                Q = 1;
                if (~B)
                    ns=2'b01;  
                else
                    ns=2'b10;  
            end
            default: begin
                ns=2'b00;
                Q = 0;
            end
        endcase
    end
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            cs<=2'b00;  
        else
            cs<=ns;
    end
endmodule
