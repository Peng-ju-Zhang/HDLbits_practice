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
reg a,b,c,d;
wire out,out_n;
initial begin
a=1;
b=1;
c=0;
d=0;
end
always #5 {a,b,c,d}={a,~b,c,~d};
top_module top_module_tb(a,b,c,d,out,out_n);
endmodule 