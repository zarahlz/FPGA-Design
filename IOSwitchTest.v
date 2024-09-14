`timescale 1ns / 1ps

// IOSwitch Module
// Switches and multiplexes I/O signals between the Core module and external I/O
module IOSwitchTest(
    input wire [15:0] prog,           // Input for programming data
    input wire clb_clk,        // Clock signal for Configurable Logic Block
    input wire [31:0] core_out,// 32-bit output data from the Core module
    input wire [7:0] in,       // 8-bit input data to be sent to Core
    output wire [31:0] core_in,// 32-bit input data to the Core module
    output wire [7:0] out      // 8-bit output data from IOSwitch
    );
    
    // Multiplexer instances to select the output based on shift register value
    MUX4to1 mux0 (.MUX_in(core_out[3:0]), .MUX_sel(prog[15:14]), .MUX_out(out[0]));
    MUX4to1 mux1 (.MUX_in(core_out[7:4]), .MUX_sel(prog[13:12]), .MUX_out(out[1]));
    MUX4to1 mux2 (.MUX_in(core_out[11:8]), .MUX_sel(prog[11:10]), .MUX_out(out[2]));
    MUX4to1 mux3 (.MUX_in(core_out[15:12]), .MUX_sel(prog[9:8]), .MUX_out(out[3]));
    MUX4to1 mux4 (.MUX_in(core_out[19:16]), .MUX_sel(prog[7:6]), .MUX_out(out[4]));
    MUX4to1 mux5 (.MUX_in(core_out[23:20]), .MUX_sel(prog[5:4]), .MUX_out(out[5]));
    MUX4to1 mux6 (.MUX_in(core_out[27:24]), .MUX_sel(prog[3:2]), .MUX_out(out[6]));
    MUX4to1 mux7 (.MUX_in(core_out[31:28]), .MUX_sel(prog[1:0]), .MUX_out(out[7]));
    
    // Assign core input data based on 8-bit input signals
    assign core_in[3:0] = {4{in[0]}};
    assign core_in[7:4] = {4{in[1]}};
    assign core_in[11:8] = {4{in[2]}};
    assign core_in[15:12] = {4{in[3]}};
    assign core_in[19:16] = {4{in[4]}};
    assign core_in[23:20] = {4{in[5]}};
    assign core_in[27:24] = {4{in[6]}};
    assign core_in[31:28] = {4{in[7]}};
    
endmodule