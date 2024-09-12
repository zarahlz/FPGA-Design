`timescale 1ns / 1ps

// If shift == 0 => prog_in enters from the left side of the shift register, hence, use shift_reg; else use shift_reg1
module CLBModule #(parameter shift=0) (
    input wire prog_in,
    input wire prog_en,
    input wire prog_clk,
    input wire clb_clk,
    input wire [3:0] clb_input,
    output wire prog_out,
    output wire clb_output
);

    // 17-bit shift register
    reg [16:0] shift_reg;
    reg [16:0] shift_reg1;
    
    // LUT output
    wire lut_out;
    
    // Flip flop output
    wire ff_out;

    // MUX output
    wire [1:0] mux_in = {ff_out, lut_out};
    wire mux_out;
    
    initial begin
        shift_reg = 17'b0;
        shift_reg1 = 17'b0;
    end
    
    // LUT instanciation
    LUT16to1 lut16to1 (
        .LUT_sel(clb_input),
        .LUT_input(!shift ? shift_reg[16:1] : shift_reg1[16:1]),
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
        .MUX_sel(!shift ? shift_reg[0] : shift_reg1[0]),
        .MUX_in(mux_in),
        .MUX_out(mux_out)
    );

    // Shift register logic
    always @(posedge prog_clk) begin
        if (prog_en) begin
            shift_reg <= {prog_in, shift_reg[16:1]};
            shift_reg1 <= {shift_reg1[15:0], prog_in};
        end
    end
    
    // Prog out logic
    assign prog_out = !shift ? shift_reg[0] : shift_reg1[16];
    
    // Output logic
    assign clb_output = !prog_en ? mux_out : 0;

endmodule
