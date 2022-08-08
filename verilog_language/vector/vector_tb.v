//////////////////////////////////////////////////////////////////////////////////
module verilog_tb();
reg [2:0] vec;
wire [2:0] outv;
wire o2;
wire o1;
wire o0 ;
initial begin
vec=3'b0;
end

always #5 vec=vec+3'b1;
top_module top_module_tb(vec,outv,o2,o1,o0);
endmodule 