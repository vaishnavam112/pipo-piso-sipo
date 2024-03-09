`timescale 1ns / 1ps


module tb_sipo();
    reg clk,s_in,clr;
    wire [3:0] p_out;
    
    sipo dut(.clk(clk),.s_in(s_in),.p_out(p_out));

initial begin
    
    clk = 0;
    clr = 0;
    s_in = 0;

    #5 clr=1'b1;
    #5 clr=1'b0;
    #10 s_in=4'b1001;
    #10 s_in=4'b1010;
    #10 s_in=4'b1011;
    #10 s_in=4'b1110;
    #10 s_in=4'b1111;
    #10 s_in=4'b0000;
    
end

initial begin
    $monitor("time=%0t  s_in=%0b p_out=%0b clk=%0b",$time,s_in,p_out,clk);
    end

always #5 clk = ~clk;

initial #150 $stop;

endmodule

    
