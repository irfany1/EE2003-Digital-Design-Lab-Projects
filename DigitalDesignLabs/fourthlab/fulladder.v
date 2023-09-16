module fulladder(
    input x,
    input y,
    input cin,
    output a,
    output cout
);

assign{cout,a} = cin+x+y;

endmodule