module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    always@(posedge clk)begin
        if(L) Q <= R;
        else if(E==1'b1) Q <= w;
        else if(E ==1'b0) Q <= Q;
        else Q <= Q;
                
    end

endmodule
