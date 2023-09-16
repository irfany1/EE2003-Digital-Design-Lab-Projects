`timescale 1ns / 1ps


module dlatch(
input wire d,
input wire c,
output wire q,
output wire qt
    );
    
wire d1,d1n,dn;

 not    A(d1,d);
 and    B(d1n,d1,c);
 and    C(dn,c,d);
 xnor    F(q,d1n,qt);
 xnor    G(qt,dn,q);    
    
endmodule