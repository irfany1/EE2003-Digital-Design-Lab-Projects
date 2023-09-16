module structural(
    input in1,
    input in2,
    output out1,
    output out2
);

wire a;

xor xor1(a,in1,in2);
not not1(out2,a);
or or1(out1,a,in1);

endmodule
