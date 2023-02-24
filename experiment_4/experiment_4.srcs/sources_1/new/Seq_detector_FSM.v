`timescale 1ns / 1ps

// To detect a sequence detector 1001 using finite sate machine

module Seq_detector_FSM(clk, reset, din , dout);

input clk;
input reset;
input din ; 
output  dout; 
reg dout;

parameter s0=0,s1=1,s2=2,s3=3;

reg [1:0]state, nxt_st;

always @(posedge clk) begin
    if(!reset)
    state <=s1;
    else
    state <=nxt_st;
end

always @ (state or din) begin
    case(state)
    s0:begin
        if (din) begin 
            nxt_st=s1;
            dout=0;
            end
        else begin
            nxt_st=s0;
            dout=0;
            end
        end
        
    s1:begin
        if (din) begin 
            nxt_st=s1;
            dout=0;
            end
        else begin
            nxt_st=s2;
            dout=0;
            end
        end
        
    s2:begin
        if (din) begin 
            nxt_st=s1;
            dout=0;
            end
        else begin
            nxt_st=s3;
            dout=0;
            end
        end

    s3:begin
        if (din) begin 
            nxt_st=s1;
            dout=1;
            end
        else begin
            nxt_st=s0;
            dout=0;
            end
        end
    endcase
end          
endmodule
