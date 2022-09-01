module top_module( 
    input [99:0] in,
    output [99:0] out
);
    reg [6:0] num = 7'd0;
    wire [99:0] out_tmp;
    always@(*)begin
        for(int i=0;i<100;i++)
            out[i] = in[99-i];
    end
endmodule
