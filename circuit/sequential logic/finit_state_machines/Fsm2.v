module top_module(
    input clk,
    input areset,    // Asynchronous reset to OFF
    input j,
    input k,
    output out); //  

    parameter OFF=1'b0, ON=1'b1; 
    reg state, next_state;

    always @(*) begin
        // State transition logic
        next_state = OFF;
        if(state==OFF) next_state = j? ON:OFF;
        if(state==ON)  next_state = k? OFF:ON;       
    end

    always @(posedge clk, posedge areset) begin
        // State flip-flops with asynchronous reset
        if(areset) state <= OFF;
        else state <= next_state;
            
    end

    // Output logic
    assign out = state;

endmodule
