`timescale 1ns / 1ps

module MUX4to1 (
    input wire [1:0] MUX_sel,  // selection input
    input wire [3:0] MUX_in,   // 4-bit input
    output wire MUX_out         // MUX output
);

    // MUX logic
    assign MUX_out = MUX_in[MUX_sel];

endmodule
