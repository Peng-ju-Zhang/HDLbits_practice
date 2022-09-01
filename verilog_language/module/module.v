module top_module ( input a, input b, output out );
    mod_a u_mod_a(a,b,out);
endmodule

module mod_a(input in1,input in2,output out);
	assign out = ~in1 ^ in2;
endmodule