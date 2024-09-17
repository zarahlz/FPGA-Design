`timescale 1ns / 1ps

module IOTestBench;
    // The bitstream
    reg [4479:0] prog;
    
    // Inputs
    reg prog_in;
    reg prog_en;
    reg prog_clk;
    reg clb_clk;
    reg [7:0] in1;
    reg [7:0] in2;
    reg [7:0] in3;
    reg [7:0] in4;

    // Outputs
    wire prog_out;
    wire [7:0] out1;
    wire [7:0] out2;
    wire [7:0] out3;
    wire [7:0] out4;
    wire [7:0] out21;
    wire [7:0] out22;
    wire [7:0] out23;
    wire [7:0] out24;
    wire [7:0] exp_out1;
    wire [7:0] exp_out2;
    wire [7:0] exp_out3;
    wire [7:0] exp_out4;


    // Instantiate the Unit Under Test (UUT)
    IO io (
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
    
    // Instantiate the Unit Under Test (UUT)
    IO2 io2 (
        .prog_in(prog_in),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .prog_out(prog_out),
        .out1(out21),
        .out2(out22),
        .out3(out23),
        .out4(out24)
    );
    
    // Instantiate the Unit Under Test (UUT)
    IOTest io_test (
        .prog(prog),
        .clb_clk(clb_clk),
        .in1(in1),
        .in2(in2),
        .in3(in3),
        .in4(in4),
        .out1(exp_out1),
        .out2(exp_out2),
        .out3(exp_out3),
        .out4(exp_out4)
    );

    // Clock generation
    always #5 clb_clk = ~clb_clk; // 10 ns clock period
    always #5 prog_clk = ~prog_clk; // 10 ns clock period
   

    // Task to program the shift register with the bitstream
    task program_io;
        integer i;
        begin
            $display("Programming IO...");
            prog_en = 1;
            for (i = 0; i <= 4479; i = i + 1) begin
                prog_in = prog[i];
                @(posedge prog_clk);
            end
            prog_en = 0;
        end
    endtask
    
    // Task to test the Core with the given test cases
    task test_io;
        begin
            $display("Testing IO...");
            @(posedge clb_clk);
            in1 = $random;
            in2 = $random;
            in3 = $random;
            in4 = $random;
            #100; // Wait for output to stabilize
            $display("Input: %b_%b_%b_%b", in4, in3, in2, in1);
            $display("Expected Output: %b_%b_%b_%b", exp_out4, exp_out3, exp_out2, exp_out1);
            $display("Output: %b_%b_%b_%b", out4, out3, out2, out1);
            $display("Output 2: %b_%b_%b_%b", out24, out23, out22, out21);
        end
    endtask

    initial begin
        // Save the waveform
        $dumpfile("IOTestBench.vcd");
        $dumpvars(0, IOTestBench);
        
        // Initialize signals
        clb_clk = 0;
        prog_clk = 0;
        prog_in = 0;
        prog_en = 0;
        
        prog[68:52] = 17'b0000000000000000_0; // LUT: All zero, minimal logic
        prog[51:20] = 32'b00_00_00_00_00_00_00_00_00_00_00_00_00_00_00_10; // MUX config: direct paths, no feedback
        prog[19:0] = 20'b000_000_000_000_00000000; // Input/output routing to prevent loops
        prog = {64{prog[68:0]}}; // Repeat pattern for consistency

        // Wait for the clock to stabilize
        @(posedge prog_clk);

        // Program the Core
        program_io;

        // Test the Core
        test_io;
        
        // Finish simulation
        #100;
        $finish;
    end

endmodule
