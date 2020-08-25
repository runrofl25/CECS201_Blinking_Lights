`timescale 1ns / 1ps


module Bit32 (input clk, reset, sel, output[15:0] Q);

reg [31:0] C;
reg [15:0] Q;
always @(posedge clk, posedge reset)
begin

if(reset)
    begin
    C <= 32'b0;
    end
else
    begin
    C = C + 32'b1;
    
    //Q <= sel ? C[31:16] : C[15:0]; // Conditinonal statement if sel is 1 ten run 
    end
end

//wire [15:0] first;
//assign first = Q;
//wire [15:0] second;
//assign second = Q;
//assign Q = sel ? C[31:16] : C[15:0]; // Conditinonal statement if sel is 1 ten run 
//assign Q = C[15:0];
endmodule
