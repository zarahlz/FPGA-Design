`timescale 1ns / 1ps

// Core Module
// Handles the main functionality and processing
module Core(
    input wire rst,            // Reset signal
    input wire prog_in,        // Input for programming data
    input wire prog_en,        // Enable signal for programming
    input wire prog_clk,       // Clock signal for programming
    input wire clb_clk,        // Clock signal for the Configurable Logic Block
    input wire [31:0] in1,     // 32-bit input data for the core
    input wire [31:0] in2,     // 32-bit input data for the core
    input wire [31:0] in3,     // 32-bit input data for the core
    input wire [31:0] in4,     // 32-bit input data for the core
    output wire prog_out,      // Output for programming data
    output wire [31:0] out1,   // 32-bit output data from the core
    output wire [31:0] out2,   // 32-bit output data from the core
    output wire [31:0] out3,   // 32-bit output data from the core
    output wire [31:0] out4    // 32-bit output data from the core
    );
    
    // Function to reverse bits of a 32-bit input
    function [31:0] reverse_bits;
        input [31:0] data;
        begin
            reverse_bits = {data[0], data[1], data[2], data[3], data[4], data[5], data[6], data[7],
                            data[8], data[9], data[10], data[11], data[12], data[13], data[14], data[15],
                            data[16], data[17], data[18], data[19], data[20], data[21], data[22], data[23],
                            data[24], data[25], data[26], data[27], data[28], data[29], data[30], data[31]};
        end
    endfunction

    wire [31:0] row1_out2;
    wire [31:0] row2_out2;
    wire [31:0] row3_out2;
    wire [31:0] row4_out2;
    wire [31:0] row5_out2;
    wire [31:0] row6_out2;
    wire [31:0] row7_out2;

    wire [31:0] row2_out4;
    wire [31:0] row3_out4;
    wire [31:0] row4_out4;
    wire [31:0] row5_out4;
    wire [31:0] row6_out4;
    wire [31:0] row7_out4;
    wire [31:0] row8_out4;

    wire row1_prog_out;
    wire row2_prog_out;
    wire row3_prog_out;
    wire row4_prog_out;
    wire row5_prog_out;
    wire row6_prog_out;
    wire row7_prog_out;

    // Generate reversed bit signals
    wire [31:0] reverse_row1_out2 = reverse_bits(row1_out2);
    wire [31:0] reverse_row2_out2 = reverse_bits(row2_out2);
    wire [31:0] reverse_row3_out2 = reverse_bits(row3_out2);
    wire [31:0] reverse_row4_out2 = reverse_bits(row4_out2);
    wire [31:0] reverse_row5_out2 = reverse_bits(row5_out2);
    wire [31:0] reverse_row6_out2 = reverse_bits(row6_out2);
    wire [31:0] reverse_row7_out2 = reverse_bits(row7_out2);

    wire [31:0] reverse_row2_out4 = reverse_bits(row2_out4);
    wire [31:0] reverse_row3_out4 = reverse_bits(row3_out4);
    wire [31:0] reverse_row4_out4 = reverse_bits(row4_out4);
    wire [31:0] reverse_row5_out4 = reverse_bits(row5_out4);
    wire [31:0] reverse_row6_out4 = reverse_bits(row6_out4);
    wire [31:0] reverse_row7_out4 = reverse_bits(row7_out4);
    wire [31:0] reverse_row8_out4 = reverse_bits(row8_out4);

    OddRow row1 (
        .rst(rst),
        .prog_in(prog_in),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(in1[3:0]),
        .in2(reverse_row2_out4),
        .in3(in3[31:28]),
        .in4(in4),
        .prog_out(row1_prog_out),
        .out1(out1[3:0]),
        .out2(row1_out2),
        .out3(out3[31:28]),
        .out4(out4)
    );

    EvenRow row2 (
        .rst(rst),
        .prog_in(row1_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(in1[7:4]),
        .in2(reverse_row3_out4),
        .in3(in3[27:24]),
        .in4(reverse_row1_out2),
        .prog_out(row2_prog_out),
        .out1(out1[7:4]),
        .out2(row2_out2),
        .out3(out3[27:24]),
        .out4(row2_out4)
    );

    OddRow row3 (
        .rst(rst),
        .prog_in(row2_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(in1[11:8]),
        .in2(reverse_row4_out4),
        .in3(in3[23:20]),
        .in4(reverse_row2_out2),
        .prog_out(row3_prog_out),
        .out1(out1[11:8]),
        .out2(row3_out2),
        .out3(out3[23:20]),
        .out4(row3_out4)
    );

    EvenRow row4 (
        .rst(rst),
        .prog_in(row3_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(in1[15:12]),
        .in2(reverse_row5_out4),
        .in3(in3[19:16]),
        .in4(reverse_row3_out2),
        .prog_out(row4_prog_out),
        .out1(out1[15:12]),
        .out2(row4_out2),
        .out3(out3[19:16]),
        .out4(row4_out4)
    );

    OddRow row5 (
        .rst(rst),
        .prog_in(row4_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(in1[19:16]),
        .in2(reverse_row6_out4),
        .in3(in3[15:12]),
        .in4(reverse_row4_out2),
        .prog_out(row5_prog_out),
        .out1(out1[19:16]),
        .out2(row5_out2),
        .out3(out3[15:12]),
        .out4(row5_out4)
    );

    EvenRow row6 (
        .rst(rst),
        .prog_in(row5_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(in1[23:20]),
        .in2(reverse_row7_out4),
        .in3(in3[11:8]),
        .in4(reverse_row5_out2),
        .prog_out(row6_prog_out),
        .out1(out1[23:20]),
        .out2(row6_out2),
        .out3(out3[11:8]),
        .out4(row6_out4)
    );

    OddRow row7 (
        .rst(rst),
        .prog_in(row6_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(in1[27:24]),
        .in2(reverse_row8_out4),
        .in3(in3[7:4]),
        .in4(reverse_row6_out2),
        .prog_out(row7_prog_out),
        .out1(out1[27:24]),
        .out2(row7_out2),
        .out3(out3[7:4]),
        .out4(row7_out4)
    );

    EvenRow row8 (
        .rst(rst),
        .prog_in(row7_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(in1[31:28]),
        .in2(in2),
        .in3(in3[3:0]),
        .in4(reverse_row7_out2),
        .prog_out(prog_out),
        .out1(out1[31:28]),
        .out2(out2),
        .out3(out3[3:0]),
        .out4(row8_out4)
    );
endmodule
