`timescale 1ns / 1ps

module MUX4to1 (
    input wire [1:0] MUX_sel,  // 2-bit selection input
    input wire [3:0] MUX_in,   // 4-bit input (each bit is a separate input)
    output wire MUX_out        // MUX output
);

    // MUX logic using a case statement
    assign MUX_out = (MUX_sel == 2'b00) ? MUX_in[0] :
                     (MUX_sel == 2'b01) ? MUX_in[1] :
                     (MUX_sel == 2'b10) ? MUX_in[2] :
                                          MUX_in[3];

endmodule
