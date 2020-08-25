`timescale 1ns / 1ps

module Bit32_TB( );
reg reset;
reg sel;
reg clk;

wire [15:0] Q;
Bit32 TB(
.clk(clk),
.reset(reset),
.Q(Q[15:0]),
.sel(sel)
);
/*
initial begin
clk = 0;
reset = 1;
sel = 1'b0;
#1000 $stop;
#20 reset = 1;
#25 reset = 0;
end
always 
#1 clk = ~ clk;
*/
integer i;
//wire clk = 0;
always #5 clk = ~clk;
initial begin
    reset = 1;
    sel = 1;
    clk = 0;
    i=0;
    #5
    reset = 0;
    
    while(i < 70000)
    begin
        if(i == 65535)
            sel = 0;
        
        i = i+1;
    end
    
    
end
endmodule

