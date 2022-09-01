module top_module (
    input [3:0] SW,
    input [3:0] KEY,
    output [3:0] LEDR
); //
    MUXDFF u0(KEY[0],SW[3],KEY[1],KEY[2],KEY[3],LEDR[3]);
    MUXDFF u1(KEY[0],SW[2],KEY[1],KEY[2],LEDR[3],LEDR[2]);
    MUXDFF u2(KEY[0],SW[1],KEY[1],KEY[2],LEDR[2],LEDR[1]);
    MUXDFF u3(KEY[0],SW[0],KEY[1],KEY[2],LEDR[1],LEDR[0]);    
        

endmodule

module MUXDFF (
    input clk,input r,
	input e,input l,input w,
    output ledr);
    always@(posedge clk)begin
        case({e,l})
            2'b00: ledr <= ledr;
            2'b01: ledr <= r;
            2'b10: ledr <= w;
            2'b11: ledr <= r;
        endcase
    end
endmodule
