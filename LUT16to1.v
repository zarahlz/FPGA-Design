`timescale 1ns / 1ps

module LUT16to1 (
    input wire [3:0] LUT_sel,    // 4-bit selection input
    input wire [15:0] LUT_input, // 16-bit input
    output wire LUT_output       // LUT output
);

    // LUT logic using case statement (if synthesis tools have issues)
    assign LUT_output = LUT_input[LUT_sel];

endmodule
