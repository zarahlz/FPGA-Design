`timescale 1ns / 1ps

// Module for testing the connection block (CB)
module CBTest(
    input wire [68:0] prog,     // 69-bit configuration input
    input wire clb_clk,         // Clock signal for the CLB
    input wire rst,
    input wire [3:0] in1,       // 4-bit input from source 1
    input wire [3:0] in2,       // 4-bit input from source 2
    input wire [3:0] in3,       // 4-bit input from source 3
    input wire [3:0] in4,       // 4-bit input from source 4
    output wire [3:0] out1,     // 4-bit output to destination 1
    output wire [3:0] out2,     // 4-bit output to destination 2
    output wire [3:0] out3,     // 4-bit output to destination 3
    output wire [3:0] out4      // 4-bit output to destination 4
    );

    // Splitting the configuration bits into different parts
    wire [16:0] lut_prog = prog[68:52];  // 17-bit LUT configuration for CLB
    wire [31:0] sb_prog = prog[51:20];  // 32-bit configuration for switch box
    wire [11:0] sel_index = prog[19:8];  // 12-bit selection configuration for inputs
    wire [7:0] sel_in_out = prog[7:0];   // 8-bit configuration for input/output selection

    // Grouping inputs and outputs for routing purposes
    wire [7:0] in_out = {in1[3], out1[3], in1[2], out1[2], in1[1], out1[1], in1[0], out1[0]};

    // Wires for CLB input and output
    wire [3:0] clb_input;
    wire clb_output;

    // 8-to-1 multiplexers for selecting which inputs go to the CLB
    MUX8to1 clb_sel3 (.MUX_sel(sel_index[11:9]), .MUX_in(in_out), .MUX_out(clb_input[3]));
    MUX8to1 clb_sel2 (.MUX_sel(sel_index[8:6]), .MUX_in(in_out), .MUX_out(clb_input[2]));
    MUX8to1 clb_sel1 (.MUX_sel(sel_index[5:3]), .MUX_in(in_out), .MUX_out(clb_input[1]));
    MUX8to1 clb_sel0 (.MUX_sel(sel_index[2:0]), .MUX_in(in_out), .MUX_out(clb_input[0]));

    // Instantiating the CLB module
    CLBTest clb_test (.prog(lut_prog), .clb_clk(clb_clk), .rst(rst), .clb_input(clb_input), .clb_output(clb_output));

    // Wires for switch box input and output
    wire [3:0] sb_in4;
    wire [3:0] sb_out4;

    // Mux for selecting between CLB output and switch box output for each bit of out3, in3, etc.
    wire [1:0] out3_mux = {clb_output, sb_out4[3]};
    wire [1:0] in3_mux = {clb_output, in4[3]};
    wire [1:0] out2_mux = {clb_output, sb_out4[2]};
    wire [1:0] in2_mux = {clb_output, in4[2]};
    wire [1:0] out1_mux = {clb_output, sb_out4[1]};
    wire [1:0] in1_mux = {clb_output, in4[1]};
    wire [1:0] out0_mux = {clb_output, sb_out4[0]};
    wire [1:0] in0_mux = {clb_output, in4[0]};

    // 2-to-1 multiplexers for routing the input/output based on the selection bits
    MUX2to1 mux_out3 (.MUX_sel(sel_in_out[7]), .MUX_in(out3_mux), .MUX_out(out4[3]));
    MUX2to1 mux_in3 (.MUX_sel(sel_in_out[6]), .MUX_in(in3_mux), .MUX_out(sb_in4[3]));
    MUX2to1 mux_out2 (.MUX_sel(sel_in_out[5]), .MUX_in(out2_mux), .MUX_out(out4[2]));
    MUX2to1 mux_in2 (.MUX_sel(sel_in_out[4]), .MUX_in(in2_mux), .MUX_out(sb_in4[2]));
    MUX2to1 mux_out1 (.MUX_sel(sel_in_out[3]), .MUX_in(out1_mux), .MUX_out(out4[1]));
    MUX2to1 mux_in1 (.MUX_sel(sel_in_out[2]), .MUX_in(in1_mux), .MUX_out(sb_in4[1]));
    MUX2to1 mux_out0 (.MUX_sel(sel_in_out[1]), .MUX_in(out0_mux), .MUX_out(out4[0]));
    MUX2to1 mux_in0 (.MUX_sel(sel_in_out[0]), .MUX_in(in0_mux), .MUX_out(sb_in4[0]));

    // Instantiating the Switch Box (SB) module
    SBTest sb_test (.in1(in1), .in2(in2), .in3(in3), .in4(sb_in4), .prog(sb_prog), .out1(out1), .out2(out2), .out3(out3), .out4(sb_out4));

endmodule
