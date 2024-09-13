`timescale 1ns / 1ps

module DFlipFlop(
    input clk,             
    input d,   
    input rst,           
    output reg q           
);
    always @(posedge clk or negedge rst) begin
        q <= d;      
        if (!rst) begin
            q <= 0;
        end     
    end
endmodule
