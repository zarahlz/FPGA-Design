`timescale 1ns/1ps

module SBTestBench();
    reg [3:0] in1;
    reg [3:0] in2;
    reg [3:0] in3;
    reg [3:0] in4;
    reg prog_in;
    reg prog_clk;
    reg prog_en;
    wire [3:0] out1;
    wire [3:0] out2;
    wire [3:0] out3;
    wire [3:0] out4;
    wire prog_out;

    reg [31:0] bitstream = 32'b01100100010101000111001101010001;

    integer i;

    SBModule inst1(
        .in1(in1),      
        .in2(in2),     
        .in3(in3),      
        .in4(in4),      
        .prog_in(prog_in),         
        .prog_clk(prog_clk),       
        .prog_en(prog_en),        
        .out1(out1),   
        .out2(out2),    
        .out3(out3),    
        .out4(out4),   
        .prog_out(prog_out)      
    );

    initial begin
        $dumpfile("SBTestBench.vcd");
        $dumpvars(0, SBTestBench);

        prog_clk = 0;
        prog_en = 0;
        prog_in = 0;

        #10;
        prog_en = 1;

        for (i = 0; i <= 32; i=i+1) begin
            @(posedge prog_clk);
        end
        
        #5;
        prog_en = 0;

        #10;
        in1 = 4'b0100;
        in2 = 4'b0001;
        in3 = 4'b1001;
        in4 = 4'b0011;

        #100;
        $finish;
    end

    always @(posedge prog_clk) begin
        if (prog_en) begin
            prog_in <= bitstream[0];
            bitstream <= bitstream >> 1;
        end
        else begin
            prog_in <= 1'bx;
        end
    end

    always #5 prog_clk = ~prog_clk;
endmodule