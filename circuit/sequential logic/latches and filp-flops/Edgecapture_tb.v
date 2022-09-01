`timescale 1ns / 1ps

module top_module_tb();
reg clk,
reg reset,
reg [31:0] in,
reg [31:0] out

initial begin
	clk <= 0;
	reset <= 1'b0;
	in <= 0;
	#5000 reset <= 1'b1;
end 

always 	#500 clk <= ~clk;

always@(posedge clk ) in <= in +1'b1; 
top_module u_top_mdule(
.clk(clk),
.reset(reset),
.in(in),
.out(out)
);
endmodule
