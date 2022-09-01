module my_dff(input clk,input d, output reg q);
	always @(posedge clk)  
	begin
		q <= d;
	end
endmodule

module top_module ( input clk, input d, output q );
	wire q1,q2;
	my_dff u_my_dff1(clk,d,q1);
	my_dff u_my_dff2(clk,q1,q2);
	my_dff u_my_dff3(clk,q2,q);
endmodule
