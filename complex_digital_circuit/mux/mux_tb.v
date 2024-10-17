module tb_multiplexer();

  reg i0Value, aValue, i1Value;
  wire qValue;

  // instancing the multiplexer module
  multiplexer_circuit instance1(.I0(i0Value), .A(aValue), .I1(i1Value), .Q(qValue));

  // testbench logic
  initial begin
    aValue = 1; i0Value = 0; i1Value = 0; #10;
    aValue = 1; i0Value = 0; i1Value = 1; #10;
    aValue = 1; i0Value = 1; i1Value = 0; #10;
    aValue = 1; i0Value = 1; i1Value = 1; #10;
    aValue = 0; i0Value = 0; i1Value = 0; #10;
    aValue = 0; i0Value = 1; i1Value = 0; #10;
    aValue = 0; i0Value = 0; i1Value = 1; #10;
    aValue = 0; i0Value = 1; i1Value = 1; #10;
    $finish;
  end

  // monitor output
  initial begin
    $monitor(
      "I0 = %b, A = %b, I1 = %b, Q = %b", 
      i0Value, aValue, i1Value, qValue
    );
  end

endmodule