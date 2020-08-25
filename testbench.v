`timescale 1ns/1ns
module testbench();
wire [2:0] y;
wire [3:0] n;
wire [3:0] s;
reg clk;
initial clk = 1;
always #10 clk = ~clk;
reg rst;
initial rst = 1;
reg a;
initial a = 0;

source mymodule(y,n,s,a,rst,clk);
initial begin
$dumpfile("TimingDiagram.vcd");
$dumpvars(0,y,n,s,a,rst,clk);
#20
rst = 0;
a = 0;
#20
rst = 0;
a = 0;
#20
rst = 0;
a = 1;
#20
rst = 0;
a = 0;
#20
rst = 0;
a = 1;
#20
rst = 0;
a = 1;
#20
rst = 0;
a = 1;
#20
rst = 0;
a = 0;
#20
rst = 0;
a = 1;
#20


$finish;
end
endmodule
