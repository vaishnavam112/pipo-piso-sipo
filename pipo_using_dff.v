`timescale 1ns / 1ps
module pipo_using_dff(
input clk,rst,
input [3:0]b,
output[3:0]a
);

d_ff d1(.clk(clk),.din(b[3]),.dout(a[3]),.rst());
d_ff d2(.clk(clk),.din(b[2]),.dout(a[2]),.rst());
d_ff d3(.clk(clk),.din(b[1]),.dout(a[1]),.rst());
d_ff d4(.clk(clk),.din(b[0]),.dout(a[0]),.rst());

endmodule
