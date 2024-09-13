`timescale 1ns / 1ps

module DFlipFlop(
    input clk,             
    input d,          
    output reg q           
);
    initial begin
        q <= 0;
    end
    
    always @(posedge clk) begin
        q <= d;      
    end
endmodule
