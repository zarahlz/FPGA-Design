`timescale 1ns / 1ps

module CBTestBench;
    // The bitstream
    reg [68:0] prog;
    
    // Inputs
    reg prog_in;
    reg prog_en;
    reg prog_clk;
    reg clb_clk;
    reg rst;
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
    
    wire [3:0] exp_out1;
    wire [3:0] exp_out2;
    wire [3:0] exp_out3;
    wire [3:0] exp_out4;

    // Instantiate the Unit Under Test (UUT)
    CBModule cb_serial (
        .prog_in(prog_in),
        .prog_en(prog_en),
        .prog_clk(prog_clk),
        .clb_clk(clb_clk),
        .rst(rst),
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
    CBTest cb_parallel (
        .prog(prog),
        .clb_clk(clb_clk),
        .rst(rst),
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
    
    task reset_cb;
        begin
            $display("Reseting CB...");
            rst = 0;
            #100
            rst = 1;
        end
    endtask

    // Task to program the shift register with the bitstream
    task program_cb;
        integer i;
        begin
            $display("Programming CB...");
            prog[68:52] = $random;
            prog[51:20] = $random;
            prog[19:0] = $random;
            $display("Bitstream: %b_%b_%b", prog[68:52],prog[51:20], prog[19:0]);
            prog_en = 1;
            for (i = 0; i <= 68; i = i + 1) begin
                prog_in = prog[i];
                @(posedge prog_clk);
            end
            prog_en = 0;
        end
    endtask
    
    // Task to test the CB with the given test cases for CLB and SB
    task test_cb;
        begin
            $display("Testing CB...");
            @(posedge clb_clk);
            in1 = $random;
            in2 = $random;
            in3 = $random;
            in4 = $random;
            #100; // Wait for output to stabilize
            $display("Input: %b_%b_%b_%b", in4, in3, in2, in1);
            $display("Expected Output: %b_%b_%b_%b", exp_out4, exp_out3, exp_out2, exp_out1);
            $display("Output: %b_%b_%b_%b", out4, out3, out2, out1);
        end
    endtask

    initial begin
        $dumpfile("CB_Simul.vcd");
        $dumpvars(0, CBTestBench);

        // Initialize signals
        clb_clk = 0;
        prog_clk = 0;
        prog_in = 0;
        prog_en = 0;
        rst = 1;

        // Wait for the clock to stabilize
        @(posedge prog_clk);
        
        repeat (10) begin
            // Reset the CB
            reset_cb;
            
            // Program the CB      
            program_cb;
    
            // Test the CB
            test_cb;
        end
        
        // Finish simulation
        #100;
        $finish;
    end

endmodule
