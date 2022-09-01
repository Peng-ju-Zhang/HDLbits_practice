module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
    reg [7:0] tmp;
    always@(posedge clk)begin
        tmp <=in;
        pedge <= (tmp) ^ (tmp | in);
    end

endmodule
