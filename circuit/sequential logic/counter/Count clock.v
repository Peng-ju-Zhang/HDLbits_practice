module top_module(
    input clk,
    input reset,
    input ena,
    output pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss); 
    reg [5:0] count;
    always@(posedge clk)begin
        if(reset)begin
            //ena <= 0;
            hh <= 8'h12;
            mm <= 8'h00;
            ss <= 8'h00;
        end
        else if(ena) begin
            ss[3:0] <= ss +4'b1;
            //ena <= (count==6'd59)?1:0;
            if(ss<8'h59)begin
                if(ss[3:0] == 9) begin
                    ss[3:0] <= 0;
                    ss[7:4] <= ss[7:4] + 1;
                end
            end
            else begin
                ss <= 8'h00;
                mm[3:0] <= mm[3:0] +1;                
                if(mm<8'h59)begin
                    if(mm[3:0] == 9) begin
                        mm[3:0] <= 0;
                        mm[7:4] <= mm[7:4] + 1;
                    end
                end
                else begin
                    mm <= 8'h00;
                    hh[3:0] <= hh[3:0] +1;
                    if(hh==8'h11) pm<=~pm;
                    if(hh<8'h12)begin
                        if(hh[3:0] == 9) begin
                            hh[3:0] <= 0;
                            hh[7:4] <= hh[7:4] + 1;
                        end
                        
                    end
                    else hh <= 8'h01;                 
                end
            end                         
        end
    end
endmodule
