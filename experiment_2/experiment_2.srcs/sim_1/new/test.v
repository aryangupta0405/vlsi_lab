`timescale 1ns / 1ps



module test;
reg [7:0]bcd;
wire [3:0]binary;

bcd2binary b1(bcd,binary);
initial
begin
bcd=8'b00000000;
$monitor($time, ,"bcd", ,"%b",bcd,  , "bin","ary", ,"%b",binary);
end

always
#1 bcd=bcd+1;

initial
#22 $stop;
endmodule
