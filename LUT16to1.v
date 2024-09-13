`timescale 1ns / 1ps

module LUT16to1 (
    input wire [3:0] LUT_sel,    // 4-bit selection input
    input wire [15:0] LUT_input, // 16-bit input
    output wire LUT_output       // LUT output
);

    // LUT logic using case statement (if synthesis tools have issues)
    assign LUT_output = (LUT_sel == 4'b0000) ? LUT_input[0] :
                        (LUT_sel == 4'b0001) ? LUT_input[1] :
                        (LUT_sel == 4'b0010) ? LUT_input[2] :
                        (LUT_sel == 4'b0011) ? LUT_input[3] :
                        (LUT_sel == 4'b0100) ? LUT_input[4] :
                        (LUT_sel == 4'b0101) ? LUT_input[5] :
                        (LUT_sel == 4'b0110) ? LUT_input[6] :
                        (LUT_sel == 4'b0111) ? LUT_input[7] :
                        (LUT_sel == 4'b1000) ? LUT_input[8] :
                        (LUT_sel == 4'b1001) ? LUT_input[9] :
                        (LUT_sel == 4'b1010) ? LUT_input[10] :
                        (LUT_sel == 4'b1011) ? LUT_input[11] :
                        (LUT_sel == 4'b1100) ? LUT_input[12] :
                        (LUT_sel == 4'b1101) ? LUT_input[13] :
                        (LUT_sel == 4'b1110) ? LUT_input[14] :
                                               LUT_input[15];

endmodule
