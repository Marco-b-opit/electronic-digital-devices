module tb_not_gate();

  reg aValue;
  wire yValue;

  // instancing the not_gate module
  not_gate instance1(.A(aValue), .Y(yValue));

  // testbench logic
  initial begin
    aValue = 0; #10;
    aValue = 0; #10;
    aValue = 1; #10;
    aValue = 1; #10;
    $finish;
  end

  // monitor output
  initial begin
    $monitor(
      "A = %b, Y = %b", 
      aValue, yValue
    );
  end

endmodule