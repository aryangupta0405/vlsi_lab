`timescale 1ns / 1ps

module test;

reg [15:0] A,B;
wire [15:0] C;

sum u1(.A(A), .B(B), .C(C));

initial begin
A=0; 
B=0;

    for (int i =0; i<32; i++) begin
        if (C != (A+B)) $display("case failed");
        else begin
            $display("Passed!, %d + %d = %d", A,B,C);
               
        end
        
        A++;
        B++;
    
    end

end

endmodule
