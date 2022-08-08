//////////////////////////////////////////////////////////////////////////////////
module top_module (
input a;
input c;
output d; 
); // Module body starts after module declaration
wire [2:0] a, c;   // Two vectors
assign a = 3'b101;  // a = 101
assign b = a;       // b =   1  implicitly-created wire
assign d=b;

endmodule