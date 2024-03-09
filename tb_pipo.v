`timescale 1ns / 1ps
module tb_pipo_leds();
    reg clk, clear;
    reg [3:0] p_in;
    wire [3:0] p_out;
    
    //pipo_leds dut(.clk(clk), .clear(clear),.p_in(p_in),.p_out(p_out));

initial begin
    //fork
    clk = 0;
    clear = 0;
    p_in = 0;

    #5 clear=1'b1;
    #5 clear=1'b0;
    #10 p_in=4'b1001;
    #10 p_in=4'b1010;
    #10 p_in=4'b1011;
    #10 p_in=4'b1110;
    #10 p_in=4'b1111;
    #10 p_in=4'b0000;
    //join
end

initial begin
    $monitor("time=%0t clear=%0b p_in=%0b p_out=%0b clk=%0b",$time,clear,p_in,p_out,clk);
    end

always #5 clk = ~clk;

initial #150 $stop;

endmodule
