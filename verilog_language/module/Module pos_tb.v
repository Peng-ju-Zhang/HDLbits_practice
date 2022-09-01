`timescale 1ns / 1ps

module top_module_tb();
reg  a,b,c,d;
wire out1,out2;
reg [1:0] num;
reg [1:0] flag;

initial begin
a = 1'b0;
b = 1'b1;
c = 1'b0;
d = 1'b0;
num = 2'd0;
flag = 2'd0;
end 

always begin
#500 num=num;
	case (flag) 
		2'd0 :begin
			a <= ~a;
			num <= num+1'b1;
			if(num == 2'd3)begin
				flag <= 2'd1;
				num  <= 2'd0;
			end
		end
		2'd1:begin
			b <= ~b;
			num <= num+1'b1;
			if(num == 2'd3)begin
				flag <= 2'd2;
				num <= 2'd0;
			end
		end
		2'd2:begin
			c <= ~c;
			num <= num+1'b1;
			if(num == 2'd3)begin
				flag <= 2'd3;
				num <= 2'd0;
			end
		end
		2'd3:begin
			d <= ~d;
			num <= num+1'b1;
			if(num == 2'd3)begin
				flag <= 2'd0;
				num <= 2'd0;
			end
		end
		default:flag <= 2'd0;
	endcase
end
top_module u_top_module(a,b,c,d,out1,out2);
endmodule
