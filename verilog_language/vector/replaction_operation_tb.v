`timescale 1ns / 1ps

module top_module_tb();
reg [7:0] in;
wire [31:0] out;
reg flag ;
initial begin
in = 8'd0;
end 

always begin
	#500 in = in +1'b1;
	if (in == 8'h03)in = 8'h04;
	if (in == 8'h05)in = 8'h08;
	if (in == 8'h09)in = 8'h80;
	if (in == 8'h81)in = 8'hc0;
	if (in == 8'hc1)in = 8'he0;
	if (in == 8'he1)in = 8'hf0;
end

top_module u_top_module( in,out);
endmodule
