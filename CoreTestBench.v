`timescale 1ns / 1ps

module CoreTestBench;
    // The bitstream
    reg [4415:0] prog;
    
    // Inputs
    reg rst;
    reg prog_in;
    reg prog_en;
    reg prog_clk;
    reg clb_clk;
    reg [31:0] in1;
    reg [31:0] in2;
    reg [31:0] in3;
    reg [31:0] in4;

    // Outputs
    wire prog_out;
    wire [31:0] out1;
    wire [31:0] out2;
    wire [31:0] out3;
    wire [31:0] out4;
    wire [31:0] out21;
    wire [31:0] out22;
    wire [31:0] out23;
    wire [31:0] out24;

    // test number
    integer test;

    // Instantiate the Unit Under Test (UUT)
    Core core (
        .rst(rst),
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
    Core2 core2 (
        .rst(rst),
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

    // Clock generation
    always #5 clb_clk = ~clb_clk; // 10 ns clock period
    always #5 prog_clk = ~prog_clk; // 10 ns clock period
   
    // Task to program the shift register with the bitstream
    task reset_core;
        begin
            rst = 0;
            #100;
            rst = 1;
        end
    endtask

    // Task to program the shift register with the bitstream
    task program_core;
        integer i;
        begin
            $display("Programming Core...");
            prog_en = 1;
            for (i = 0; i <= 4415; i = i + 1) begin
                prog_in = prog[i];
                @(posedge prog_clk);
            end
            prog_en = 0;
        end
    endtask
    
    // Task to test the Core with the given test cases
    task test_core;
        begin
            $display("Testing Core...");
            @(posedge clb_clk);
            in1 = $random;
            in2 = $random;
            in3 = $random;
            in4 = $random;
            #100; // Wait for output to stabilize
            $display("Input: %b_%b_%b_%b", in4, in3, in2, in1);
            $display("Output: %b_%b_%b_%b", out4, out3, out2, out1);
            $display("Output2: %b_%b_%b_%b", out24, out23, out22, out21);
        end
    endtask

    initial begin
        // Save the waveform
        $dumpfile("CoreTestBench.vcd");
        $dumpvars(0, CoreTestBench);
        
        // Initialize signals
        clb_clk = 0;
        prog_clk = 0;
        prog_in = 0;
        prog_en = 0;
        rst = 1;
        
        prog[68:52] = $urandom; // LUT: All zero, minimal logic
        prog[51:20] = $urandom; // MUX config: direct paths, no feedback
        prog[19:0] = $urandom; // Input/output routing to prevent loops
        prog = {64{prog[68:0]}}; // Repeat pattern for consistency

        // Wait for the clock to stabilize
        @(posedge prog_clk);
        
        for (test = 1; test <= 10; test = test + 1) begin
            $display("----- Test %0d -----", test);
        
            // Reset the IO
            reset_core;
            
            // Program the IO
            program_core;

            // Test the IO
            test_core;
        end
        
        // Finish simulation
        #100;
        $finish;
    end

endmodule
