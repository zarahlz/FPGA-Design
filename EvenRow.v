`timescale 1ns / 1ps

module EvenRow(
    input wire prog_in,           // Programming input for configuration
    input wire prog_en,           // Programming enable signal
    input wire prog_clk,          // Programming clock
    input wire clb_clk,           // Clock for the CLB (Configurable Logic Block)
    input wire [3:0] in1,         // Input signal 1 (4 bits)
    input wire [31:0] in2,        // Input signal 2 (32 bits)
    input wire [3:0] in3,         // Input signal 3 (4 bits)
    input wire [31:0] in4,        // Input signal 4 (32 bits)
    output wire prog_out,         // Programming output signal
    output wire [3:0] out1,       // Output signal 1 (4 bits)
    output wire [31:0] out2,      // Output signal 2 (32 bits)
    output wire [3:0] out3,       // Output signal 3 (4 bits)
    output wire [31:0] out4       // Output signal 4 (32 bits)
);

    wire [3:0] cell1_in3;
    wire [3:0] cell2_in3;
    wire [3:0] cell3_in3;
    wire [3:0] cell4_in3;
    wire [3:0] cell5_in3;
    wire [3:0] cell6_in3;
    wire [3:0] cell7_in3;    
    
    wire [3:0] cell1_out3;
    wire [3:0] cell2_out3;
    wire [3:0] cell3_out3;
    wire [3:0] cell4_out3;
    wire [3:0] cell5_out3;
    wire [3:0] cell6_out3;
    wire [3:0] cell7_out3;

    wire cell1_prog_out;
    wire cell2_prog_out;
    wire cell3_prog_out;
    wire cell4_prog_out;
    wire cell5_prog_out;
    wire cell6_prog_out;
    wire cell7_prog_out;
    
    // Function to reverse bits of a 4-bit input
    function [3:0] reverse_bits;
        input [3:0] data;
        begin
            reverse_bits = {data[0], data[1], data[2], data[3]};
        end
    endfunction

    // Generate reversed bit signals
    wire [3:0] reverse_cell1_out3 = reverse_bits(cell1_out3);
    wire [3:0] reverse_cell2_out3 = reverse_bits(cell2_out3);
    wire [3:0] reverse_cell3_out3 = reverse_bits(cell3_out3);
    wire [3:0] reverse_cell4_out3 = reverse_bits(cell4_out3);
    wire [3:0] reverse_cell5_out3 = reverse_bits(cell5_out3);
    wire [3:0] reverse_cell6_out3 = reverse_bits(cell6_out3);
    wire [3:0] reverse_cell7_out3 = reverse_bits(cell7_out3);

    wire [3:0] reverse_cell1_in3 = reverse_bits(cell1_in3);
    wire [3:0] reverse_cell2_in3 = reverse_bits(cell2_in3);
    wire [3:0] reverse_cell3_in3 = reverse_bits(cell3_in3);
    wire [3:0] reverse_cell4_in3 = reverse_bits(cell4_in3);
    wire [3:0] reverse_cell5_in3 = reverse_bits(cell5_in3);
    wire [3:0] reverse_cell6_in3 = reverse_bits(cell6_in3);
    wire [3:0] reverse_cell7_in3 = reverse_bits(cell7_in3);
    
    CBModule cell1 (
        .prog_in(cell2_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(in1),
        .in2(in2[3:0]),
        .in3(cell1_in3),
        .in4(in4[31:28]),
        .prog_out(prog_out),
        .out1(out1),
        .out2(out2[3:0]),
        .out3(cell1_out3),
        .out4(out4[31:28])
    );
    
    CBModule cell2 (
        .prog_in(cell3_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(reverse_cell1_out3),
        .in2(in2[7:4]),
        .in3(cell2_in3),
        .in4(in4[27:24]),
        .prog_out(cell2_prog_out),
        .out1(reverse_cell1_in3),
        .out2(out2[7:4]),
        .out3(cell2_out3),
        .out4(out4[27:24])
    );
    
    CBModule cell3 (
        .prog_in(cell4_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(reverse_cell2_out3),
        .in2(in2[11:8]),
        .in3(cell3_in3),
        .in4(in4[23:20]),
        .prog_out(cell3_prog_out),
        .out1(reverse_cell2_in3),
        .out2(out2[11:8]),
        .out3(cell3_out3),
        .out4(out4[23:20])
    );
    
     CBModule cell4 (
        .prog_in(cell5_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(reverse_cell3_out3),
        .in2(in2[15:12]),
        .in3(cell4_in3),
        .in4(in4[19:16]),
        .prog_out(cell4_prog_out),
        .out1(reverse_cell3_in3),
        .out2(out2[15:12]),
        .out3(cell4_out3),
        .out4(out4[19:16])
    );
    
    CBModule cell5 (
        .prog_in(cell6_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(reverse_cell4_out3),
        .in2(in2[19:16]),
        .in3(cell5_in3),
        .in4(in4[15:12]),
        .prog_out(cell5_prog_out),
        .out1(reverse_cell4_in3),
        .out2(out2[19:16]),
        .out3(cell5_out3),
        .out4(out4[15:12])
    );
    
    CBModule cell6 (
        .prog_in(cell7_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(reverse_cell5_out3),
        .in2(in2[23:20]),
        .in3(cell6_in3),
        .in4(in4[11:8]),
        .prog_out(cell6_prog_out),
        .out1(reverse_cell5_in3),
        .out2(out2[23:20]),
        .out3(cell6_out3),
        .out4(out4[11:8])
    );
    
    CBModule cell7 (
        .prog_in(prog_in),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(reverse_cell6_out3),
        .in2(in2[27:24]),
        .in3(cell7_in3),
        .in4(in4[7:4]),
        .prog_out(cell7_prog_out),
        .out1(reverse_cell6_in3),
        .out2(out2[27:24]),
        .out3(cell7_out3),
        .out4(out4[7:4])
    );
    
    CBModule cell8 (
        .prog_in(cell7_prog_out),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(reverse_cell7_out3),
        .in2(in2[31:28]),
        .in3(in3),
        .in4(in4[3:0]),
        .prog_out(prog_out),
        .out1(reverse_cell7_in3),
        .out2(out2[31:28]),
        .out3(out3),
        .out4(out4[3:0])
    );

endmodule
