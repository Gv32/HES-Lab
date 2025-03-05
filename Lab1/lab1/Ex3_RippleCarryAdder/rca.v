module ripple_carry_adder (A, B, Cin, Cout, Sum);
  
  input [3:0] A;      // 4-bit input A
  input [3:0] B;      // 4-bit input B
  input Cin;          // Carry-in input
  output [3:0] Sum;   // 4-bit sum output
  output Cout;         // Carry-out output

  // Dichiarazione dei carry interni
  wire C1, C2, C3;

  // Primo Full Adder (bit meno significativo)
  full_adder FA0 (
    .A(A[0]), 
    .B(B[0]), 
    .Cin(Cin), 
    .S(Sum[0]), 
    .Cout(C1)
  );

  // Secondo Full Adder
  full_adder FA1 (
    .A(A[1]), 
    .B(B[1]), 
    .Cin(C1), 
    .S(Sum[1]), 
    .Cout(C2)
  );

  // Terzo Full Adder
  full_adder FA2 (
    .A(A[2]), 
    .B(B[2]), 
    .Cin(C2), 
    .S(Sum[2]), 
    .Cout(C3)
  );

  // Quarto Full Adder (bit più significativo)
  full_adder FA3 (
    .A(A[3]), 
    .B(B[3]), 
    .Cin(C3), 
    .S(Sum[3]), 
    .Cout(Cout)
  );

endmodule
