`timescale 1ns / 1ps

module sipo_using_dff( 
output dout ,
input din ,clk,rst

);   
wire [3:0]s;

d_ff u0 (.din(din),.clk(clk),.rst(rst),.dout(s[0]));

d_ff u1 (.din(s[0]),.clk(clk),.rst(rst),.dout(s[1]));

d_ff u2 (.din(s[1]),.clk(clk),.rst(rst),.dout(s[2]));

d_ff u3 (.din(s[2]),.clk(clk),.rst(rst),.dout(s[3])); 

assign dout = s;


endmodule
    