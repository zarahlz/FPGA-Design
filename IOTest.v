`timescale 1ns / 1ps

// IO Module
// Integrates Core and IOSwitch modules for managing multiple I/O operations
module IOTest(
    input wire [4479:0] prog,           // Input for programming data
    input wire clb_clk,        // Clock signal for Configurable Logic Block
    input wire [7:0] in1,      // 8-bit input data to be sent to IOSwitch
    input wire [7:0] in2,      // 8-bit input data to be sent to IOSwitch
    input wire [7:0] in3,      // 8-bit input data to be sent to IOSwitch
    input wire [7:0] in4,      // 8-bit input data to be sent to IOSwitch
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
    
    // Instantiate Core module
    CoreTest core(
        .prog(prog[4479:64]),
        .clb_clk(clb_clk),
        .in1(core_in1),
        .in2(core_in2),
        .in3(core_in3),
        .in4(core_in4),
        .out1(core_out1),
        .out2(core_out2),
        .out3(core_out3),
        .out4(core_out4)
    );
    
    // Instantiate IOSwitch modules for each set of inputs
    IOSwitchTest io1(
        .prog(prog[63:48]),
        .clb_clk(clb_clk),
        .core_out(core_out1),
        .in(in1),
        .core_in(core_in1),
        .out(out1)
    );
    
    IOSwitchTest io2(
        .prog(prog[47:32]),
        .clb_clk(clb_clk),
        .core_out(core_out2),
        .in(in2),
        .core_in(core_in2),
        .out(out2)
    );

    IOSwitchTest io3(
        .prog(prog[31:16]),
        .clb_clk(clb_clk),
        .core_out(core_out3),
        .in(in3),
        .core_in(core_in3),
        .out(out3)
    );
    
    IOSwitchTest io4(
        .prog(prog[15:0]),
        .clb_clk(clb_clk),
        .core_out(core_out4),
        .in(in4),
        .core_in(core_in4),
        .out(out4)
    );
    
endmodule
