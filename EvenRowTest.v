`timescale 1ns / 1ps

module EvenRowTest(
    input wire [551:0] prog,           // Programming input for configuratio
    input wire clb_clk,           // Clock for the CLB (Configurable Logic Block)
    input wire [3:0] in1,         // Input signal 1 (4 bits)
    input wire [31:0] in2,        // Input signal 2 (32 bits)
    input wire [3:0] in3,         // Input signal 3 (4 bits)
    input wire [31:0] in4,        // Input signal 4 (32 bits)
    output wire [3:0] out1,       // Output signal 1 (4 bits)
    output wire [31:0] out2,      // Output signal 2 (32 bits)
    output wire [3:0] out3,       // Output signal 3 (4 bits)
    output wire [31:0] out4       // Output signal 4 (32 bits)
    );   
    
    wire [3:0] cell2_out1;
    wire [3:0] cell3_out1;
    wire [3:0] cell4_out1;
    wire [3:0] cell5_out1;
    wire [3:0] cell6_out1;
    wire [3:0] cell7_out1;
    wire [3:0] cell8_out1;
    
    wire [3:0] cell1_out3;
    wire [3:0] cell2_out3;
    wire [3:0] cell3_out3;
    wire [3:0] cell4_out3;
    wire [3:0] cell5_out3;
    wire [3:0] cell6_out3;
    wire [3:0] cell7_out3; 

    // Function to reverse bits of a 4-bit input
    function [3:0] reverse_bits;
        input [3:0] data;
        begin
            reverse_bits = {data[0], data[1], data[2], data[3]};
        end
    endfunction
    
    // Generate reversed bit signals
    wire [3:0] reverse_cell2_out1 = reverse_bits(cell2_out1);
    wire [3:0] reverse_cell3_out1 = reverse_bits(cell3_out1);
    wire [3:0] reverse_cell4_out1 = reverse_bits(cell4_out1);
    wire [3:0] reverse_cell5_out1 = reverse_bits(cell5_out1);
    wire [3:0] reverse_cell6_out1 = reverse_bits(cell6_out1);
    wire [3:0] reverse_cell7_out1 = reverse_bits(cell7_out1);
    wire [3:0] reverse_cell8_out1 = reverse_bits(cell8_out1);

    wire [3:0] reverse_cell1_out3 = reverse_bits(cell1_out3);
    wire [3:0] reverse_cell2_out3 = reverse_bits(cell2_out3);
    wire [3:0] reverse_cell3_out3 = reverse_bits(cell3_out3);
    wire [3:0] reverse_cell4_out3 = reverse_bits(cell4_out3);
    wire [3:0] reverse_cell5_out3 = reverse_bits(cell5_out3);
    wire [3:0] reverse_cell6_out3 = reverse_bits(cell6_out3);
    wire [3:0] reverse_cell7_out3 = reverse_bits(cell7_out3);

    CBTest cell1 (
        .prog(prog[68:0]),
        .clb_clk(clb_clk),
        .in1(in1),
        .in2(in2[3:0]),
        .in3(reverse_cell2_out1),
        .in4(in4[31:28]),
        .out1(out1),
        .out2(out2[3:0]),
        .out3(cell1_out3),
        .out4(out4[31:28])
    );
    
    CBTest cell2 (
        .prog(prog[137:69]),
        .clb_clk(clb_clk),
        .in1(reverse_cell1_out3),
        .in2(in2[7:4]),
        .in3(reverse_cell3_out1),
        .in4(in4[27:24]),
        .out1(cell2_out1),
        .out2(out2[7:4]),
        .out3(cell2_out3),
        .out4(out4[27:24])
    );
    
    CBTest cell3 (
        .prog(prog[206:138]),
        .clb_clk(clb_clk),
        .in1(reverse_cell2_out3),
        .in2(in2[11:8]),
        .in3(reverse_cell4_out1),
        .in4(in4[23:20]),
        .out1(cell3_out1),
        .out2(out2[11:8]),
        .out3(cell3_out3),
        .out4(out4[23:20])
    );
    
     CBTest cell4 (
        .prog(prog[275:207]),
        .clb_clk(clb_clk),
        .in1(reverse_cell3_out3),
        .in2(in2[15:12]),
        .in3(reverse_cell5_out1),
        .in4(in4[19:16]),
        .out1(cell4_out1),
        .out2(out2[15:12]),
        .out3(cell4_out3),
        .out4(out4[19:16])
    );
    
    CBTest cell5 (
        .prog(prog[344:276]),
        .clb_clk(clb_clk),
        .in1(reverse_cell4_out3),
        .in2(in2[19:16]),
        .in3(reverse_cell6_out1),
        .in4(in4[15:12]),
        .out1(cell5_out1),
        .out2(out2[19:16]),
        .out3(cell5_out3),
        .out4(out4[15:12])
    );
    
    CBTest cell6 (
        .prog(prog[413:345]),
        .clb_clk(clb_clk),
        .in1(reverse_cell5_out3),
        .in2(in2[23:20]),
        .in3(reverse_cell7_out1),
        .in4(in4[11:8]),
        .out1(cell6_out1),
        .out2(out2[23:20]),
        .out3(cell6_out3),
        .out4(out4[11:8])
    );
    
    CBTest cell7 (
        .prog(prog[482:414]),
        .clb_clk(clb_clk),
        .in1(reverse_cell6_out3),
        .in2(in2[27:24]),
        .in3(reverse_cell8_out1),
        .in4(in4[7:4]),
        .out1(cell7_out1),
        .out2(out2[27:24]),
        .out3(cell7_out3),
        .out4(out4[7:4])
    );
    
    CBTest cell8 (
        .prog(prog[551:483]),
        .clb_clk(clb_clk),
        .in1(reverse_cell7_out3),
        .in2(in2[31:28]),
        .in3(in3),
        .in4(in4[3:0]),
        .out1(cell8_out1),
        .out2(out2[31:28]),
        .out3(out3),
        .out4(out4[3:0])
    );

endmodule
