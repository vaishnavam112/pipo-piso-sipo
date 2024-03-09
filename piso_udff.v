`timescale 1ns / 1ps
module piso_udff(
    input clk,       
    input rst,     
    input din,         
    output reg dout     
);

reg [3:0] register; 
wire d_out;        

d_ff dff0(
    .clk(clk),
    .rst(rst),
    .din(din),
    .dout(register[0])
);

d_ff dff1(
    .clk(clk),
    .rst(rst),
    .din(register[0]),
    .dout(register[1])
);

d_ff dff2(
    .clk(clk),
    .rst(rst),
    .din(register[1]),
    .dout(register[2])
);

d_ff dff3(
    .clk(clk),
    .rst(rst),
    .din(register[2]),
    .dout(register[3])
);

assign d_out = register[3]; 

always @(posedge clk or posedge rst) begin
    if (rst) begin
        dout <= 1'b0; 
    end
    else begin
        dout <= d_out; 
    end
end

endmodule
