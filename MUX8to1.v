`timescale 1ns / 1ps

module MUX8to1 (
    input wire [2:0] MUX_sel,  // 3-bit selection input
    input wire [7:0] MUX_in,   // 8-bit input (each bit is a separate input)
    output wire MUX_out        // MUX output
);

    // MUX logic using a case statement
    assign MUX_out = (MUX_sel == 3'b000) ? MUX_in[0] :
                     (MUX_sel == 3'b001) ? MUX_in[1] :
                     (MUX_sel == 3'b010) ? MUX_in[2] :
                     (MUX_sel == 3'b011) ? MUX_in[3] :
                     (MUX_sel == 3'b100) ? MUX_in[4] :
                     (MUX_sel == 3'b101) ? MUX_in[5] :
                     (MUX_sel == 3'b110) ? MUX_in[6] :
                                           MUX_in[7];

endmodule
