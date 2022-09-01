module top_module (
    input clk,
    input d,
    output q
);
    wire [1:0] sta;
    always@(posedge clk) sta[0]<=d;
    always@(negedge clk) sta[1]<=d;
    assign q = (clk)? sta[0]:sta[1];
    

endmodule
