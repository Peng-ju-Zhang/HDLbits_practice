module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    reg [15:0] out_low,out_high1,out_high2;
    wire cout;
	wire [31:0] sum1,sum2;
    add16 u0(a[15:0],b[15:0],0,out_low,cout);
    add16 u1(a[31:16],b[31:16],0,out_high1,0);
    add16 u2(a[31:16],b[31:16],1'b1,out_high2,0);
	assign sum1 = {out_high1,out_low};
	assign sum2 = {out_high2,out_low};
	always@(*)begin
		// case(cout)
			// 1'b0: sum = sum1;
			// 1'b1: sum = sum2;
		// endcase
	// end
		if(cout == 1'b0) sum = sum1;
		else sum = sum2;
	end
endmodule