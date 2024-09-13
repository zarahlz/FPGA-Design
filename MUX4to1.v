`timescale 1ns / 1ps

module MUX4to1 (
    input wire [1:0] MUX_sel,  // 2-bit selection input
    input wire [3:0] MUX_in,   // 4-bit input (each bit is a separate input)
    output reg MUX_out       // MUX output
);
    // MUX logic
    always @(*) begin
        case (MUX_sel)
            2'b00: MUX_out <= MUX_in[0];
            2'b01: MUX_out <= MUX_in[1];
            2'b10: MUX_out <= MUX_in[2];
            2'b11: MUX_out <= MUX_in[3];
            default: MUX_out <= 0;
        endcase
    end

endmodule
