`timescale 1ns / 1ps

module DFlipFlop(
    input clk,             
    input d,              
    output reg q           
);
    always @(posedge clk) begin
        q <= d;           
    end
endmodule
