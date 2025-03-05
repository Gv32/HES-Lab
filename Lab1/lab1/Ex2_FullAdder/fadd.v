module full_adder (A, B ,Cin ,Cout, S);

input A, B, Cin;
output S, Cout;

wire A, B ,Cin;
wire Cout, S;

assign S = A ^ B ^ Cin;
assign Cout = (A & B) | (B & Cin) | (A & Cin);

endmodule