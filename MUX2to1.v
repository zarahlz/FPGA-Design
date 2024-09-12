`timescale 1ns / 1ps

module MUX2to1 (
    input wire MUX_sel,       // Selection input
    input wire [1:0] MUX_in,  // 2-bit input
    output wire MUX_out       // MUX output
);
    // MUX logic
    assign MUX_out = MUX_in[MUX_sel];
endmodule
