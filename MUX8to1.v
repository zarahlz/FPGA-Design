`timescale 1ns / 1ps

module MUX8to1 (
    input wire MUX_en,           // enable signal
    input wire [2:0] MUX_sel,  // 3-bit selection input
    input wire [7:0] MUX_in,   // 8-bit input (each bit is a separate input)
    output reg MUX_out       // MUX output
);
    // MUX logic
    always @(*) begin
        if (!MUX_en) begin
            MUX_out <= 0;
        end
        else begin
            case (MUX_sel)
                3'b000: MUX_out <= MUX_in[0];
                3'b001: MUX_out <= MUX_in[1];
                3'b010: MUX_out <= MUX_in[2];
                3'b011: MUX_out <= MUX_in[3];
                3'b100: MUX_out <= MUX_in[4];
                3'b101: MUX_out <= MUX_in[5];
                3'b110: MUX_out <= MUX_in[6];
                3'b111: MUX_out <= MUX_in[7];
                default: MUX_out <= 0;
            endcase
        end
    end

endmodule
