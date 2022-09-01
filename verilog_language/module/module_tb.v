`timescale 1ns / 1ps

module top_module_tb();
reg  a,b;
wire out;
reg [2:0] num;
reg flag;

initial begin
a = 1'b0;
b = 1'b1;
num = 2'd0;
flag = 1'b0;
end 

always begin
#500 num=num;
	if( (flag ==1'b0) &&(num<3'd6))begin
		a = ~a;
		num = num+1'b1;
	end
	if( (flag==1'b1) &&(num<3'd6))begin
		b = ~b;
		num = num+1'b1;
	end
	if(num == 3'd6)begin
		num = 3'd0;
		flag= 1'b1;
	end
	
end
top_module u_top_module(a,b,out);
endmodule
