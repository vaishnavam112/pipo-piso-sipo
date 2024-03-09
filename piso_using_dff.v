`timescale 1ns / 1ps
module piso_using_dff(
input clk,sl,
input[3:0]b,
output dout);

wire w1,w2,w3,w4,w5,w6,w7;
wire o1,o2,o3;

d_ff d0(.clk(clk),.din(b[0]),.dout(w1),.rst());

//ao a1(.a(w1),.b(sl),.c(sl),.din(b[1]),.z(o1));
d_ff d1(.clk(clk),.din(o1),.dout(w4),.rst());

//ao a2(.a(w4),.b(sl),.c(sl),.din(b[2]),.z(o2));
d_ff d2(.clk(clk),.din(o2),.dout(w7),.rst());

//ao a3(.a(w7),.b(sl),.c(sl),.dout(b[3]),.z(o3));
d_ff d3(.clk(clk),.din(o3),.dout(dout),.rst());
endmodule
