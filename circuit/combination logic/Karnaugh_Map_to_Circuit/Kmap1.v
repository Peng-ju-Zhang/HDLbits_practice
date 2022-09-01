module top_module(
    input a,
    input b,
    input c,
    output out  ); 
    assign out = (a==1'b0 & {b,c}== 2'b0)? 1'b0:1'b1;

endmodule
