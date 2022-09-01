module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    always@(*)begin
        if(d == 1'b0) out = ~b&c | a&c | a&~d;
        else out = a | ~b&c | b&~c&~d;
    end

endmodule
