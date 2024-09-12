`timescale 1ns / 1ps

// Core Module
// Handles the main functionality and processing
module Core(
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
    
endmodule