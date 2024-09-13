`timescale 1ns / 1ps

module MUX2to1 (
    input wire MUX_sel,       // 1-bit selection input
    input wire [1:0] MUX_in,  // 2-bit input (each bit is a separate input)
    output reg MUX_out       // MUX output
);
    // MUX logic
    always @(*) begin
        case (MUX_sel)
            1'b0: MUX_out <= MUX_in[0];
            1'b1: MUX_out <= MUX_in[1];
        endcase
    end

endmodule
