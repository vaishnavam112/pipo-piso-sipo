`timescale 1ns / 1ps

module fork_join(
    input clk,       
    input reset,     
    input [3:0] d,   
    output reg [3:0] q 
);

reg [3:0] register; 

always @(posedge clk or posedge reset) begin
    if (reset) begin
        register <= 4'b0000; 
    end
    else begin
        fork
            begin
               
                register <= d;
            end
            begin
               
                q <= register;
            end
        join
    end
end

endmodule

