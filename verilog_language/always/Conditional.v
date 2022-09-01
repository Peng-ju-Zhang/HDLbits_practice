module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

    // assign intermediate_result1 = compare? true: false;
    wire [7:0] min_tmp1,min_tmp2;
    assign min_tmp1 = (a<b)?a:b;
    assign min_tmp2 = (c<min_tmp1)?c:min_tmp1;
    assign min = (d<min_tmp2)?d:min_tmp2;
	

endmodule
