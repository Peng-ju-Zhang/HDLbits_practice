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
`default_nettype none  
module top_module(  
    input a,  
    input b,  
    input c,  
    input d,  
    output out,  
    output out_n   );   
    wire x,y;  
	    assign x = a && b;  
	    assign y = c&& d;  
	    assign out = x || y;  
	    assign out_n = ~(x || y);  
endmodule
