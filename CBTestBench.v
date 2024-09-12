`timescale 1ns / 1ps

module CBTestBench;
    
    // Inputs
    reg prog_in;
    reg prog_en;
    reg prog_clk;
    reg clb_clk;
    reg [3:0] in1;
    reg [3:0] in2;
    reg [3:0] in3;
    reg [3:0] in4;

    // Outputs
    wire prog_out;
    wire [3:0] out1;
    wire [3:0] out2;
    wire [3:0] out3;
    wire [3:0] out4;

    // Instantiate the Unit Under Test (UUT)
    CBModule uut (
        .prog_in(prog_in),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .prog_out(prog_out),
        .out1(out1),
        .out2(out2),
        .out3(out3),
        .out4(out4)
    );

    // Clock generation
    always #5 clb_clk = ~clb_clk; // 10 ns clock period
    always #5 prog_clk = ~prog_clk; // 10 ns clock period

    // Task to program the shift register with the bitstream
    task program_cb(input [68:0] bitstream);
        integer i;
        begin
            $display("Programming CB...");
            prog_en = 1;
            for (i = 0; i <= 68; i = i + 1) begin
                prog_in = bitstream[i];
                @(posedge prog_clk);
            end
            prog_en = 0;
        end
    endtask
    
    task analyse;
        begin
        end
    endtask
    
    // Task to test the CB with the given test cases for CLB and SB
    task test_cb;
        begin
            $display("Testing CB...");
            in1 = 4'b0100;
            in2 = 4'b0001;
            in3 = 4'b1001;
            in4 = 4'b0011;
            @(posedge clb_clk);
            #10; // Wait for output to stabilize
            $display("Expected Output: 1111_0001_0011_0001, Output: %b_%b_%b_%b", out4, out3, out2, out1);
        end
    endtask

    initial begin
        // Initialize signals
        clb_clk = 0;
        prog_clk = 0;
        prog_in = 0;
        prog_en = 0;

        // Wait for the clock to stabilize
        @(posedge prog_clk);

        // Program the LUT with a custom bitstream corresponding to y = x1 + x2 + x3*x4
        program_cb(69'b11101110111011100_01100100010101000111001101010001_00000000000000000000); // Correct bitstream

        // Test the CB
        test_cb;
        
        // Finish simulation
        $finish;
    end

endmodule
