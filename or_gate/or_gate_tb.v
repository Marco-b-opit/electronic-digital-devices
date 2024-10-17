module tb_or_gate();

  reg aValue, bValue;
  wire yValue;

  // instancing the or_gate module
  or_gate instance1(.A(aValue), .B(bValue), .Y(yValue));

  // testbench logic
  initial begin
    aValue = 0; bValue = 0; #10;
    aValue = 0; bValue = 1; #10;
    aValue = 1; bValue = 0; #10;
    aValue = 1; bValue = 1; #10;
    $finish;
  end

  // monitor output
  initial begin
    $monitor(
      "A = %b, B = %b, Y = %b", 
      aValue, bValue, yValue
    );
  end

endmodule