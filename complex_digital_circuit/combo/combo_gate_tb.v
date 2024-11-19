module tb_combo_gate();

  reg aValue, bValue, cValue;
  wire yValue;

  // instancing the combo gate module
  combo_gate instance1(.a(aValue), .b(bValue), .c(cValue), .y(yValue));

  // testbench logic
  initial begin
    aValue = 0; bValue = 0; cValue = 0; #10;
    aValue = 0; bValue = 0; cValue = 1; #10;
    aValue = 0; bValue = 1; cValue = 0; #10;
    aValue = 0; bValue = 1; cValue = 1; #10;
    aValue = 1; bValue = 0; cValue = 0; #10;
    aValue = 1; bValue = 0; cValue = 1; #10;
    aValue = 1; bValue = 1; cValue = 0; #10;
    aValue = 1; bValue = 1; cValue = 1; #10;
    $finish;
  end

  // monitor output
  initial begin
    $monitor(
      "a = %b, b = %b, c = %b, y = %b", 
      aValue, bValue, cValue, yValue
    );
  end

endmodule