`timescale 1ns / 1ps

module top_module_tb();
reg [2:0] a;
reg [2:0] b;
wire [2:0] out_or_bitwise;
wire out_or_logical;
wire [5:0] out_not;

initial begin
a = 3'd0;
b = 3'd0;
# 500 b=3'd7;
# 500 a = 3'd1;
end

always begin
#500 a <= a+1'b1;
end
always begin
#4000 b <= b+1'b1;
end


top_module u_top_module( 
	. a(a),
	. b(b),
	. out_or_bitwise(out_or_bitwise),
	. out_or_logical(out_or_logical),
	. out_not(out_not)
);

    
endmodule 