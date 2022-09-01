module top_module (
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z );//

    // assign { ... } = { ... };
    reg [31:0] buff ;
	assign {buff} = {a,b,c,d,e,f,2'b11};
    assign {w,x,y,z} = {buff[31:24],buff[23:16],buff[15:8],buff[7:0]};

endmodule
