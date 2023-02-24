//Experiment 1

// Design a adder ans very it using testbench

`timescale 1ns / 1ps

module sum(A,B,C);
input [15:0] A,B;
output [15:0]C;

assign C=A+B;

endmodule
