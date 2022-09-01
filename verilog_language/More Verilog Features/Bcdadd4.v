module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    wire [15:0] cout_tmp;
    bcd_fadd u0(a[3:0],b[3:0],cin,cout_tmp[0],sum[3:0]);
    generate 
        genvar i;
        for(i=4;i<16;i=i+4)begin : adder
            bcd_fadd u1(a[i+3 -:4],b[i+3 -:4],cout_tmp[i-4],cout_tmp[i],sum[i+3 -:4]);
        end
    endgenerate
    assign cout = cout_tmp[12];
endmodule
