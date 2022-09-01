`timescale 1ns / 1ps

module top_module_tb();
reg clk;
reg d;
wire q;
reg  state;
reg [3:0] cnt;

initial begin
	clk <= 0;
	d <= 1'b0;
	state <= 1'd0;
	cnt <=4'd0;
end 

always 	#500 clk <= ~clk;

always@(posedge clk) begin
	cnt <= cnt+1;
	case (state) 
		1'd0 :begin
			d <= 1'b1; 
			if(cnt <4'd3) state <= state;
			else begin
				d <= 1'b0;
				state <=1'd1;
				cnt <=4'd0;
				end
		end
		1'd1:begin
			if(cnt ==4'd0) d <=1'b1;
			else if(cnt ==4'd1) d <= 1'b0;
			else if(cnt == 4'd4)  cnt <=4'd0;
			else d<=d;
			state <= 1'd1;
		end
		default:state <= 1'd0;
	endcase
end
top_module u_top_module(clk,d,q);
endmodule
