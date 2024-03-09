`timescale 1ns / 1ps

module tb_piso_leds();

reg clk,load;
reg [3:0]Parallel_In;
wire Serial_Out;


piso_leds dut(.clk(clk),.load(load),.Parallel_In(p_in),.Serial_Out(s_out));
    
    always #5 clk=~clk;

    initial begin
        clk=0;
        //clear=1'b1;
        load=0;
        #15
        //clear=1'b0;#5
        load=1;
        Parallel_In=4'b0101;
    #30
    load=0;#5
    load=1;
    Parallel_In=4'h8;
    #30
    Parallel_In=4'hc;
    
    #100; 
        
        $finish;
    end
endmodule

