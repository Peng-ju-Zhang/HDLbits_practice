`timescale 1ns / 1ps

module top_module_tb();

reg [4:0] a, b, c, d, e, f;
wire[7:0] w, x, y, z ;
reg flag;

initial begin 
a=5'b0;b=5'b0;c=5'b0;
d=5'b0;e=5'b0;f=5'b0;
flag = 1'b1;
end


always begin
	#500 f = f*2'd2;
	if(flag ==1'b1)begin 
		flag = 1'b0;
		f = 5'b1;
	end
	if ((f == 4'd0) && (e==5'd0)) e <= 5'd1; 
	if ((e>4'd0) && (e<4'd15))  e  <= e * 5'd2;
	if (e == 5'd16)begin
		e <= 5'd0;
		d <= 5'd1;
    end
	if (d == 5'd1)begin
		d <= 5'd0;
		a <= 5'h1f;
		c <= 5'h1f;
		e <= 5'h1f;
	end
end

top_module u_top_module( 
a,b,c,d,e,f,w,x,y,z
); 

endmodule
