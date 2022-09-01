module top_module( 
    input x3,
    input x2,
    input x1,  // three inputs
    output f   // one output
);
    wire [2:0] temp = {x3,x2,x1};
    always@(*)begin 
        case(temp)
           3'd2:f<=1'b1;
           3'd3:f<=1'b1;
           3'd5:f<=1'b1;
           3'd7:f<=1'b1;
           default:f<=1'b0;
        endcase
    end
    
    

endmodule
