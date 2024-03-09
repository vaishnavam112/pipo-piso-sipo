`timescale 1ns / 1ps

module tb_sipo_using_dff();
reg clk,din,rst;
wire dout;

sipo_using_dff uut(.clk(clk),.din(din),.dout(dout),.rst(rst));

initial
begin
clk=1'b0;
forever #5clk=~clk;
end

initial
begin
$monitor("clk=%0b,din=%0b,dout=%0b",clk,din,dout);
end

initial
begin

rst=1;
#5;
rst=0;
#1;
din=1;
#10;
din=0;
#4;
din=1;
#4;
din=0;
#6
din=1;
#7
din=0;
#6
din=1;

$finish;

end
endmodule
