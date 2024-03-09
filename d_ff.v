`timescale 1ns / 1ps


module d_ff (
  input clk,din,rst,    
  output reg dout  
);

  always @(posedge clk) 
  begin
    if (rst) 
      dout <= 1'b0;
    else 
      dout <= din;
  end

endmodule
  
