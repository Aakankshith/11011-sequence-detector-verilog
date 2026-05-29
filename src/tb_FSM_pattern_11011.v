`timescale 1ns / 1ps

module tb_FSM_pattern_11011;

reg din;
reg clk;
reg reset;
wire Z;

FSM_pattern_11011 uut (
    .din(din),
    .clk(clk),
    .reset(reset),
    .Z(Z)
);

//
// Clock Generation
//
always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    din = 0;

    #10;
    reset = 0;

    // Input sequence : 11011
    din = 1; #10;
    din = 1; #10;
    din = 0; #10;
    din = 1; #10;
    din = 1; #10;

    // Additional test cases
    din = 0; #10;
    din = 1; #10;
    din = 1; #10;
    din = 0; #10;
    din = 1; #10;
    din = 1; #10;

    #20;
    $finish;
end

endmodule
