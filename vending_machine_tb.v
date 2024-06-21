`timescale 1ns / 1ns
`include "Vending_Machine.v"

module vending_machine_tb;
    reg clk,rst;
    reg [1:0]in;
    wire out;
    wire [1:0]change;

    vending_machine uut(.clk(clk),.in(in),.out(out),.rst(rst),.change(change));

    initial begin
        $dumpfile("vending_machine.vcd");
        $dumpvars(0,vending_machine_tb);
        rst=1;
        clk=0;
        #6 rst=0; in=2'b10;
        #11 in=0;
        #16 in=0;
        #25 
        $finish;
    end
    always #5 clk=~clk;
endmodule
