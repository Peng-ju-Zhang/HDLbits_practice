module top_module (input x, input y, output z);
    wire a1,a2,b1,b2;
    assign a1 =  (x^y) & x;
    assign a2 = a1;
    assign b1 =  ~( x ^ y);
    assign b2 = b1;
    assign z = (a1 | b1) ^ (a2 & b2);
    

endmodule
