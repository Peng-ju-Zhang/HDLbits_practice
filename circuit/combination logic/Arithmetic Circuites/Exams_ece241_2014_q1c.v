module top_module (
    input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); //
    wire [7:0] cout;
    assign cout[0] = a[0] & b[0];
    assign s[0] = a[0] ^ b[0];
    integer i;
    always@(*)begin
        for(i=1;i<8;i=i+1)begin
            cout[i] = a[i]&b[i] | a[i]&cout[i-1] | b[i]&cout[i-1];
        	s[i] = a[i] ^ b[i] ^ cout[i-1];
		end
    end
    assign overflow = cout[6] ^ cout[7];
    


endmodule
