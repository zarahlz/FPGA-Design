`timescale 1ns / 1ps

module CLBTest (
    input wire [16:0] prog,
    input wire clb_clk,
    input wire rst,
    input wire [3:0] clb_input,
    output wire clb_output
);

    // LUT output
    wire lut_out;
    
    // Flip flop output
    wire ff_out;

    // MUX output
    wire [1:0] mux_in = !rst? 0 : {ff_out, lut_out};
    wire mux_out;
    
    // LUT instanciation
    LUT16to1 lut16to1 (
        .LUT_sel(clb_input),
        .LUT_input(prog[16:1]),
        .LUT_output(lut_out)
    );
    
    // Flip flop instantiation
    DFlipFlop d (
        .clk(clb_clk),
        .d(lut_out),
        .q(ff_out)
    );
    
    // MUX instantiation
    MUX2to1 mux2to1 (
        .MUX_sel(prog[0]),
        .MUX_in(mux_in),
        .MUX_out(mux_out)
    );
    
    // Output logic
    assign clb_output = mux_out;

endmodule
