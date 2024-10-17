module multiplexer_circuit (
  input I0,
  input I1,
  input A,
  output Q
);

  wire notA;
  wire nand0, nand1;

  // Invert the select signal
  not (notA, A);

  // NAND gates
  nand (nand0, I0, A);
  nand (nand1, I1, notA);

  // final NAND
  nand (Q, nand0, nand1);

endmodule