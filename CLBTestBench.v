`timescale 1ns / 1ps

module CLBTestBench;
    
    // Testbench signals
    reg Prog_in;
    reg Prog_en;
    reg Prog_clk;
    reg Clb_clk;
    reg [3:0] Clb_input;
    wire Prog_out;
    wire Clb_output;
    
    // Instantiate the CLBModule
    CLBModule uut (
        .prog_in(Prog_in),
        .prog_en(Prog_en),
        .clb_clk(Clb_clk),
        .prog_clk(Prog_clk),
        .clb_input(Clb_input),
        .prog_out(Prog_out),
        .clb_output(Clb_output)
    );

    // Clock generation
    always #5 Clb_clk = ~Clb_clk; // 10 ns clock period
    always #5 Prog_clk = ~Prog_clk; // 10 ns clock period

    // Task to program the shift register with the bitstream
    task program_clb(input [16:0] bitstream);
        integer i;
        begin
            Prog_en = 1;
            for (i = 0; i <= 16; i = i + 1) begin
                Prog_in = bitstream[i];
                @(posedge Clb_clk);
            end
            Prog_en = 0;
        end
    endtask

    // Task to test the LUT with different input combinations
    task test_lut;
        integer i;
        begin
            $display("Testing LUT...");
            for (i = 0; i < 16; i = i + 1) begin
                Clb_input = i;
                @(posedge Clb_clk);
                #1; // Wait for output to stabilize
                $display("Input: %b, Output: %b", Clb_input, Clb_output);
            end
        end
    endtask

    initial begin
        // Save the waveform
        $dumpfile("CLBTestBench.vcd");
        $dumpvars(0, CLBTestBench);
        
        // Initialize signals
        Clb_clk = 0;
        Prog_clk = 0;
        Prog_in = 0;
        Prog_en = 0;
        Clb_input = 0;

        // Wait for the clock to stabilize
        @(posedge Clb_clk);

        // Program the LUT with a custom bitstream corresponding to y = x1 + x2 + x3*x4
        program_clb(17'b11101110111011100); // Correct bitstream

        // Test the LUT with all possible combinations of inputs
        test_lut;

        // Finish simulation
        $finish;
    end

endmodule
