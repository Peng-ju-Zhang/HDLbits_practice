module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] out_low,out_high;
    wire cout;
    add16 u0(a[15:0],b[15:0],0,out_low,cout);
    add16 u1(a[31:16],b[31:16],cout,out_high,0);
    assign sum = {out_high,out_low};

endmodule