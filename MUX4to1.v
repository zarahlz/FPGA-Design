`timescale 1ns / 1ps

module MUX4to1 (
    input wire [1:0] MUX_sel,  // 2-bit selection input
    input wire [3:0] MUX_in,   // 4-bit input (each bit is a separate input)
    output wire MUX_out        // MUX output
);

    // MUX logic using a case statement
    assign MUX_out = MUX_in[MUX_sel];

endmodule
