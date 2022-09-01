module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );

    assign out = in[sel*4+3 -: 4]; // 变量[结束地址 -: 数据位宽] <–等价于–> 变量[结束地址：(结束地址-数据位宽+1)]
    
endmodule