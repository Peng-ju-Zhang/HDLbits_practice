`timescale 1ns / 1ps

module top_module_tb();
reg [15:0] in;
wire [7:0] out_hi;
wire [7:0] out_lo;

initial begin
in = 16'h3524;
end

always #500 in = in+1;
top_module u_top_module( 
.in(in),
.out_hi(out_hi),
.out_lo(out_lo) 
);

    
endmodule 