`timescale 1ns / 1ps

module asjvkfw(
input clk,
output reg slow_clk2,
output reg slow_clk4,
output reg slow_clk8
    );
    
reg counter2;
reg [2:0] counter4;
reg [3:0] counter8;

 initial begin
 slow_clk2=0;
 slow_clk4=0;
 slow_clk8=0;
 counter2=0;
 counter4=0;
 counter8=0;
 end
 
 always @(posedge clk) begin
 
 if(counter2==1)begin
  counter2<=0;
  slow_clk2<=slow_clk2+1;
 end
 
 if(counter4==3)begin
  counter4<=0;
  slow_clk4<=slow_clk4+1;
 end
 
 if(counter8==7)begin
  counter8<=0;
  slow_clk8<=slow_clk8+1;
 end
 
 counter2<= counter2+1; 
 counter4<= counter4+1;
 counter8<= counter8+1;
 end
 
endmodule
