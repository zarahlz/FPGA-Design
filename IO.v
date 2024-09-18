`timescale 1ns / 1ps

// IO Module
// Integrates Core and IOSwitch modules for managing multiple I/O operations
module IO(
    input wire rst,            // Reset signal
    input wire prog_in,        // Input for programming data
    input wire prog_en,        // Enable signal for programming
    input wire prog_clk,       // Clock signal for programming
    input wire clb_clk,        // Clock signal for Configurable Logic Block
    input wire [7:0] in1,      // 8-bit input data to be sent to IOSwitch
    input wire [7:0] in2,      // 8-bit input data to be sent to IOSwitch
    input wire [7:0] in3,      // 8-bit input data to be sent to IOSwitch
    input wire [7:0] in4,      // 8-bit input data to be sent to IOSwitch
    output wire prog_out,      // Output for programming data
    output wire [7:0] out1,    // 8-bit output data from IOSwitch
    output wire [7:0] out2,    // 8-bit output data from IOSwitch
    output wire [7:0] out3,    // 8-bit output data from IOSwitch
    output wire [7:0] out4     // 8-bit output data from IOSwitch
    );
    
    // Internal wires for connecting Core and IOSwitch modules
    wire [31:0] core_in1;
    wire [31:0] core_in2;
    wire [31:0] core_in3;
    wire [31:0] core_in4;
    wire [31:0] core_out1;
    wire [31:0] core_out2;
    wire [31:0] core_out3;
    wire [31:0] core_out4;
    
    wire core_prog_out;        // Output for Core module's programming data
    wire io1_prog_out;        // Output for IOSwitch 1's programming data
    wire io2_prog_out;        // Output for IOSwitch 2's programming data
    wire io3_prog_out;        // Output for IOSwitch 3's programming data
    
    // Instantiate Core module
    Core core(
        .rst(rst),
        .prog_in(prog_in),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(core_in1),
        .in2(core_in2),
        .in3(core_in3),
        .in4(core_in4),
        .prog_out(core_prog_out),
        .out1(core_out1),
        .out2(core_out2),
        .out3(core_out3),
        .out4(core_out4)
    );
    
    // Instantiate IOSwitch modules for each set of inputs
    IOSwitch io1(
        .rst(rst),
        .prog_in(core_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .core_out(core_out1),
        .in(in1),
        .prog_out(io1_prog_out),
        .core_in(core_in1),
        .out(out1)
    );
    
    IOSwitch io2(
        .rst(rst),
        .prog_in(io1_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .core_out(core_out2),
        .in(in2),
        .prog_out(io2_prog_out),
        .core_in(core_in2),
        .out(out2)
    );

    IOSwitch io3(
        .rst(rst),
        .prog_in(io2_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .core_out(core_out3),
        .in(in3),
        .prog_out(io3_prog_out),
        .core_in(core_in3),
        .out(out3)
    );
    
    IOSwitch io4(
        .rst(rst),
        .prog_in(io3_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .core_out(core_out4),
        .in(in4),
        .prog_out(prog_out),
        .core_in(core_in4),
        .out(out4)
    );
    
endmodule
