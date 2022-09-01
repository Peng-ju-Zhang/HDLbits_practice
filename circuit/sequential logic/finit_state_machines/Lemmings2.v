module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    output walk_left,
    output walk_right,
    output aaah ); 
    
    parameter LEFT=0, RIGHT=1,AAAH=3;
    reg [1:0] state, next_state;

    always @(*) begin
        // State transition logic
        if(!ground) state = AAAH;
        else begin
            if(!state) next_state = (bump_left | (bump_left & bump_right))? RIGHT:LEFT;
            else next_state = (bump_right | (bump_left & bump_right))? LEFT:RIGHT;
        end
    end

    always @(posedge clk, posedge areset) begin
        // State flip-flops with asynchronous reset
        if(areset) state <= LEFT;
        else state <= next_state;
    end

    // Output logic
     assign walk_left  = (state == LEFT);
     assign walk_right = (state == RIGHT); 
     assign aaah = (state == AAAH);

endmodule
