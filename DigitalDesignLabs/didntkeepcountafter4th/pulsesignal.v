`timescale 1ns / 1ps

module pulsesignal(
input clk,
output reg slow_clk6
    );
    
reg [2:0] counter6;

 initial begin
 slow_clk6=0;
 counter6=0;
 end
 
 always @(posedge clk) begin
 counter6=counter6+1;
 if(counter6==5)begin
   slow_clk6<=slow_clk6+1;
  end
 if(counter6==6)begin
    slow_clk6<=0;
    counter6<=0;
end
end
 
endmodule