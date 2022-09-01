`timescale 1ns / 1ps

module top_module_tb();
reg[3:0] in;
wire out_and;
wire out_or;
wire out_xor;

initial in = 4'b0;

always #500 in = in +4'b1;

top_module u_top_module( 
 .in(in),
 .out_and(out_and),
 .out_or(out_or),
 .out_xor(out_xor)
); 

endmodule
