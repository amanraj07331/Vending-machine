`timescale 1ns / 1ns

module vending_machine_tb;
    reg clk, rst;
    reg [1:0] in;
    wire out;
    wire [1:0] change;

    // Instantiate the vending machine module
    vending_machine uut (
        .clk(clk),
        .rst(rst),
        .in(in),
        .out(out),
        .change(change)
    );

    initial begin
        // Set up the dump file for waveform viewing
        $dumpfile("vending_machine.vcd");
        $dumpvars(0, vending_machine_tb);

        // Monitor the changes
        $monitor("Time = %0t | clk = %b | rst = %b | in = %b | out = %b | change = %b", $time, clk, rst, in, out, change);

        // Initialize signals
        clk = 0;
        rst = 1;
        in = 0;

        // Apply reset and start test sequence
        #10 rst = 0; in = 2'b10;   // Insert a coin
        #10 in = 0;                // Wait
        #10 in = 2'b01;            // Insert another coin
        #10 in = 0;                // Wait
        #10 in = 2'b10;            // Insert another coin
        #10 in = 0;                // Wait
        #10 in = 2'b01;            // Insert another coin
        #10 in = 0;                // Wait
        #10 in = 2'b10;            // Insert another coin
        #10 in = 0;                // Wait
        #10 $finish;               // End simulation
    end

    // Generate clock signal
    always #5 clk = ~clk;
endmodule
