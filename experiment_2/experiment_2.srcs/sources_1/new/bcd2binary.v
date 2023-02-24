`timescale 1ns / 1ps

module bcd2binary
(input [7:0]bcd,
output reg[3:0]binary);

always@(bcd)
begin
if(bcd[3:0]<4'b1010)
begin
if(bcd[7:4]=={4{1'b0}})
binary=bcd[3:0];
if((bcd[7:5]=={3{1'b0}})&&(bcd[4]==1'b1))
binary=bcd[3:0]+4'b1010;
end
else
binary={4{1'bx}};

end
endmodule
