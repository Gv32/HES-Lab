module tb_full_adder;

reg A, B, Cin;
wire S, Cout;

full_adder dut (
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
);


initial begin
    $dumpfile("Full_adder.vcd");
    $dumpvars(0, tb_full_adder);

    A = 0; B = 0; Cin = 1; #10;  // Wait 10 time units
    A = 0; B = 1; Cin = 1; #10;
    A = 1; B = 0; Cin = 1; #10;
    A = 1; B = 1; Cin = 1; #10;

    $finish;
end

endmodule
