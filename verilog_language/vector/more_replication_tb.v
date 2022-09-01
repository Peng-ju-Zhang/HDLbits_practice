`timescale 1ns / 1ps

module top_module_tb();
reg  a, b, c, d, e;
wire [24:0] out;
reg [4:0] num ;

initial begin
{a,b,c,d,e} = 5'd0;
num = 5'd0;
end 

always begin
	#500 num = num +1'b1;
	{a,b,c,d,e} = num;
end
top_module u_top_module(a,b,c,d,e,out);
endmodule
