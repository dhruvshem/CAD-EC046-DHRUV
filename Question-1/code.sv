module BCD_Adder (
    input logic  [7:0] A,B,   
    input Cin,       
    output [7:0]S,  
    output c      
);
    wire [3:0]sum0,sum1;  
    wire x0,x1;            
    wire [3:0]y,z;
    wire cc0,cc1; 
    assign {x0,sum0}=A[3:0]+B[3:0]+Cin;
    assign cc0=(sum0>4'd9)?1'b1:1'b0;
    assign y=cc0?sum0+4'd6:sum0;
    assign {x1,sum1}=A[7:4]+B[7:4]+cc0;
    assign cc1=(sum1 > 4'd9)?1'b1:1'b0;
    assign z=cc1?sum1+4'd6:sum1;
    assign S={y,z}; 
    assign c=x1|cc1;
endmodule
