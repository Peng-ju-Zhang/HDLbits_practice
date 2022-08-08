`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/08/02 17:27:29
// Design Name: 
// Module Name: verilog
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module verilog_tb();
reg clk;
reg in;
wire out;

initial begin
	clk = 0;
	in  = 0;	
end
always 
#1 in ~= in;

top_module top_module_tb( 
	.in(in), 
	.out(out) 
);
endmodule