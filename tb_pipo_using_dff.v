`timescale 1ns / 1ps

module tb_pipo_using_dff();
reg clk,b,rst;
wire a;

pipo_using_dff uut(.clk(clk),.b(b),.a(a),.rst(rst));

initial
begin
clk=1'b0;
forever #5clk=~clk;
end

initial
begin
$monitor("clk=%0b,b=%0b,a=%0b",clk,b,a);
end

initial
begin

rst=1;
#5;
rst=0;
#1;
b=1;
#10;
b=0;
#4;
b=1;
#4;
b=0;
#6
b=1;
#7
b=0;
#6
b=1;

$finish;

end
endmodule
