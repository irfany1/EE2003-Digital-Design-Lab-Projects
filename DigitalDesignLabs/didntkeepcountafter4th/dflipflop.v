module dflipflop (
input wire clk,
input wire d,
output reg q,
output reg qnot
);

  reg    q = 1'b0;
  reg qnot = 1'b0;
    
  always @ (posedge clk)
    begin
      q <= d;
      qnot <= !d;
    end
  
endmodule