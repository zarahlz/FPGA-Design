`timescale 1ns / 1ps

module LUT16to1 (
    input wire LUT_en,           // enable signal
    input wire [3:0] LUT_sel,    // 4-bit selection input
    input wire [15:0] LUT_input, // 16-bit input
    output reg LUT_output        // MUX output
);
    // MUX logic
    always @(*) begin
        if (!LUT_en) begin
            LUT_output <= 0;
        end
        else begin
            case (LUT_sel)
                4'b0000: LUT_output <= LUT_input[0];
                4'b0001: LUT_output <= LUT_input[1];
                4'b0010: LUT_output <= LUT_input[2];
                4'b0011: LUT_output <= LUT_input[3];
                4'b0100: LUT_output <= LUT_input[4];
                4'b0101: LUT_output <= LUT_input[5];
                4'b0110: LUT_output <= LUT_input[6];
                4'b0111: LUT_output <= LUT_input[7];
                4'b1000: LUT_output <= LUT_input[8];
                4'b1001: LUT_output <= LUT_input[9];
                4'b1010: LUT_output <= LUT_input[10];
                4'b1011: LUT_output <= LUT_input[11];
                4'b1100: LUT_output <= LUT_input[12];
                4'b1101: LUT_output <= LUT_input[13];
                4'b1110: LUT_output <= LUT_input[14];
                4'b1111: LUT_output <= LUT_input[15];
                default: LUT_output <= 0;
            endcase
        end
    end

endmodule
