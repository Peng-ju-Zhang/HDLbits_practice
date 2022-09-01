module top_module( 
    input [99:0] in,
    output [98:0] out_both,
    output [99:1] out_any,
    output [99:0] out_different );
    integer i1,i2,i3;
    always@(*)begin
        for(i1=0;i1<99;i1++)
            if(in[i1+1]==1 & in[i1]==1) out_both[i1] = 1'b1;
       		else  out_both[i1] = 1'b0;
    end
    always@(*)begin
        for(i2=1;i2<100;i2++)
            if(in[i2] | in[i2-1]) out_any[i2] = 1'b1;
        	else  out_any[i2] = 1'b0;
    end
    always@(*)begin
        for(i3=0;i3<100;i3++)
            if(i3==99)begin
                if(in[i3] != in[0]) out_different[i3] = 1'b1;
                else out_different[i3] = 1'b0;
            end
        	else if(in[i3] != in[i3+1]) out_different[i3] = 1'b1;
        	else out_different[i3] = 1'b0;
    end  

endmodule
