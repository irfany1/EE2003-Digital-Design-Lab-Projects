`timescale 1ns / 1ps

module project_2(
input [3:0]a,
input [3:0]b,
output [3:0] s,
output [3:0] d
    );
    
    wire [3:0] c;
    
    parameter x=4'b1010;
    
    halfadder h1(a[0],b[0],s[0],c[0]);
    fulladder f1(a[1],b[1],c[0],s[1],c[1]);
    fulladder f2(a[2],b[2],c[1],s[2],c[2]);
    fulladder f3(a[3],b[3],c[2],s[3],c[3]);
    
    assign d=s+x;
    
endmodule