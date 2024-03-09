`timescale 1ns / 1ps
module pipo_leds(
    input clk,clear,
    input wire[3:0] p_in,
    output reg[3:0]p_out
 );

always @(posedge clk,posedge clear)
    begin
        if (clear)
        p_out<= 4'b0000;
            else
                p_out <= p_in;
        end
endmodule


