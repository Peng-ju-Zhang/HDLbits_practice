module top_module (
    input c,
    input d,
    output [3:0] mux_in
); 
    assign mux_in = {(c&d),~d,1'd0,~(~c&~d)};

endmodule
