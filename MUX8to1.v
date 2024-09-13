`timescale 1ns / 1ps

module MUX8to1 (
    input wire [2:0] MUX_sel,  // 3-bit selection input
    input wire [7:0] MUX_in,   // 8-bit input (each bit is a separate input)
    output wire MUX_out        // MUX output
);

    // MUX logic using a case statement
    assign MUX_out = MUX_in[MUX_sel];

endmodule
