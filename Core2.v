`timescale 1ns/1ps

module Core2(
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

    // For cell0
    wire [3:0] in0_0;
    wire [3:0] in0_1;
    wire [3:0] in0_2;
    wire [3:0] in0_3;
    wire [3:0] out0_0;
    wire [3:0] out0_1;
    wire [3:0] out0_2;
    wire [3:0] out0_3;
    // For cell1
    wire [3:0] in1_0;
    wire [3:0] in1_1;
    wire [3:0] in1_2;
    wire [3:0] in1_3;
    wire [3:0] out1_0;
    wire [3:0] out1_1;
    wire [3:0] out1_2;
    wire [3:0] out1_3;
    // For cell2
    wire [3:0] in2_0;
    wire [3:0] in2_1;
    wire [3:0] in2_2;
    wire [3:0] in2_3;
    wire [3:0] out2_0;
    wire [3:0] out2_1;
    wire [3:0] out2_2;
    wire [3:0] out2_3;
    // For cell3
    wire [3:0] in3_0;
    wire [3:0] in3_1;
    wire [3:0] in3_2;
    wire [3:0] in3_3;
    wire [3:0] out3_0;
    wire [3:0] out3_1;
    wire [3:0] out3_2;
    wire [3:0] out3_3;
    // For cell4
    wire [3:0] in4_0;
    wire [3:0] in4_1;
    wire [3:0] in4_2;
    wire [3:0] in4_3;
    wire [3:0] out4_0;
    wire [3:0] out4_1;
    wire [3:0] out4_2;
    wire [3:0] out4_3;
    // For cell5
    wire [3:0] in5_0;
    wire [3:0] in5_1;
    wire [3:0] in5_2;
    wire [3:0] in5_3;
    wire [3:0] out5_0;
    wire [3:0] out5_1;
    wire [3:0] out5_2;
    wire [3:0] out5_3;
    // For cell6
    wire [3:0] in6_0;
    wire [3:0] in6_1;
    wire [3:0] in6_2;
    wire [3:0] in6_3;
    wire [3:0] out6_0;
    wire [3:0] out6_1;
    wire [3:0] out6_2;
    wire [3:0] out6_3;
    // For cell7
    wire [3:0] in7_0;
    wire [3:0] in7_1;
    wire [3:0] in7_2;
    wire [3:0] in7_3;
    wire [3:0] out7_0;
    wire [3:0] out7_1;
    wire [3:0] out7_2;
    wire [3:0] out7_3;
    // For cell8
    wire [3:0] in8_0;
    wire [3:0] in8_1;
    wire [3:0] in8_2;
    wire [3:0] in8_3;
    wire [3:0] out8_0;
    wire [3:0] out8_1;
    wire [3:0] out8_2;
    wire [3:0] out8_3;
    // For cell9
    wire [3:0] in9_0;
    wire [3:0] in9_1;
    wire [3:0] in9_2;
    wire [3:0] in9_3;
    wire [3:0] out9_0;
    wire [3:0] out9_1;
    wire [3:0] out9_2;
    wire [3:0] out9_3;
    // For cell10
    wire [3:0] in10_0;
    wire [3:0] in10_1;
    wire [3:0] in10_2;
    wire [3:0] in10_3;
    wire [3:0] out10_0;
    wire [3:0] out10_1;
    wire [3:0] out10_2;
    wire [3:0] out10_3;
    // For cell11
    wire [3:0] in11_0;
    wire [3:0] in11_1;
    wire [3:0] in11_2;
    wire [3:0] in11_3;
    wire [3:0] out11_0;
    wire [3:0] out11_1;
    wire [3:0] out11_2;
    wire [3:0] out11_3;
    // For cell12
    wire [3:0] in12_0;
    wire [3:0] in12_1;
    wire [3:0] in12_2;
    wire [3:0] in12_3;
    wire [3:0] out12_0;
    wire [3:0] out12_1;
    wire [3:0] out12_2;
    wire [3:0] out12_3;
    // For cell13
    wire [3:0] in13_0;
    wire [3:0] in13_1;
    wire [3:0] in13_2;
    wire [3:0] in13_3;
    wire [3:0] out13_0;
    wire [3:0] out13_1;
    wire [3:0] out13_2;
    wire [3:0] out13_3;
    // For cell14
    wire [3:0] in14_0;
    wire [3:0] in14_1;
    wire [3:0] in14_2;
    wire [3:0] in14_3;
    wire [3:0] out14_0;
    wire [3:0] out14_1;
    wire [3:0] out14_2;
    wire [3:0] out14_3;
    // For cell15
    wire [3:0] in15_0;
    wire [3:0] in15_1;
    wire [3:0] in15_2;
    wire [3:0] in15_3;
    wire [3:0] out15_0;
    wire [3:0] out15_1;
    wire [3:0] out15_2;
    wire [3:0] out15_3;
    // For cell16
    wire [3:0] in16_0;
    wire [3:0] in16_1;
    wire [3:0] in16_2;
    wire [3:0] in16_3;
    wire [3:0] out16_0;
    wire [3:0] out16_1;
    wire [3:0] out16_2;
    wire [3:0] out16_3;
    // For cell17
    wire [3:0] in17_0;
    wire [3:0] in17_1;
    wire [3:0] in17_2;
    wire [3:0] in17_3;
    wire [3:0] out17_0;
    wire [3:0] out17_1;
    wire [3:0] out17_2;
    wire [3:0] out17_3;
    // For cell18
    wire [3:0] in18_0;
    wire [3:0] in18_1;
    wire [3:0] in18_2;
    wire [3:0] in18_3;
    wire [3:0] out18_0;
    wire [3:0] out18_1;
    wire [3:0] out18_2;
    wire [3:0] out18_3;
    // For cell19
    wire [3:0] in19_0;
    wire [3:0] in19_1;
    wire [3:0] in19_2;
    wire [3:0] in19_3;
    wire [3:0] out19_0;
    wire [3:0] out19_1;
    wire [3:0] out19_2;
    wire [3:0] out19_3;
    // For cell20
    wire [3:0] in20_0;
    wire [3:0] in20_1;
    wire [3:0] in20_2;
    wire [3:0] in20_3;
    wire [3:0] out20_0;
    wire [3:0] out20_1;
    wire [3:0] out20_2;
    wire [3:0] out20_3;
    // For cell21
    wire [3:0] in21_0;
    wire [3:0] in21_1;
    wire [3:0] in21_2;
    wire [3:0] in21_3;
    wire [3:0] out21_0;
    wire [3:0] out21_1;
    wire [3:0] out21_2;
    wire [3:0] out21_3;
    // For cell22
    wire [3:0] in22_0;
    wire [3:0] in22_1;
    wire [3:0] in22_2;
    wire [3:0] in22_3;
    wire [3:0] out22_0;
    wire [3:0] out22_1;
    wire [3:0] out22_2;
    wire [3:0] out22_3;
    // For cell23
    wire [3:0] in23_0;
    wire [3:0] in23_1;
    wire [3:0] in23_2;
    wire [3:0] in23_3;
    wire [3:0] out23_0;
    wire [3:0] out23_1;
    wire [3:0] out23_2;
    wire [3:0] out23_3;
    // For cell24
    wire [3:0] in24_0;
    wire [3:0] in24_1;
    wire [3:0] in24_2;
    wire [3:0] in24_3;
    wire [3:0] out24_0;
    wire [3:0] out24_1;
    wire [3:0] out24_2;
    wire [3:0] out24_3;
    // For cell25
    wire [3:0] in25_0;
    wire [3:0] in25_1;
    wire [3:0] in25_2;
    wire [3:0] in25_3;
    wire [3:0] out25_0;
    wire [3:0] out25_1;
    wire [3:0] out25_2;
    wire [3:0] out25_3;
    // For cell26
    wire [3:0] in26_0;
    wire [3:0] in26_1;
    wire [3:0] in26_2;
    wire [3:0] in26_3;
    wire [3:0] out26_0;
    wire [3:0] out26_1;
    wire [3:0] out26_2;
    wire [3:0] out26_3;
    // For cell27
    wire [3:0] in27_0;
    wire [3:0] in27_1;
    wire [3:0] in27_2;
    wire [3:0] in27_3;
    wire [3:0] out27_0;
    wire [3:0] out27_1;
    wire [3:0] out27_2;
    wire [3:0] out27_3;
    // For cell28
    wire [3:0] in28_0;
    wire [3:0] in28_1;
    wire [3:0] in28_2;
    wire [3:0] in28_3;
    wire [3:0] out28_0;
    wire [3:0] out28_1;
    wire [3:0] out28_2;
    wire [3:0] out28_3;
    // For cell29
    wire [3:0] in29_0;
    wire [3:0] in29_1;
    wire [3:0] in29_2;
    wire [3:0] in29_3;
    wire [3:0] out29_0;
    wire [3:0] out29_1;
    wire [3:0] out29_2;
    wire [3:0] out29_3;
    // For cell30
    wire [3:0] in30_0;
    wire [3:0] in30_1;
    wire [3:0] in30_2;
    wire [3:0] in30_3;
    wire [3:0] out30_0;
    wire [3:0] out30_1;
    wire [3:0] out30_2;
    wire [3:0] out30_3;
    // For cell31
    wire [3:0] in31_0;
    wire [3:0] in31_1;
    wire [3:0] in31_2;
    wire [3:0] in31_3;
    wire [3:0] out31_0;
    wire [3:0] out31_1;
    wire [3:0] out31_2;
    wire [3:0] out31_3;
    // For cell32
    wire [3:0] in32_0;
    wire [3:0] in32_1;
    wire [3:0] in32_2;
    wire [3:0] in32_3;
    wire [3:0] out32_0;
    wire [3:0] out32_1;
    wire [3:0] out32_2;
    wire [3:0] out32_3;
    // For cell33
    wire [3:0] in33_0;
    wire [3:0] in33_1;
    wire [3:0] in33_2;
    wire [3:0] in33_3;
    wire [3:0] out33_0;
    wire [3:0] out33_1;
    wire [3:0] out33_2;
    wire [3:0] out33_3;
    // For cell34
    wire [3:0] in34_0;
    wire [3:0] in34_1;
    wire [3:0] in34_2;
    wire [3:0] in34_3;
    wire [3:0] out34_0;
    wire [3:0] out34_1;
    wire [3:0] out34_2;
    wire [3:0] out34_3;
    // For cell35
    wire [3:0] in35_0;
    wire [3:0] in35_1;
    wire [3:0] in35_2;
    wire [3:0] in35_3;
    wire [3:0] out35_0;
    wire [3:0] out35_1;
    wire [3:0] out35_2;
    wire [3:0] out35_3;
    // For cell36
    wire [3:0] in36_0;
    wire [3:0] in36_1;
    wire [3:0] in36_2;
    wire [3:0] in36_3;
    wire [3:0] out36_0;
    wire [3:0] out36_1;
    wire [3:0] out36_2;
    wire [3:0] out36_3;
    // For cell37
    wire [3:0] in37_0;
    wire [3:0] in37_1;
    wire [3:0] in37_2;
    wire [3:0] in37_3;
    wire [3:0] out37_0;
    wire [3:0] out37_1;
    wire [3:0] out37_2;
    wire [3:0] out37_3;
    // For cell38
    wire [3:0] in38_0;
    wire [3:0] in38_1;
    wire [3:0] in38_2;
    wire [3:0] in38_3;
    wire [3:0] out38_0;
    wire [3:0] out38_1;
    wire [3:0] out38_2;
    wire [3:0] out38_3;
    // For cell39
    wire [3:0] in39_0;
    wire [3:0] in39_1;
    wire [3:0] in39_2;
    wire [3:0] in39_3;
    wire [3:0] out39_0;
    wire [3:0] out39_1;
    wire [3:0] out39_2;
    wire [3:0] out39_3;
    // For cell40
    wire [3:0] in40_0;
    wire [3:0] in40_1;
    wire [3:0] in40_2;
    wire [3:0] in40_3;
    wire [3:0] out40_0;
    wire [3:0] out40_1;
    wire [3:0] out40_2;
    wire [3:0] out40_3;
    // For cell41
    wire [3:0] in41_0;
    wire [3:0] in41_1;
    wire [3:0] in41_2;
    wire [3:0] in41_3;
    wire [3:0] out41_0;
    wire [3:0] out41_1;
    wire [3:0] out41_2;
    wire [3:0] out41_3;
    // For cell42
    wire [3:0] in42_0;
    wire [3:0] in42_1;
    wire [3:0] in42_2;
    wire [3:0] in42_3;
    wire [3:0] out42_0;
    wire [3:0] out42_1;
    wire [3:0] out42_2;
    wire [3:0] out42_3;
    // For cell43
    wire [3:0] in43_0;
    wire [3:0] in43_1;
    wire [3:0] in43_2;
    wire [3:0] in43_3;
    wire [3:0] out43_0;
    wire [3:0] out43_1;
    wire [3:0] out43_2;
    wire [3:0] out43_3;
    // For cell44
    wire [3:0] in44_0;
    wire [3:0] in44_1;
    wire [3:0] in44_2;
    wire [3:0] in44_3;
    wire [3:0] out44_0;
    wire [3:0] out44_1;
    wire [3:0] out44_2;
    wire [3:0] out44_3;
    // For cell45
    wire [3:0] in45_0;
    wire [3:0] in45_1;
    wire [3:0] in45_2;
    wire [3:0] in45_3;
    wire [3:0] out45_0;
    wire [3:0] out45_1;
    wire [3:0] out45_2;
    wire [3:0] out45_3;
    // For cell46
    wire [3:0] in46_0;
    wire [3:0] in46_1;
    wire [3:0] in46_2;
    wire [3:0] in46_3;
    wire [3:0] out46_0;
    wire [3:0] out46_1;
    wire [3:0] out46_2;
    wire [3:0] out46_3;
    // For cell47
    wire [3:0] in47_0;
    wire [3:0] in47_1;
    wire [3:0] in47_2;
    wire [3:0] in47_3;
    wire [3:0] out47_0;
    wire [3:0] out47_1;
    wire [3:0] out47_2;
    wire [3:0] out47_3;
    // For cell48
    wire [3:0] in48_0;
    wire [3:0] in48_1;
    wire [3:0] in48_2;
    wire [3:0] in48_3;
    wire [3:0] out48_0;
    wire [3:0] out48_1;
    wire [3:0] out48_2;
    wire [3:0] out48_3;
    // For cell49
    wire [3:0] in49_0;
    wire [3:0] in49_1;
    wire [3:0] in49_2;
    wire [3:0] in49_3;
    wire [3:0] out49_0;
    wire [3:0] out49_1;
    wire [3:0] out49_2;
    wire [3:0] out49_3;
    // For cell50
    wire [3:0] in50_0;
    wire [3:0] in50_1;
    wire [3:0] in50_2;
    wire [3:0] in50_3;
    wire [3:0] out50_0;
    wire [3:0] out50_1;
    wire [3:0] out50_2;
    wire [3:0] out50_3;
    // For cell51
    wire [3:0] in51_0;
    wire [3:0] in51_1;
    wire [3:0] in51_2;
    wire [3:0] in51_3;
    wire [3:0] out51_0;
    wire [3:0] out51_1;
    wire [3:0] out51_2;
    wire [3:0] out51_3;
    // For cell52
    wire [3:0] in52_0;
    wire [3:0] in52_1;
    wire [3:0] in52_2;
    wire [3:0] in52_3;
    wire [3:0] out52_0;
    wire [3:0] out52_1;
    wire [3:0] out52_2;
    wire [3:0] out52_3;
    // For cell53
    wire [3:0] in53_0;
    wire [3:0] in53_1;
    wire [3:0] in53_2;
    wire [3:0] in53_3;
    wire [3:0] out53_0;
    wire [3:0] out53_1;
    wire [3:0] out53_2;
    wire [3:0] out53_3;
    // For cell54
    wire [3:0] in54_0;
    wire [3:0] in54_1;
    wire [3:0] in54_2;
    wire [3:0] in54_3;
    wire [3:0] out54_0;
    wire [3:0] out54_1;
    wire [3:0] out54_2;
    wire [3:0] out54_3;
    // For cell55
    wire [3:0] in55_0;
    wire [3:0] in55_1;
    wire [3:0] in55_2;
    wire [3:0] in55_3;
    wire [3:0] out55_0;
    wire [3:0] out55_1;
    wire [3:0] out55_2;
    wire [3:0] out55_3;
    // For cell56
    wire [3:0] in56_0;
    wire [3:0] in56_1;
    wire [3:0] in56_2;
    wire [3:0] in56_3;
    wire [3:0] out56_0;
    wire [3:0] out56_1;
    wire [3:0] out56_2;
    wire [3:0] out56_3;
    // For cell57
    wire [3:0] in57_0;
    wire [3:0] in57_1;
    wire [3:0] in57_2;
    wire [3:0] in57_3;
    wire [3:0] out57_0;
    wire [3:0] out57_1;
    wire [3:0] out57_2;
    wire [3:0] out57_3;
    // For cell58
    wire [3:0] in58_0;
    wire [3:0] in58_1;
    wire [3:0] in58_2;
    wire [3:0] in58_3;
    wire [3:0] out58_0;
    wire [3:0] out58_1;
    wire [3:0] out58_2;
    wire [3:0] out58_3;
    // For cell59
    wire [3:0] in59_0;
    wire [3:0] in59_1;
    wire [3:0] in59_2;
    wire [3:0] in59_3;
    wire [3:0] out59_0;
    wire [3:0] out59_1;
    wire [3:0] out59_2;
    wire [3:0] out59_3;
    // For cell60
    wire [3:0] in60_0;
    wire [3:0] in60_1;
    wire [3:0] in60_2;
    wire [3:0] in60_3;
    wire [3:0] out60_0;
    wire [3:0] out60_1;
    wire [3:0] out60_2;
    wire [3:0] out60_3;
    // For cell61
    wire [3:0] in61_0;
    wire [3:0] in61_1;
    wire [3:0] in61_2;
    wire [3:0] in61_3;
    wire [3:0] out61_0;
    wire [3:0] out61_1;
    wire [3:0] out61_2;
    wire [3:0] out61_3;
    // For cell62
    wire [3:0] in62_0;
    wire [3:0] in62_1;
    wire [3:0] in62_2;
    wire [3:0] in62_3;
    wire [3:0] out62_0;
    wire [3:0] out62_1;
    wire [3:0] out62_2;
    wire [3:0] out62_3;
    // For cell63
    wire [3:0] in63_0;
    wire [3:0] in63_1;
    wire [3:0] in63_2;
    wire [3:0] in63_3;
    wire [3:0] out63_0;
    wire [3:0] out63_1;
    wire [3:0] out63_2;
    wire [3:0] out63_3;

    wire prog_out0;
    wire prog_out1;
    wire prog_out2;
    wire prog_out3;
    wire prog_out4;
    wire prog_out5;
    wire prog_out6;
    wire prog_out7;
    wire prog_out8;
    wire prog_out9;
    wire prog_out10;
    wire prog_out11;
    wire prog_out12;
    wire prog_out13;
    wire prog_out14;
    wire prog_out15;
    wire prog_out16;
    wire prog_out17;
    wire prog_out18;
    wire prog_out19;
    wire prog_out20;
    wire prog_out21;
    wire prog_out22;
    wire prog_out23;
    wire prog_out24;
    wire prog_out25;
    wire prog_out26;
    wire prog_out27;
    wire prog_out28;
    wire prog_out29;
    wire prog_out30;
    wire prog_out31;
    wire prog_out32;
    wire prog_out33;
    wire prog_out34;
    wire prog_out35;
    wire prog_out36;
    wire prog_out37;
    wire prog_out38;
    wire prog_out39;
    wire prog_out40;
    wire prog_out41;
    wire prog_out42;
    wire prog_out43;
    wire prog_out44;
    wire prog_out45;
    wire prog_out46;
    wire prog_out47;
    wire prog_out48;
    wire prog_out49;
    wire prog_out50;
    wire prog_out51;
    wire prog_out52;
    wire prog_out53;
    wire prog_out54;
    wire prog_out55;
    wire prog_out56;
    wire prog_out57;
    wire prog_out58;
    wire prog_out59;
    wire prog_out60;
    wire prog_out61;
    wire prog_out62;
    wire prog_out63;
    
    // Function to reverse bits of a 32-bit input
    function [3:0] reverse_bits;
        input [3:0] data;
        begin
            reverse_bits = {data[0], data[1], data[2], data[3]};
        end
    endfunction

    //---------------------------------
    // For cell0
    assign in0_0 = in1[3:0];
    assign in0_1 = reverse_bits(out15_3);
    assign in0_2 = reverse_bits(out1_0);
    assign in0_3 = in4[31:28];
    
    assign out1[3:0] = out0_0;
    assign out4[31:28] = out0_3;
    //---------------------------------
    // For cell1
    assign in1_0 = out0_2;
    assign in1_1 = reverse_bits(out14_3); 
    assign in1_2 = reverse_bits(out2_0);
    assign in1_3 = in4[27:24]; 

    assign out4[27:24] = out1_3; 
    //---------------------------------
    // For cell2
    assign in2_0 = out1_2;
    assign in2_1 = reverse_bits(out13_3); 
    assign in2_2 = reverse_bits(out3_0);
    assign in2_3 = in4[23:20]; 

    assign out4[23:20] = out2_3; 
    //---------------------------------
    // For cell3
    assign in3_0 = out2_2;
    assign in3_1 = reverse_bits(out12_3); 
    assign in3_2 = reverse_bits(out4_0);
    assign in3_3 = in4[19:16]; 

    assign out4[19:16] = out3_3; 
    //---------------------------------
    // For cell4
    assign in4_0 = out3_2;
    assign in4_1 = reverse_bits(out11_3); 
    assign in4_2 = reverse_bits(out5_0);
    assign in4_3 = in4[15:12]; 

    assign out4[15:12] = out4_3; 
    //---------------------------------
    // For cell5
    assign in5_0 = out4_2;
    assign in5_1 = reverse_bits(out10_3); 
    assign in5_2 = reverse_bits(out6_0);
    assign in5_3 = in4[11:8]; 

    assign out4[11:8] = out5_3;
    //---------------------------------
    // For cell6
    assign in6_0 = out5_2;
    assign in6_1 = reverse_bits(out9_3); 
    assign in6_2 = reverse_bits(out7_0);
    assign in6_3 = in4[7:4]; 

    assign out4[7:4] = out6_3; 
    //---------------------------------
    // For cell7
    assign in7_0 = out6_2;
    assign in7_1 = reverse_bits(out8_3); 
    assign in7_2 = in3[31:28];
    assign in7_3 = in4[3:0]; 

    assign out3[31:28] = out7_2;
    assign out4[3:0] = out7_3; 
    //---------------------------------
    //===================================================
    //---------------------------------
    // For cell8
    assign in8_0 = reverse_bits(out9_2);
    assign in8_1 = reverse_bits(out23_3);
    assign in8_2 = in3[27:24];
    assign in8_3 = reverse_bits(out7_1);

    assign  out3[27:24] = out8_2;
    //---------------------------------
    // For cell9
    assign in9_0 = reverse_bits(out10_2);
    assign in9_1 = reverse_bits(out22_3); 
    assign in9_2 = reverse_bits(out8_0);
    assign in9_3 = reverse_bits(out6_1);
    //---------------------------------
    // For cell10
    assign in10_0 = reverse_bits(out11_2);
    assign in10_1 = reverse_bits(out21_3); 
    assign in10_2 = reverse_bits(out9_0);
    assign in10_3 = reverse_bits(out5_1);
    //---------------------------------
    // For cell11
    assign in11_0 = reverse_bits(out12_2);
    assign in11_1 = reverse_bits(out20_3); 
    assign in11_2 = reverse_bits(out10_0);
    assign in11_3 = reverse_bits(out4_1); 
    //---------------------------------
    // For cell12
    assign in12_0 = reverse_bits(out13_2);
    assign in12_1 = reverse_bits(out19_3); 
    assign in12_2 = reverse_bits(out11_0);
    assign in12_3 = reverse_bits(out3_1);
    //---------------------------------
    // For cell13
    assign in13_0 = reverse_bits(out14_2);
    assign in13_1 = reverse_bits(out18_3); 
    assign in13_2 = reverse_bits(out12_0);
    assign in13_3 = reverse_bits(out2_1);
    //---------------------------------
    // For cell14
    assign in14_0 = reverse_bits(out15_2);
    assign in14_1 = reverse_bits(out17_3); 
    assign in14_2 = reverse_bits(out13_0);
    assign in14_3 = reverse_bits(out1_1);
    //---------------------------------
    // For cell15
    assign in15_0 = in1[7:4];
    assign in15_1 = reverse_bits(out16_3); 
    assign in15_2 = reverse_bits(out14_0);
    assign in15_3 = reverse_bits(out0_1);
    assign out1[7:4] = out15_0; 
    //---------------------------------
    //===================================================
    //---------------------------------
    // For cell16
    assign in16_0 = in1[11:8];
    assign in16_1 = reverse_bits(out31_3);
    assign in16_2 = reverse_bits(out17_0);
    assign in16_3 = reverse_bits(out15_1);
    assign out1[11:8] = out16_0;
    //---------------------------------
    // For cell17
    assign in17_0 = reverse_bits(out16_2);
    assign in17_1 = reverse_bits(out30_3); 
    assign in17_2 = reverse_bits(out18_0);
    assign in17_3 = reverse_bits(out14_1);
    //---------------------------------
    // For cell18
    assign in18_0 = reverse_bits(out17_2);
    assign in18_1 = reverse_bits(out29_3); 
    assign in18_2 = reverse_bits(out19_0);
    assign in18_3 = reverse_bits(out13_1);
    //---------------------------------
    // For cell19
    assign in19_0 = reverse_bits(out18_2);
    assign in19_1 = reverse_bits(out28_3); 
    assign in19_2 = reverse_bits(out20_0);
    assign in19_3 = reverse_bits(out12_1); 
    //---------------------------------
    // For cell20
    assign in20_0 = reverse_bits(out19_2);
    assign in20_1 = reverse_bits(out27_3); 
    assign in20_2 = reverse_bits(out21_0);
    assign in20_3 = reverse_bits(out11_1);
    //---------------------------------
    // For cell21
    assign in21_0 = reverse_bits(out20_2);
    assign in21_1 = reverse_bits(out26_3); 
    assign in21_2 = reverse_bits(out22_0);
    assign in21_3 = reverse_bits(out10_1);
    //---------------------------------
    // For cell22
    assign in22_0 = reverse_bits(out21_2);
    assign in22_1 = reverse_bits(out25_3); 
    assign in22_2 = reverse_bits(out23_0);
    assign in22_3 = reverse_bits(out9_1);
    //---------------------------------
    // For cell23
    assign in23_0 = reverse_bits(out22_2);
    assign in23_1 = reverse_bits(out24_3); 
    assign in23_2 = in3[23:20];
    assign in23_3 = reverse_bits(out8_1);

    assign out3[23:20] = out23_2; 
    //---------------------------------
    //===================================================
    //---------------------------------
    // For cell24
    assign in24_0 = reverse_bits(out25_2);
    assign in24_1 = reverse_bits(out39_3);
    assign in24_2 = in3[19:16];
    assign in24_3 = reverse_bits(out23_1);
    assign out3[19:16] = out24_2;
    //---------------------------------
    // For cell25
    assign in25_0 = reverse_bits(out26_2);
    assign in25_1 = reverse_bits(out38_3); 
    assign in25_2 = reverse_bits(out24_0);
    assign in25_3 = reverse_bits(out22_1);
    //---------------------------------
    // For cell26
    assign in26_0 = reverse_bits(out27_2);
    assign in26_1 = reverse_bits(out37_3); 
    assign in26_2 = reverse_bits(out25_0);
    assign in26_3 = reverse_bits(out21_1);
    //---------------------------------
    // For cell27
    assign in27_0 = reverse_bits(out28_2);
    assign in27_1 = reverse_bits(out36_3); 
    assign in27_2 = reverse_bits(out26_0);
    assign in27_3 = reverse_bits(out20_1); 
    //---------------------------------
    // For cell28
    assign in28_0 = reverse_bits(out29_2);
    assign in28_1 = reverse_bits(out35_3); 
    assign in28_2 = reverse_bits(out27_0);
    assign in28_3 = reverse_bits(out19_1);
    //---------------------------------
    // For cell29
    assign in29_0 = reverse_bits(out30_2);
    assign in29_1 = reverse_bits(out34_3); 
    assign in29_2 = reverse_bits(out28_0);
    assign in29_3 = reverse_bits(out18_1);
    //---------------------------------
    // For cell30
    assign in30_0 = reverse_bits(out31_2);
    assign in30_1 = reverse_bits(out33_3); 
    assign in30_2 = reverse_bits(out29_0);
    assign in30_3 = reverse_bits(out17_1);
    //---------------------------------
    // For cell31
    assign in31_0 = in1[15:12];
    assign in31_1 = reverse_bits(out32_3); 
    assign in31_2 = reverse_bits(out30_0);
    assign in31_3 = reverse_bits(out16_1);
    assign out1[15:12] = out31_0; 
    //---------------------------------
    //===================================================
    //---------------------------------
    // For cell32
    assign in32_0 = in1[19:16];
    assign in32_1 = reverse_bits(out47_3);
    assign in32_2 = reverse_bits(out33_0);
    assign in32_3 = reverse_bits(out31_1);
    assign out1[19:16] = out32_0;
    //---------------------------------
    // For cell33
    assign in33_0 = reverse_bits(out32_2);
    assign in33_1 = reverse_bits(out46_3); 
    assign in33_2 = reverse_bits(out34_0);
    assign in33_3 = reverse_bits(out30_1);
    //---------------------------------
    // For cell34
    assign in34_0 = reverse_bits(out33_2);
    assign in34_1 = reverse_bits(out45_3); 
    assign in34_2 = reverse_bits(out35_0);
    assign in34_3 = reverse_bits(out29_1);
    //---------------------------------
    // For cell35
    assign in35_0 = reverse_bits(out34_2);
    assign in35_1 = reverse_bits(out44_3); 
    assign in35_2 = reverse_bits(out36_0);
    assign in35_3 = reverse_bits(out28_1); 
    //---------------------------------
    // For cell36
    assign in36_0 = reverse_bits(out35_2);
    assign in36_1 = reverse_bits(out43_3); 
    assign in36_2 = reverse_bits(out37_0);
    assign in36_3 = reverse_bits(out27_1);
    //---------------------------------
    // For cell37
    assign in37_0 = reverse_bits(out36_2);
    assign in37_1 = reverse_bits(out42_3); 
    assign in37_2 = reverse_bits(out38_0);
    assign in37_3 = reverse_bits(out26_1);
    //---------------------------------
    // For cell38
    assign in38_0 = reverse_bits(out37_2);
    assign in38_1 = reverse_bits(out41_3); 
    assign in38_2 = reverse_bits(out39_0);
    assign in38_3 = reverse_bits(out25_1);
    //---------------------------------
    // For cell39
    assign in39_0 = reverse_bits(out38_2);
    assign in39_1 = reverse_bits(out40_3); 
    assign in39_2 = in3[15:12];
    assign in39_3 = reverse_bits(out24_1);
    
    assign out3[15:12] = out39_2; 
    //---------------------------------
    //===================================================
    //---------------------------------
    // For cell40
    assign in40_0 = reverse_bits(out41_2);
    assign in40_1 = reverse_bits(out55_3);
    assign in40_2 = in3[11:8];
    assign in40_3 = reverse_bits(out39_1);
    assign out3[11:8] = out40_2;
    //---------------------------------
    // For cell41
    assign in41_0 = reverse_bits(out42_2);
    assign in41_1 = reverse_bits(out54_3); 
    assign in41_2 = reverse_bits(out40_0);
    assign in41_3 = reverse_bits(out38_1);
    //---------------------------------
    // For cell42
    assign in42_0 = reverse_bits(out43_2);
    assign in42_1 = reverse_bits(out53_3); 
    assign in42_2 = reverse_bits(out41_0);
    assign in42_3 = reverse_bits(out37_1);
    //---------------------------------
    // For cell43
    assign in43_0 = reverse_bits(out44_2);
    assign in43_1 = reverse_bits(out52_3); 
    assign in43_2 = reverse_bits(out42_0);
    assign in43_3 = reverse_bits(out36_1); 
    //---------------------------------
    // For cell44
    assign in44_0 = reverse_bits(out45_2);
    assign in44_1 = reverse_bits(out51_3); 
    assign in44_2 = reverse_bits(out43_0);
    assign in44_3 = reverse_bits(out35_1);
    //---------------------------------
    // For cell45
    assign in45_0 = reverse_bits(out46_2);
    assign in45_1 = reverse_bits(out50_3); 
    assign in45_2 = reverse_bits(out44_0);
    assign in45_3 = reverse_bits(out34_1);
    //---------------------------------
    // For cell46
    assign in46_0 = reverse_bits(out47_2);
    assign in46_1 = reverse_bits(out49_3); 
    assign in46_2 = reverse_bits(out45_0);
    assign in46_3 = reverse_bits(out33_1);
    //---------------------------------
    // For cell47
    assign in47_0 = in1[23:20];
    assign in47_1 = reverse_bits(out48_3); 
    assign in47_2 = reverse_bits(out30_0);
    assign in47_3 = reverse_bits(out32_1);
    assign out1[23:20] = out47_0; 
    //---------------------------------
    //===================================================
    //---------------------------------
    // For cell48
    assign in48_0 = in1[27:24];
    assign in48_1 = reverse_bits(out63_3);
    assign in48_2 = reverse_bits(out49_0);
    assign in48_3 = reverse_bits(out47_1);
    assign out1[27:24] = out48_0;
    //---------------------------------
    // For cell49
    assign in49_0 = reverse_bits(out48_2);
    assign in49_1 = reverse_bits(out62_3); 
    assign in49_2 = reverse_bits(out50_0);
    assign in49_3 = reverse_bits(out46_1);
    //---------------------------------
    // For cell50
    assign in50_0 = reverse_bits(out49_2);
    assign in50_1 = reverse_bits(out61_3); 
    assign in50_2 = reverse_bits(out51_0);
    assign in50_3 = reverse_bits(out45_1);
    //---------------------------------
    // For cell51
    assign in51_0 = reverse_bits(out50_2);
    assign in51_1 = reverse_bits(out60_3); 
    assign in51_2 = reverse_bits(out52_0);
    assign in51_3 = reverse_bits(out44_1); 
    //---------------------------------
    // For cell52
    assign in52_0 = reverse_bits(out51_2);
    assign in52_1 = reverse_bits(out59_3); 
    assign in52_2 = reverse_bits(out53_0);
    assign in52_3 = reverse_bits(out43_1);
    //---------------------------------
    // For cell53
    assign in53_0 = reverse_bits(out52_2);
    assign in53_1 = reverse_bits(out58_3); 
    assign in53_2 = reverse_bits(out54_0);
    assign in53_3 = reverse_bits(out42_1);
    //---------------------------------
    // For cell54
    assign in54_0 = reverse_bits(out53_2);
    assign in54_1 = reverse_bits(out57_3); 
    assign in54_2 = reverse_bits(out55_0);
    assign in54_3 = reverse_bits(out41_1);
    //---------------------------------
    // For cell55
    assign in55_0 = reverse_bits(out54_2);
    assign in55_1 = reverse_bits(out56_3); 
    assign in55_2 = in3[7:4];
    assign in55_3 = reverse_bits(out40_1);
    
    assign out3[7:4] = out55_2; 
    //---------------------------------
    //===================================================
    //---------------------------------
    // For cell56
    assign in56_0 = reverse_bits(out57_2);
    assign in56_1 = in2[31:28];
    assign in56_2 = in3[3:0];
    assign in56_3 = reverse_bits(out55_1);

    assign out2[31:28] = out56_1;
    assign out3[3:0] = out56_2;
    //---------------------------------
    // For cell57
    assign in57_0 = reverse_bits(out58_2);
    assign in57_1 = in2[27:24];
    assign in57_2 = reverse_bits(out56_0);
    assign in57_3 = reverse_bits(out54_1); 
    
    assign out2[27:24] = out57_1;
    //---------------------------------
    // For cell58
    assign in58_0 = reverse_bits(out59_2);
    assign in58_1 = in2[23:20];
    assign in58_2 = reverse_bits(out57_0);
    assign in58_3 = reverse_bits(out53_1);

    assign out2[23:20] = out58_1;
    //---------------------------------
    // For cell59
    assign in59_0 = reverse_bits(out60_2);
    assign in59_1 = in2[19:16];
    assign in59_2 = reverse_bits(out58_0);
    assign in59_3 = reverse_bits(out52_1); 

    assign out2[19:16] = out59_1;
    //---------------------------------
    // For cell60
    assign in60_0 = reverse_bits(out61_2);
    assign in60_1 = in2[15:12];
    assign in60_2 = reverse_bits(out59_0);
    assign in60_3 = reverse_bits(out51_1);

    assign out2[15:12] = out60_1;
    //---------------------------------
    // For cell61
    assign in61_0 = reverse_bits(out62_2);
    assign in61_1 = in2[11:8]; 
    assign in61_2 = reverse_bits(out60_0);
    assign in61_3 = reverse_bits(out50_1);

    assign out2[11:8] = out61_1;
    //---------------------------------
    // For cell62
    assign in62_0 = reverse_bits(out63_2);
    assign in62_1 = in2[7:4];
    assign in62_2 = reverse_bits(out61_0);
    assign in62_3 = reverse_bits(out49_1);

    assign out2[7:4] = out62_1;
    //---------------------------------
    // For cell63
    assign in63_0 = in1[31:28];
    assign in63_1 = in2[3:0];
    assign in63_2 = reverse_bits(out62_0);
    assign in63_3 = reverse_bits(out48_1);
    assign out1[31:28] = out63_0; 
    assign out2[3:0] = out63_1;

    //---------------------------------
    //===================================================
    //---------------------------------

    CBModule cell0 (
        .prog_in(prog_in),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in0_0),                 // Input signal 1 (4 bits)
        .in2(in0_1),                 // Input signal 2 (4 bits)
        .in3(in0_2),                 // Input signal 3 (4 bits)
        .in4(in0_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out0),        // Programming output signal
        .out1(out0_0),         // Output signal 1 (4 bits)
        .out2(out0_1),         // Output signal 2 (4 bits)
        .out3(out0_2),         // Output signal 3 (4 bits)
        .out4(out0_3)          // Output signal 4 (4 bits)
    );
    CBModule cell1 (
        .prog_in(prog_out0),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in1_0),                 // Input signal 1 (4 bits)
        .in2(in1_1),                 // Input signal 2 (4 bits)
        .in3(in1_2),                 // Input signal 3 (4 bits)
        .in4(in1_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out1),        // Programming output signal
        .out1(out1_0),         // Output signal 1 (4 bits)
        .out2(out1_1),         // Output signal 2 (4 bits)
        .out3(out1_2),         // Output signal 3 (4 bits)
        .out4(out1_3)          // Output signal 4 (4 bits)
    );
    CBModule cell2 (
        .prog_in(prog_out1),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in2_0),                 // Input signal 1 (4 bits)
        .in2(in2_1),                 // Input signal 2 (4 bits)
        .in3(in2_2),                 // Input signal 3 (4 bits)
        .in4(in2_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out2),        // Programming output signal
        .out1(out2_0),         // Output signal 1 (4 bits)
        .out2(out2_1),         // Output signal 2 (4 bits)
        .out3(out2_2),         // Output signal 3 (4 bits)
        .out4(out2_3)          // Output signal 4 (4 bits)
    );
    CBModule cell3 (
        .prog_in(prog_out2),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in3_0),                 // Input signal 1 (4 bits)
        .in2(in3_1),                 // Input signal 2 (4 bits)
        .in3(in3_2),                 // Input signal 3 (4 bits)
        .in4(in3_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out3),        // Programming output signal
        .out1(out3_0),         // Output signal 1 (4 bits)
        .out2(out3_1),         // Output signal 2 (4 bits)
        .out3(out3_2),         // Output signal 3 (4 bits)
        .out4(out3_3)          // Output signal 4 (4 bits)
    );
    CBModule cell4 (
        .prog_in(prog_out3),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in4_0),                 // Input signal 1 (4 bits)
        .in2(in4_1),                 // Input signal 2 (4 bits)
        .in3(in4_2),                 // Input signal 3 (4 bits)
        .in4(in4_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out4),        // Programming output signal
        .out1(out4_0),         // Output signal 1 (4 bits)
        .out2(out4_1),         // Output signal 2 (4 bits)
        .out3(out4_2),         // Output signal 3 (4 bits)
        .out4(out4_3)          // Output signal 4 (4 bits)
    );
    CBModule cell5 (
        .prog_in(prog_out4),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in5_0),                 // Input signal 1 (4 bits)
        .in2(in5_1),                 // Input signal 2 (4 bits)
        .in3(in5_2),                 // Input signal 3 (4 bits)
        .in4(in5_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out5),        // Programming output signal
        .out1(out5_0),         // Output signal 1 (4 bits)
        .out2(out5_1),         // Output signal 2 (4 bits)
        .out3(out5_2),         // Output signal 3 (4 bits)
        .out4(out5_3)          // Output signal 4 (4 bits)
    );
    CBModule cell6 (
        .prog_in(prog_out5),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in6_0),                 // Input signal 1 (4 bits)
        .in2(in6_1),                 // Input signal 2 (4 bits)
        .in3(in6_2),                 // Input signal 3 (4 bits)
        .in4(in6_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out6),        // Programming output signal
        .out1(out6_0),         // Output signal 1 (4 bits)
        .out2(out6_1),         // Output signal 2 (4 bits)
        .out3(out6_2),         // Output signal 3 (4 bits)
        .out4(out6_3)          // Output signal 4 (4 bits)
    );
    CBModule cell7 (
        .prog_in(prog_out6),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in7_0),                 // Input signal 1 (4 bits)
        .in2(in7_1),                 // Input signal 2 (4 bits)
        .in3(in7_2),                 // Input signal 3 (4 bits)
        .in4(in7_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out7),        // Programming output signal
        .out1(out7_0),         // Output signal 1 (4 bits)
        .out2(out7_1),         // Output signal 2 (4 bits)
        .out3(out7_2),         // Output signal 3 (4 bits)
        .out4(out7_3)          // Output signal 4 (4 bits)
    );
    CBModule cell8 (
        .prog_in(prog_out7),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in8_0),                 // Input signal 1 (4 bits)
        .in2(in8_1),                 // Input signal 2 (4 bits)
        .in3(in8_2),                 // Input signal 3 (4 bits)
        .in4(in8_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out8),        // Programming output signal
        .out1(out8_0),         // Output signal 1 (4 bits)
        .out2(out8_1),         // Output signal 2 (4 bits)
        .out3(out8_2),         // Output signal 3 (4 bits)
        .out4(out8_3)          // Output signal 4 (4 bits)
    );
    CBModule cell9 (
        .prog_in(prog_out8),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in9_0),                 // Input signal 1 (4 bits)
        .in2(in9_1),                 // Input signal 2 (4 bits)
        .in3(in9_2),                 // Input signal 3 (4 bits)
        .in4(in9_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out9),        // Programming output signal
        .out1(out9_0),         // Output signal 1 (4 bits)
        .out2(out9_1),         // Output signal 2 (4 bits)
        .out3(out9_2),         // Output signal 3 (4 bits)
        .out4(out9_3)          // Output signal 4 (4 bits)
    );
    CBModule cell10 (
        .prog_in(prog_out9),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in10_0),                 // Input signal 1 (4 bits)
        .in2(in10_1),                 // Input signal 2 (4 bits)
        .in3(in10_2),                 // Input signal 3 (4 bits)
        .in4(in10_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out10),        // Programming output signal
        .out1(out10_0),         // Output signal 1 (4 bits)
        .out2(out10_1),         // Output signal 2 (4 bits)
        .out3(out10_2),         // Output signal 3 (4 bits)
        .out4(out10_3)          // Output signal 4 (4 bits)
    );
    CBModule cell11 (
        .prog_in(prog_out10),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in11_0),                 // Input signal 1 (4 bits)
        .in2(in11_1),                 // Input signal 2 (4 bits)
        .in3(in11_2),                 // Input signal 3 (4 bits)
        .in4(in11_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out11),        // Programming output signal
        .out1(out11_0),         // Output signal 1 (4 bits)
        .out2(out11_1),         // Output signal 2 (4 bits)
        .out3(out11_2),         // Output signal 3 (4 bits)
        .out4(out11_3)          // Output signal 4 (4 bits)
    );
    CBModule cell12 (
        .prog_in(prog_out11),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in12_0),                 // Input signal 1 (4 bits)
        .in2(in12_1),                 // Input signal 2 (4 bits)
        .in3(in12_2),                 // Input signal 3 (4 bits)
        .in4(in12_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out12),        // Programming output signal
        .out1(out12_0),         // Output signal 1 (4 bits)
        .out2(out12_1),         // Output signal 2 (4 bits)
        .out3(out12_2),         // Output signal 3 (4 bits)
        .out4(out12_3)          // Output signal 4 (4 bits)
    );
    CBModule cell13 (
        .prog_in(prog_out12),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in13_0),                 // Input signal 1 (4 bits)
        .in2(in13_1),                 // Input signal 2 (4 bits)
        .in3(in13_2),                 // Input signal 3 (4 bits)
        .in4(in13_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out13),        // Programming output signal
        .out1(out13_0),         // Output signal 1 (4 bits)
        .out2(out13_1),         // Output signal 2 (4 bits)
        .out3(out13_2),         // Output signal 3 (4 bits)
        .out4(out13_3)          // Output signal 4 (4 bits)
    );
    CBModule cell14 (
        .prog_in(prog_out13),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in14_0),                 // Input signal 1 (4 bits)
        .in2(in14_1),                 // Input signal 2 (4 bits)
        .in3(in14_2),                 // Input signal 3 (4 bits)
        .in4(in14_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out14),        // Programming output signal
        .out1(out14_0),         // Output signal 1 (4 bits)
        .out2(out14_1),         // Output signal 2 (4 bits)
        .out3(out14_2),         // Output signal 3 (4 bits)
        .out4(out14_3)          // Output signal 4 (4 bits)
    );
    CBModule cell15 (
        .prog_in(prog_out14),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in15_0),                 // Input signal 1 (4 bits)
        .in2(in15_1),                 // Input signal 2 (4 bits)
        .in3(in15_2),                 // Input signal 3 (4 bits)
        .in4(in15_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out15),        // Programming output signal
        .out1(out15_0),         // Output signal 1 (4 bits)
        .out2(out15_1),         // Output signal 2 (4 bits)
        .out3(out15_2),         // Output signal 3 (4 bits)
        .out4(out15_3)          // Output signal 4 (4 bits)
    );
    CBModule cell16 (
        .prog_in(prog_out15),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in16_0),                 // Input signal 1 (4 bits)
        .in2(in16_1),                 // Input signal 2 (4 bits)
        .in3(in16_2),                 // Input signal 3 (4 bits)
        .in4(in16_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out16),        // Programming output signal
        .out1(out16_0),         // Output signal 1 (4 bits)
        .out2(out16_1),         // Output signal 2 (4 bits)
        .out3(out16_2),         // Output signal 3 (4 bits)
        .out4(out16_3)          // Output signal 4 (4 bits)
    );
    CBModule cell17 (
        .prog_in(prog_out16),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in17_0),                 // Input signal 1 (4 bits)
        .in2(in17_1),                 // Input signal 2 (4 bits)
        .in3(in17_2),                 // Input signal 3 (4 bits)
        .in4(in17_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out17),        // Programming output signal
        .out1(out17_0),         // Output signal 1 (4 bits)
        .out2(out17_1),         // Output signal 2 (4 bits)
        .out3(out17_2),         // Output signal 3 (4 bits)
        .out4(out17_3)          // Output signal 4 (4 bits)
    );
    CBModule cell18 (
        .prog_in(prog_out17),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in18_0),                 // Input signal 1 (4 bits)
        .in2(in18_1),                 // Input signal 2 (4 bits)
        .in3(in18_2),                 // Input signal 3 (4 bits)
        .in4(in18_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out18),        // Programming output signal
        .out1(out18_0),         // Output signal 1 (4 bits)
        .out2(out18_1),         // Output signal 2 (4 bits)
        .out3(out18_2),         // Output signal 3 (4 bits)
        .out4(out18_3)          // Output signal 4 (4 bits)
    );
    CBModule cell19 (
        .prog_in(prog_out18),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in19_0),                 // Input signal 1 (4 bits)
        .in2(in19_1),                 // Input signal 2 (4 bits)
        .in3(in19_2),                 // Input signal 3 (4 bits)
        .in4(in19_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out19),        // Programming output signal
        .out1(out19_0),         // Output signal 1 (4 bits)
        .out2(out19_1),         // Output signal 2 (4 bits)
        .out3(out19_2),         // Output signal 3 (4 bits)
        .out4(out19_3)          // Output signal 4 (4 bits)
    );
    CBModule cell20 (
        .prog_in(prog_out19),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in20_0),                 // Input signal 1 (4 bits)
        .in2(in20_1),                 // Input signal 2 (4 bits)
        .in3(in20_2),                 // Input signal 3 (4 bits)
        .in4(in20_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out20),        // Programming output signal
        .out1(out20_0),         // Output signal 1 (4 bits)
        .out2(out20_1),         // Output signal 2 (4 bits)
        .out3(out20_2),         // Output signal 3 (4 bits)
        .out4(out20_3)          // Output signal 4 (4 bits)
    );
    CBModule cell21 (
        .prog_in(prog_out20),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in21_0),                 // Input signal 1 (4 bits)
        .in2(in21_1),                 // Input signal 2 (4 bits)
        .in3(in21_2),                 // Input signal 3 (4 bits)
        .in4(in21_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out21),        // Programming output signal
        .out1(out21_0),         // Output signal 1 (4 bits)
        .out2(out21_1),         // Output signal 2 (4 bits)
        .out3(out21_2),         // Output signal 3 (4 bits)
        .out4(out21_3)          // Output signal 4 (4 bits)
    );
    CBModule cell22 (
        .prog_in(prog_out21),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in22_0),                 // Input signal 1 (4 bits)
        .in2(in22_1),                 // Input signal 2 (4 bits)
        .in3(in22_2),                 // Input signal 3 (4 bits)
        .in4(in22_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out22),        // Programming output signal
        .out1(out22_0),         // Output signal 1 (4 bits)
        .out2(out22_1),         // Output signal 2 (4 bits)
        .out3(out22_2),         // Output signal 3 (4 bits)
        .out4(out22_3)          // Output signal 4 (4 bits)
    );
    CBModule cell23 (
        .prog_in(prog_out22),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in23_0),                 // Input signal 1 (4 bits)
        .in2(in23_1),                 // Input signal 2 (4 bits)
        .in3(in23_2),                 // Input signal 3 (4 bits)
        .in4(in23_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out23),        // Programming output signal
        .out1(out23_0),         // Output signal 1 (4 bits)
        .out2(out23_1),         // Output signal 2 (4 bits)
        .out3(out23_2),         // Output signal 3 (4 bits)
        .out4(out23_3)          // Output signal 4 (4 bits)
    );
    CBModule cell24 (
        .prog_in(prog_out23),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in24_0),                 // Input signal 1 (4 bits)
        .in2(in24_1),                 // Input signal 2 (4 bits)
        .in3(in24_2),                 // Input signal 3 (4 bits)
        .in4(in24_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out24),        // Programming output signal
        .out1(out24_0),         // Output signal 1 (4 bits)
        .out2(out24_1),         // Output signal 2 (4 bits)
        .out3(out24_2),         // Output signal 3 (4 bits)
        .out4(out24_3)          // Output signal 4 (4 bits)
    );
    CBModule cell25 (
        .prog_in(prog_out24),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in25_0),                 // Input signal 1 (4 bits)
        .in2(in25_1),                 // Input signal 2 (4 bits)
        .in3(in25_2),                 // Input signal 3 (4 bits)
        .in4(in25_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out25),        // Programming output signal
        .out1(out25_0),         // Output signal 1 (4 bits)
        .out2(out25_1),         // Output signal 2 (4 bits)
        .out3(out25_2),         // Output signal 3 (4 bits)
        .out4(out25_3)          // Output signal 4 (4 bits)
    );
    CBModule cell26 (
        .prog_in(prog_out25),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in26_0),                 // Input signal 1 (4 bits)
        .in2(in26_1),                 // Input signal 2 (4 bits)
        .in3(in26_2),                 // Input signal 3 (4 bits)
        .in4(in26_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out26),        // Programming output signal
        .out1(out26_0),         // Output signal 1 (4 bits)
        .out2(out26_1),         // Output signal 2 (4 bits)
        .out3(out26_2),         // Output signal 3 (4 bits)
        .out4(out26_3)          // Output signal 4 (4 bits)
    );
    CBModule cell27 (
        .prog_in(prog_out26),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in27_0),                 // Input signal 1 (4 bits)
        .in2(in27_1),                 // Input signal 2 (4 bits)
        .in3(in27_2),                 // Input signal 3 (4 bits)
        .in4(in27_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out27),        // Programming output signal
        .out1(out27_0),         // Output signal 1 (4 bits)
        .out2(out27_1),         // Output signal 2 (4 bits)
        .out3(out27_2),         // Output signal 3 (4 bits)
        .out4(out27_3)          // Output signal 4 (4 bits)
    );
    CBModule cell28 (
        .prog_in(prog_out27),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in28_0),                 // Input signal 1 (4 bits)
        .in2(in28_1),                 // Input signal 2 (4 bits)
        .in3(in28_2),                 // Input signal 3 (4 bits)
        .in4(in28_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out28),        // Programming output signal
        .out1(out28_0),         // Output signal 1 (4 bits)
        .out2(out28_1),         // Output signal 2 (4 bits)
        .out3(out28_2),         // Output signal 3 (4 bits)
        .out4(out28_3)          // Output signal 4 (4 bits)
    );
    CBModule cell29 (
        .prog_in(prog_out28),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in29_0),                 // Input signal 1 (4 bits)
        .in2(in29_1),                 // Input signal 2 (4 bits)
        .in3(in29_2),                 // Input signal 3 (4 bits)
        .in4(in29_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out29),        // Programming output signal
        .out1(out29_0),         // Output signal 1 (4 bits)
        .out2(out29_1),         // Output signal 2 (4 bits)
        .out3(out29_2),         // Output signal 3 (4 bits)
        .out4(out29_3)          // Output signal 4 (4 bits)
    );
    CBModule cell30 (
        .prog_in(prog_out29),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in30_0),                 // Input signal 1 (4 bits)
        .in2(in30_1),                 // Input signal 2 (4 bits)
        .in3(in30_2),                 // Input signal 3 (4 bits)
        .in4(in30_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out30),        // Programming output signal
        .out1(out30_0),         // Output signal 1 (4 bits)
        .out2(out30_1),         // Output signal 2 (4 bits)
        .out3(out30_2),         // Output signal 3 (4 bits)
        .out4(out30_3)          // Output signal 4 (4 bits)
    );
    CBModule cell31 (
        .prog_in(prog_out30),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in31_0),                 // Input signal 1 (4 bits)
        .in2(in31_1),                 // Input signal 2 (4 bits)
        .in3(in31_2),                 // Input signal 3 (4 bits)
        .in4(in31_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out31),        // Programming output signal
        .out1(out31_0),         // Output signal 1 (4 bits)
        .out2(out31_1),         // Output signal 2 (4 bits)
        .out3(out31_2),         // Output signal 3 (4 bits)
        .out4(out31_3)          // Output signal 4 (4 bits)
    );
    CBModule cell32 (
        .prog_in(prog_out31),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in32_0),                 // Input signal 1 (4 bits)
        .in2(in32_1),                 // Input signal 2 (4 bits)
        .in3(in32_2),                 // Input signal 3 (4 bits)
        .in4(in32_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out32),        // Programming output signal
        .out1(out32_0),         // Output signal 1 (4 bits)
        .out2(out32_1),         // Output signal 2 (4 bits)
        .out3(out32_2),         // Output signal 3 (4 bits)
        .out4(out32_3)          // Output signal 4 (4 bits)
    );
    CBModule cell33 (
        .prog_in(prog_out32),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in33_0),                 // Input signal 1 (4 bits)
        .in2(in33_1),                 // Input signal 2 (4 bits)
        .in3(in33_2),                 // Input signal 3 (4 bits)
        .in4(in33_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out33),        // Programming output signal
        .out1(out33_0),         // Output signal 1 (4 bits)
        .out2(out33_1),         // Output signal 2 (4 bits)
        .out3(out33_2),         // Output signal 3 (4 bits)
        .out4(out33_3)          // Output signal 4 (4 bits)
    );
    CBModule cell34 (
        .prog_in(prog_out33),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in34_0),                 // Input signal 1 (4 bits)
        .in2(in34_1),                 // Input signal 2 (4 bits)
        .in3(in34_2),                 // Input signal 3 (4 bits)
        .in4(in34_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out34),        // Programming output signal
        .out1(out34_0),         // Output signal 1 (4 bits)
        .out2(out34_1),         // Output signal 2 (4 bits)
        .out3(out34_2),         // Output signal 3 (4 bits)
        .out4(out34_3)          // Output signal 4 (4 bits)
    );
    CBModule cell35 (
        .prog_in(prog_out34),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in35_0),                 // Input signal 1 (4 bits)
        .in2(in35_1),                 // Input signal 2 (4 bits)
        .in3(in35_2),                 // Input signal 3 (4 bits)
        .in4(in35_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out35),        // Programming output signal
        .out1(out35_0),         // Output signal 1 (4 bits)
        .out2(out35_1),         // Output signal 2 (4 bits)
        .out3(out35_2),         // Output signal 3 (4 bits)
        .out4(out35_3)          // Output signal 4 (4 bits)
    );
    CBModule cell36 (
        .prog_in(prog_out35),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in36_0),                 // Input signal 1 (4 bits)
        .in2(in36_1),                 // Input signal 2 (4 bits)
        .in3(in36_2),                 // Input signal 3 (4 bits)
        .in4(in36_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out36),        // Programming output signal
        .out1(out36_0),         // Output signal 1 (4 bits)
        .out2(out36_1),         // Output signal 2 (4 bits)
        .out3(out36_2),         // Output signal 3 (4 bits)
        .out4(out36_3)          // Output signal 4 (4 bits)
    );
    CBModule cell37 (
        .prog_in(prog_out36),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in37_0),                 // Input signal 1 (4 bits)
        .in2(in37_1),                 // Input signal 2 (4 bits)
        .in3(in37_2),                 // Input signal 3 (4 bits)
        .in4(in37_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out37),        // Programming output signal
        .out1(out37_0),         // Output signal 1 (4 bits)
        .out2(out37_1),         // Output signal 2 (4 bits)
        .out3(out37_2),         // Output signal 3 (4 bits)
        .out4(out37_3)          // Output signal 4 (4 bits)
    );
    CBModule cell38 (
        .prog_in(prog_out37),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in38_0),                 // Input signal 1 (4 bits)
        .in2(in38_1),                 // Input signal 2 (4 bits)
        .in3(in38_2),                 // Input signal 3 (4 bits)
        .in4(in38_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out38),        // Programming output signal
        .out1(out38_0),         // Output signal 1 (4 bits)
        .out2(out38_1),         // Output signal 2 (4 bits)
        .out3(out38_2),         // Output signal 3 (4 bits)
        .out4(out38_3)          // Output signal 4 (4 bits)
    );
    CBModule cell39 (
        .prog_in(prog_out38),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in39_0),                 // Input signal 1 (4 bits)
        .in2(in39_1),                 // Input signal 2 (4 bits)
        .in3(in39_2),                 // Input signal 3 (4 bits)
        .in4(in39_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out39),        // Programming output signal
        .out1(out39_0),         // Output signal 1 (4 bits)
        .out2(out39_1),         // Output signal 2 (4 bits)
        .out3(out39_2),         // Output signal 3 (4 bits)
        .out4(out39_3)          // Output signal 4 (4 bits)
    );
    CBModule cell40 (
        .prog_in(prog_out39),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in40_0),                 // Input signal 1 (4 bits)
        .in2(in40_1),                 // Input signal 2 (4 bits)
        .in3(in40_2),                 // Input signal 3 (4 bits)
        .in4(in40_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out40),        // Programming output signal
        .out1(out40_0),         // Output signal 1 (4 bits)
        .out2(out40_1),         // Output signal 2 (4 bits)
        .out3(out40_2),         // Output signal 3 (4 bits)
        .out4(out40_3)          // Output signal 4 (4 bits)
    );
    CBModule cell41 (
        .prog_in(prog_out40),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in41_0),                 // Input signal 1 (4 bits)
        .in2(in41_1),                 // Input signal 2 (4 bits)
        .in3(in41_2),                 // Input signal 3 (4 bits)
        .in4(in41_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out41),        // Programming output signal
        .out1(out41_0),         // Output signal 1 (4 bits)
        .out2(out41_1),         // Output signal 2 (4 bits)
        .out3(out41_2),         // Output signal 3 (4 bits)
        .out4(out41_3)          // Output signal 4 (4 bits)
    );
    CBModule cell42 (
        .prog_in(prog_out41),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in42_0),                 // Input signal 1 (4 bits)
        .in2(in42_1),                 // Input signal 2 (4 bits)
        .in3(in42_2),                 // Input signal 3 (4 bits)
        .in4(in42_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out42),        // Programming output signal
        .out1(out42_0),         // Output signal 1 (4 bits)
        .out2(out42_1),         // Output signal 2 (4 bits)
        .out3(out42_2),         // Output signal 3 (4 bits)
        .out4(out42_3)          // Output signal 4 (4 bits)
    );
    CBModule cell43 (
        .prog_in(prog_out42),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in43_0),                 // Input signal 1 (4 bits)
        .in2(in43_1),                 // Input signal 2 (4 bits)
        .in3(in43_2),                 // Input signal 3 (4 bits)
        .in4(in43_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out43),        // Programming output signal
        .out1(out43_0),         // Output signal 1 (4 bits)
        .out2(out43_1),         // Output signal 2 (4 bits)
        .out3(out43_2),         // Output signal 3 (4 bits)
        .out4(out43_3)          // Output signal 4 (4 bits)
    );
    CBModule cell44 (
        .prog_in(prog_out43),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in44_0),                 // Input signal 1 (4 bits)
        .in2(in44_1),                 // Input signal 2 (4 bits)
        .in3(in44_2),                 // Input signal 3 (4 bits)
        .in4(in44_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out44),        // Programming output signal
        .out1(out44_0),         // Output signal 1 (4 bits)
        .out2(out44_1),         // Output signal 2 (4 bits)
        .out3(out44_2),         // Output signal 3 (4 bits)
        .out4(out44_3)          // Output signal 4 (4 bits)
    );
    CBModule cell45 (
        .prog_in(prog_out44),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in45_0),                 // Input signal 1 (4 bits)
        .in2(in45_1),                 // Input signal 2 (4 bits)
        .in3(in45_2),                 // Input signal 3 (4 bits)
        .in4(in45_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out45),        // Programming output signal
        .out1(out45_0),         // Output signal 1 (4 bits)
        .out2(out45_1),         // Output signal 2 (4 bits)
        .out3(out45_2),         // Output signal 3 (4 bits)
        .out4(out45_3)          // Output signal 4 (4 bits)
    );
    CBModule cell46 (
        .prog_in(prog_out45),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in46_0),                 // Input signal 1 (4 bits)
        .in2(in46_1),                 // Input signal 2 (4 bits)
        .in3(in46_2),                 // Input signal 3 (4 bits)
        .in4(in46_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out46),        // Programming output signal
        .out1(out46_0),         // Output signal 1 (4 bits)
        .out2(out46_1),         // Output signal 2 (4 bits)
        .out3(out46_2),         // Output signal 3 (4 bits)
        .out4(out46_3)          // Output signal 4 (4 bits)
    );
    CBModule cell47 (
        .prog_in(prog_out46),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in47_0),                 // Input signal 1 (4 bits)
        .in2(in47_1),                 // Input signal 2 (4 bits)
        .in3(in47_2),                 // Input signal 3 (4 bits)
        .in4(in47_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out47),        // Programming output signal
        .out1(out47_0),         // Output signal 1 (4 bits)
        .out2(out47_1),         // Output signal 2 (4 bits)
        .out3(out47_2),         // Output signal 3 (4 bits)
        .out4(out47_3)          // Output signal 4 (4 bits)
    );
    CBModule cell48 (
        .prog_in(prog_out47),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in48_0),                 // Input signal 1 (4 bits)
        .in2(in48_1),                 // Input signal 2 (4 bits)
        .in3(in48_2),                 // Input signal 3 (4 bits)
        .in4(in48_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out48),        // Programming output signal
        .out1(out48_0),         // Output signal 1 (4 bits)
        .out2(out48_1),         // Output signal 2 (4 bits)
        .out3(out48_2),         // Output signal 3 (4 bits)
        .out4(out48_3)          // Output signal 4 (4 bits)
    );
    CBModule cell49 (
        .prog_in(prog_out48),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in49_0),                 // Input signal 1 (4 bits)
        .in2(in49_1),                 // Input signal 2 (4 bits)
        .in3(in49_2),                 // Input signal 3 (4 bits)
        .in4(in49_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out49),        // Programming output signal
        .out1(out49_0),         // Output signal 1 (4 bits)
        .out2(out49_1),         // Output signal 2 (4 bits)
        .out3(out49_2),         // Output signal 3 (4 bits)
        .out4(out49_3)          // Output signal 4 (4 bits)
    );
    CBModule cell50 (
        .prog_in(prog_out49),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in50_0),                 // Input signal 1 (4 bits)
        .in2(in50_1),                 // Input signal 2 (4 bits)
        .in3(in50_2),                 // Input signal 3 (4 bits)
        .in4(in50_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out50),        // Programming output signal
        .out1(out50_0),         // Output signal 1 (4 bits)
        .out2(out50_1),         // Output signal 2 (4 bits)
        .out3(out50_2),         // Output signal 3 (4 bits)
        .out4(out50_3)          // Output signal 4 (4 bits)
    );
    CBModule cell51 (
        .prog_in(prog_out50),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in51_0),                 // Input signal 1 (4 bits)
        .in2(in51_1),                 // Input signal 2 (4 bits)
        .in3(in51_2),                 // Input signal 3 (4 bits)
        .in4(in51_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out51),        // Programming output signal
        .out1(out51_0),         // Output signal 1 (4 bits)
        .out2(out51_1),         // Output signal 2 (4 bits)
        .out3(out51_2),         // Output signal 3 (4 bits)
        .out4(out51_3)          // Output signal 4 (4 bits)
    );
    CBModule cell52 (
        .prog_in(prog_out51),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in52_0),                 // Input signal 1 (4 bits)
        .in2(in52_1),                 // Input signal 2 (4 bits)
        .in3(in52_2),                 // Input signal 3 (4 bits)
        .in4(in52_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out52),        // Programming output signal
        .out1(out52_0),         // Output signal 1 (4 bits)
        .out2(out52_1),         // Output signal 2 (4 bits)
        .out3(out52_2),         // Output signal 3 (4 bits)
        .out4(out52_3)          // Output signal 4 (4 bits)
    );
    CBModule cell53 (
        .prog_in(prog_out52),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in53_0),                 // Input signal 1 (4 bits)
        .in2(in53_1),                 // Input signal 2 (4 bits)
        .in3(in53_2),                 // Input signal 3 (4 bits)
        .in4(in53_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out53),        // Programming output signal
        .out1(out53_0),         // Output signal 1 (4 bits)
        .out2(out53_1),         // Output signal 2 (4 bits)
        .out3(out53_2),         // Output signal 3 (4 bits)
        .out4(out53_3)          // Output signal 4 (4 bits)
    );
    CBModule cell54 (
        .prog_in(prog_out53),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in54_0),                 // Input signal 1 (4 bits)
        .in2(in54_1),                 // Input signal 2 (4 bits)
        .in3(in54_2),                 // Input signal 3 (4 bits)
        .in4(in54_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out54),        // Programming output signal
        .out1(out54_0),         // Output signal 1 (4 bits)
        .out2(out54_1),         // Output signal 2 (4 bits)
        .out3(out54_2),         // Output signal 3 (4 bits)
        .out4(out54_3)          // Output signal 4 (4 bits)
    );
    CBModule cell55 (
        .prog_in(prog_out54),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in55_0),                 // Input signal 1 (4 bits)
        .in2(in55_1),                 // Input signal 2 (4 bits)
        .in3(in55_2),                 // Input signal 3 (4 bits)
        .in4(in55_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out55),        // Programming output signal
        .out1(out55_0),         // Output signal 1 (4 bits)
        .out2(out55_1),         // Output signal 2 (4 bits)
        .out3(out55_2),         // Output signal 3 (4 bits)
        .out4(out55_3)          // Output signal 4 (4 bits)
    );
    CBModule cell56 (
        .prog_in(prog_out55),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in56_0),                 // Input signal 1 (4 bits)
        .in2(in56_1),                 // Input signal 2 (4 bits)
        .in3(in56_2),                 // Input signal 3 (4 bits)
        .in4(in56_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out56),        // Programming output signal
        .out1(out56_0),         // Output signal 1 (4 bits)
        .out2(out56_1),         // Output signal 2 (4 bits)
        .out3(out56_2),         // Output signal 3 (4 bits)
        .out4(out56_3)          // Output signal 4 (4 bits)
    );
    CBModule cell57 (
        .prog_in(prog_out56),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in57_0),                 // Input signal 1 (4 bits)
        .in2(in57_1),                 // Input signal 2 (4 bits)
        .in3(in57_2),                 // Input signal 3 (4 bits)
        .in4(in57_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out57),        // Programming output signal
        .out1(out57_0),         // Output signal 1 (4 bits)
        .out2(out57_1),         // Output signal 2 (4 bits)
        .out3(out57_2),         // Output signal 3 (4 bits)
        .out4(out57_3)          // Output signal 4 (4 bits)
    );
    CBModule cell58 (
        .prog_in(prog_out57),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in58_0),                 // Input signal 1 (4 bits)
        .in2(in58_1),                 // Input signal 2 (4 bits)
        .in3(in58_2),                 // Input signal 3 (4 bits)
        .in4(in58_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out58),        // Programming output signal
        .out1(out58_0),         // Output signal 1 (4 bits)
        .out2(out58_1),         // Output signal 2 (4 bits)
        .out3(out58_2),         // Output signal 3 (4 bits)
        .out4(out58_3)          // Output signal 4 (4 bits)
    );
    CBModule cell59 (
        .prog_in(prog_out58),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in59_0),                 // Input signal 1 (4 bits)
        .in2(in59_1),                 // Input signal 2 (4 bits)
        .in3(in59_2),                 // Input signal 3 (4 bits)
        .in4(in59_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out59),        // Programming output signal
        .out1(out59_0),         // Output signal 1 (4 bits)
        .out2(out59_1),         // Output signal 2 (4 bits)
        .out3(out59_2),         // Output signal 3 (4 bits)
        .out4(out59_3)          // Output signal 4 (4 bits)
    );
    CBModule cell60 (
        .prog_in(prog_out59),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in60_0),                 // Input signal 1 (4 bits)
        .in2(in60_1),                 // Input signal 2 (4 bits)
        .in3(in60_2),                 // Input signal 3 (4 bits)
        .in4(in60_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out60),        // Programming output signal
        .out1(out60_0),         // Output signal 1 (4 bits)
        .out2(out60_1),         // Output signal 2 (4 bits)
        .out3(out60_2),         // Output signal 3 (4 bits)
        .out4(out60_3)          // Output signal 4 (4 bits)
    );
    CBModule cell61 (
        .prog_in(prog_out60),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in61_0),                 // Input signal 1 (4 bits)
        .in2(in61_1),                 // Input signal 2 (4 bits)
        .in3(in61_2),                 // Input signal 3 (4 bits)
        .in4(in61_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out61),        // Programming output signal
        .out1(out61_0),         // Output signal 1 (4 bits)
        .out2(out61_1),         // Output signal 2 (4 bits)
        .out3(out61_2),         // Output signal 3 (4 bits)
        .out4(out61_3)          // Output signal 4 (4 bits)
    );
    CBModule cell62 (
        .prog_in(prog_out61),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in62_0),                 // Input signal 1 (4 bits)
        .in2(in62_1),                 // Input signal 2 (4 bits)
        .in3(in62_2),                 // Input signal 3 (4 bits)
        .in4(in62_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out62),        // Programming output signal
        .out1(out62_0),         // Output signal 1 (4 bits)
        .out2(out62_1),         // Output signal 2 (4 bits)
        .out3(out62_2),         // Output signal 3 (4 bits)
        .out4(out62_3)          // Output signal 4 (4 bits)
    );
    CBModule cell63 (
        .prog_in(prog_out62),                  // Programming input for configuration
        .prog_en(prog_en),           // Programming enable signal
        .prog_clk(prog_clk),         // Programming clock
        .clb_clk(clb_clk),           // Clock for the CLB (Configurable Logic Block)
        .in1(in63_0),                 // Input signal 1 (4 bits)
        .in2(in63_1),                 // Input signal 2 (4 bits)
        .in3(in63_2),                 // Input signal 3 (4 bits)
        .in4(in63_3),                 // Input signal 4 (4 bits)
        .prog_out(prog_out63),        // Programming output signal
        .out1(out63_0),         // Output signal 1 (4 bits)
        .out2(out63_1),         // Output signal 2 (4 bits)
        .out3(out63_2),         // Output signal 3 (4 bits)
        .out4(out63_3)          // Output signal 4 (4 bits)
    );

    assign prog_out=prog_out63;
endmodule