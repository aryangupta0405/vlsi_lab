`timescale 1ns / 1ps
module testbench();
reg [3:0] a;
reg [3:0] b;
reg cin;
wire [3:0] sum;
wire cout;
CLA uut (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
initial begin
a = 0;
b = 0;
cin = 0;
#100;
a = 5;
b = 6;
cin = 1;
#100;
end
endmodule
