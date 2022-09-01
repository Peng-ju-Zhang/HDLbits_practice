module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
	wire [31:0] b1;
	wire [15:0] out_low,out_high;
    wire cout;

	always@(*)begin
        if(sub ==1'b1) b1 = ~b +1;
		else b1 <= b; 
    end
	add16 u0(a[15:0],b1[15:0],0,out_low,cout);
    add16 u1(a[31:16],b1[31:16],cout,out_high,0);
    assign sum = {out_high,out_low};

endmodule
