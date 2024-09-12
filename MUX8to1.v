`timescale 1ns / 1ps

module MUX8to1 (
    input wire [2:0] MUX_sel,  // selection input
    input wire [7:0] MUX_in, // 8-bit input
    output wire MUX_out       // MUX output
);

    // MUX logic
    assign MUX_out = MUX_in[MUX_sel];

endmodule