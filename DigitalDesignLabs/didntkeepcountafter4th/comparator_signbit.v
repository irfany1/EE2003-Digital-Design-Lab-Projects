`timescale 1ns / 1ps

module comparator(
input[7:0]a,
input[7:0]b,
input[7:0]c,
input[7:0]d,
output reg [7:0]  smallest,
output  reg [7:0] largest
    );
    
   reg [7:0] m1,m2,p1,p2;

always @(*)begin
    if(a[7]==0)
        p1=a;
    else m1=a;  
    
    if(b[7]==0)  
        p1=b;
    else m1=b;
    
    if(c[7]==0)
          p2=c;
    else m2=c; 
    
    if(d[7]==0)
          p2=d;
    else m2=d;
    
    if(m1>m2)
        smallest=m1;
    else smallest=m2;
    
    if(p1>p2)
        largest=p1;
    else largest=p2;
    
end


endmodule
