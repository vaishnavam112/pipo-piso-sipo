`timescale 1ns / 1ps
module sipo(
input clk,s_in,clr,
output [3:0] p_out
);
reg [3:0] tmp;
always @(posedge clk)
begin
tmp = {tmp[3:0], s_in};
end
assign p_out = tmp;
endmodule