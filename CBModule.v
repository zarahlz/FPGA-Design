`timescale 1ns / 1ps

// Module: CBModule
// This module represents a configurable FPGA cell block. It interacts with a CLB (Configurable Logic Block)
// and an SB (Switch Box) module, performing data routing based on a shift register configuration.

module CBModule(
    input wire prog_in,           // Programming input for configuration
    input wire prog_en,           // Programming enable signal
    input wire prog_clk,          // Programming clock
    input wire clb_clk,           // Clock for the CLB (Configurable Logic Block)
    input wire [3:0] in1,         // Input signal 1 (4 bits)
    input wire [3:0] in2,         // Input signal 2 (4 bits)
    input wire [3:0] in3,         // Input signal 3 (4 bits)
    input wire [3:0] in4,         // Input signal 4 (4 bits)
    output wire prog_out,         // Programming output signal
    output wire [3:0] out1,       // Output signal 1 (4 bits)
    output wire [3:0] out2,       // Output signal 2 (4 bits)
    output wire [3:0] out3,       // Output signal 3 (4 bits)
    output wire [3:0] out4        // Output signal 4 (4 bits)
    );
    
    // Internal signals
    wire [3:0] clb_in;            // CLB input bus
    wire sb_prog_in;              // Programming input for the switch box (SB)
    wire sb_prog_out;             // Programming output from the switch box (SB)
    wire clb_out;                 // Output from the CLB
    wire [3:0] sb_in4;            // Switch box input 4
    wire [3:0] sb_out4;           // Switch box output 4
    
    // Muxes to route input/output signals through the switch box
    wire [7:0] clb_in_mux = {in1[3], out1[3], in1[2], out1[2], in1[1], out1[1], in1[0], out1[0]};
    wire [1:0] out3_mux = {clb_out, sb_out4[3]};
    wire [1:0] in3_mux = {clb_out, in4[3]};
    wire [1:0] out2_mux = {clb_out, sb_out4[2]};
    wire [1:0] in2_mux = {clb_out, in4[2]};
    wire [1:0] out1_mux = {clb_out, sb_out4[1]};
    wire [1:0] in1_mux = {clb_out, in4[1]};
    wire [1:0] out0_mux = {clb_out, sb_out4[0]};
    wire [1:0] in0_mux = {clb_out, in4[0]};
    
    // 20-bit shift register used for configuration
    reg [19:0] shift_reg;
    
    // Instantiate the CLB module
    CLBModule clb (
        .prog_in(prog_in),
        .prog_en(prog_en),
        .clb_clk(clb_clk),
        .prog_clk(prog_clk),
        .clb_input(clb_in),
        .prog_out(sb_prog_in),
        .clb_output(clb_out)
    );
    
    // Instantiate the SB module (Switch Box)
    SBModule sb (
        .in1(in1),      
        .in2(in2),     
        .in3(in3),      
        .in4(sb_in4),      
        .prog_in(sb_prog_in),        
        .prog_clk(prog_clk),       
        .prog_en(prog_en),     
        .out1(out1),   
        .out2(out2),    
        .out3(out3),    
        .out4(sb_out4),   
        .prog_out(sb_prog_out)
    );
    
    // MUX logic for routing CLB inputs
    MUX8to1 mux_clb_in3 (.MUX_sel(shift_reg[19:17]), .MUX_in(clb_in_mux), .MUX_out(clb_in[3]));
    MUX8to1 mux_clb_in2 (.MUX_sel(shift_reg[16:14]), .MUX_in(clb_in_mux), .MUX_out(clb_in[2]));
    MUX8to1 mux_clb_in1 (.MUX_sel(shift_reg[13:11]), .MUX_in(clb_in_mux), .MUX_out(clb_in[1]));
    MUX8to1 mux_clb_in0 (.MUX_sel(shift_reg[10:8]), .MUX_in(clb_in_mux), .MUX_out(clb_in[0]));
    
    // MUX logic for routing output signals
    MUX2to1 mux_out3 (.MUX_sel(shift_reg[7]), .MUX_in(out3_mux), .MUX_out(out4[3]));
    MUX2to1 mux_in3 (.MUX_sel(shift_reg[6]), .MUX_in(in3_mux), .MUX_out(sb_in4[3]));
    MUX2to1 mux_out2 (.MUX_sel(shift_reg[5]), .MUX_in(out2_mux), .MUX_out(out4[2]));
    MUX2to1 mux_in2 (.MUX_sel(shift_reg[4]), .MUX_in(in2_mux), .MUX_out(sb_in4[2]));
    MUX2to1 mux_out1 (.MUX_sel(shift_reg[3]), .MUX_in(out1_mux), .MUX_out(out4[1]));
    MUX2to1 mux_in1 (.MUX_sel(shift_reg[2]), .MUX_in(in1_mux), .MUX_out(sb_in4[1]));
    MUX2to1 mux_out0 (.MUX_sel(shift_reg[1]), .MUX_in(out0_mux), .MUX_out(out4[0]));
    MUX2to1 mux_in0 (.MUX_sel(shift_reg[0]), .MUX_in(in0_mux), .MUX_out(sb_in4[0]));
    
    initial begin
        shift_reg <= 20'b0;
    end
    
    // Shift register logic to store configuration data
    always @(posedge prog_clk) begin
        if (prog_en) begin
            // Shift the register and load sb_prog_out
            shift_reg <= {sb_prog_out, shift_reg[19:1]};
        end
    end
    
    // Output the least significant bit of the shift register
    assign prog_out = shift_reg[0];

endmodule
