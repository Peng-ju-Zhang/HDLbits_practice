`timescale 1ns / 1ps

module top_module_tb();
reg [31:0] in;
wire [31:0] out;

initial begin
in = 32'h12153524;
end

always #500 in = in+1;
top_module u_top_module( 
.in(in),
.out(out)
);

    
endmodule 