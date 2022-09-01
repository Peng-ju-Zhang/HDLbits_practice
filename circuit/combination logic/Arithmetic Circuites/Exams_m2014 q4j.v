module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);
    wire [3:0] cout;
    fulladd u0(x[0],y[0],0,cout[0],sum[0]);
    fulladd u1(x[1],y[1],cout[0],cout[1],sum[1]);
    fulladd u2(x[2],y[2],cout[1],cout[2],sum[2]);
    fulladd u3(x[3],y[3],cout[2],cout[3],sum[3]);
    assign sum[4] = cout[3];
    

endmodule

module fulladd(    
    input a, b, cin,
    output cout, sum );
    assign cout = a&b | a&cin | b&cin;
    assign sum = a ^ b ^ cin;
endmodule

