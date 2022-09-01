// Note the Verilog-1995 module declaration syntax here:
module top_module(clk, reset, in, out);
    input clk;
    input reset;    // Synchronous reset to state B
    input in;
    output out;//  
    reg out;

    // Fill in state name declarations
	parameter A=1'b0, B=1'b1;
    reg present_state, next_state;

    always @(*) begin    // This is a combinational always block
        // State transition logic
        if(in == 1'b1) next_state = present_state;
        else begin
            if(present_state==A) next_state = B;
            else next_state = A;
        end
    end

    always @(posedge clk) begin    // This is a sequential always block
        // State flip-flops with asynchronous reset
        if(reset) present_state <= B;
        else present_state <= next_state;
            
    end

    // Output logic
     assign out = present_state ;

endmodule
