`timescale 1ns / 1ps

module test;
reg clk,din,reset;
wire dout;

always #10 clk = ~clk;

Seq_detector_FSM d1 (.clk(clk), .reset(reset), .din(din), .dout(dout));

initial begin

clk<=0;
reset<=0;
din <=0;

repeat(5) @(posedge clk);
reset<=1;

@(posedge clk) din<=1;
@(posedge clk) din<=0;
@(posedge clk) din<=1;
@(posedge clk) din<=1;
@(posedge clk) din<=0;
@(posedge clk) din<=0;
@(posedge clk) din<=1;
@(posedge clk) din<=1;
@(posedge clk) din<=0;
@(posedge clk) din<=1;
@(posedge clk) din<=1;

end

endmodule
