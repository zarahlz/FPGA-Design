`timescale 1ns / 1ps

module MUX2to1 (
    input wire MUX_sel,       // 1-bit selection input
    input wire [1:0] MUX_in,  // 2-bit input (each bit is a separate input)
    output wire MUX_out       // MUX output
);
    // MUX logic
    assign MUX_out = MUX_in[MUX_sel];

endmodule
