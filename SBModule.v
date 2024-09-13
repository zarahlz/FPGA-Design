`timescale 1ns / 1ps

module SBModule (
    input [3:0] in1,      
    input [3:0] in2,     
    input [3:0] in3,      
    input [3:0] in4,      
    input prog_in,        
    input prog_clk,       
    input prog_en,    
    input rst,    
    output [3:0] out1,   
    output [3:0] out2,    
    output [3:0] out3,    
    output [3:0] out4,   
    output prog_out       
);

    reg [31:0] shift_reg;  
    
    always @(posedge prog_clk or negedge rst) begin
        if (prog_en) begin
            shift_reg <= {prog_in, shift_reg[31:1]}; 
        end
        if (!rst) begin
            shift_reg <= 32'b0; 
        end
    end

    
    assign prog_out = shift_reg[0];

    
    MUX4to1 mux1_0 (.MUX_in({in2[0], in3[0], in4[0], in4[0]}), .MUX_sel(shift_reg[31:30]), .MUX_out(out1[0]));
    MUX4to1 mux1_1 (.MUX_in({in2[1], in3[1], in4[1], in4[1]}), .MUX_sel(shift_reg[29:28]), .MUX_out(out1[1]));
    MUX4to1 mux1_2 (.MUX_in({in2[2], in3[2], in4[2], in4[2]}), .MUX_sel(shift_reg[27:26]), .MUX_out(out1[2]));
    MUX4to1 mux1_3 (.MUX_in({in2[3], in3[3], in4[3], in4[3]}), .MUX_sel(shift_reg[25:24]), .MUX_out(out1[3]));

    
    MUX4to1 mux2_0 (.MUX_in({in1[0], in3[0], in4[0], in4[0]}), .MUX_sel(shift_reg[23:22]), .MUX_out(out2[0]));
    MUX4to1 mux2_1 (.MUX_in({in1[1], in3[1], in4[1], in4[1]}), .MUX_sel(shift_reg[21:20]), .MUX_out(out2[1]));
    MUX4to1 mux2_2 (.MUX_in({in1[2], in3[2], in4[2], in4[2]}), .MUX_sel(shift_reg[19:18]), .MUX_out(out2[2]));
    MUX4to1 mux2_3 (.MUX_in({in1[3], in3[3], in4[3], in4[3]}), .MUX_sel(shift_reg[17:16]), .MUX_out(out2[3]));

    
    MUX4to1 mux3_0 (.MUX_in({in1[0], in2[0], in4[0], in4[0]}), .MUX_sel(shift_reg[15:14]), .MUX_out(out3[0]));
    MUX4to1 mux3_1 (.MUX_in({in1[1], in2[1], in4[1], in4[1]}), .MUX_sel(shift_reg[13:12]), .MUX_out(out3[1]));
    MUX4to1 mux3_2 (.MUX_in({in1[2], in2[2], in4[2], in4[2]}), .MUX_sel(shift_reg[11:10]), .MUX_out(out3[2]));
    MUX4to1 mux3_3 (.MUX_in({in1[3], in2[3], in4[3], in4[3]}), .MUX_sel(shift_reg[9:8]), .MUX_out(out3[3]));

    
    MUX4to1 mux4_0 (.MUX_in({in1[0], in2[0], in3[0], in3[0]}), .MUX_sel(shift_reg[7:6]), .MUX_out(out4[0]));
    MUX4to1 mux4_1 (.MUX_in({in1[1], in2[1], in3[1], in3[1]}), .MUX_sel(shift_reg[5:4]), .MUX_out(out4[1]));
    MUX4to1 mux4_2 (.MUX_in({in1[2], in2[2], in3[2], in3[2]}), .MUX_sel(shift_reg[3:2]), .MUX_out(out4[2]));
    MUX4to1 mux4_3 (.MUX_in({in1[3], in2[3], in3[3], in3[3]}), .MUX_sel(shift_reg[1:0]), .MUX_out(out4[3]));

endmodule