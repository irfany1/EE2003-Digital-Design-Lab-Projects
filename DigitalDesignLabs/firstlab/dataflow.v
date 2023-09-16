module dataflow(
    input in1,
    input in2,
    output out1,
    output out2
);

wire a;

assign a = in1 ^ in2;
assign out2 = ~a;
assign out1 = (a | in1);

endmodule
