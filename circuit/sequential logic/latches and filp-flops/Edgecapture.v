module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);
    reg [31:0] tmp;
    always@(posedge clk )begin
        if(reset)begin
            out <= 32'd0;
            tmp <= in;
        end
        else begin
            tmp <=in;
            out <= ((tmp) ^ (tmp & in)) | out;
        end
    end
            
        

endmodule
