module tb_nand_gate();

  reg aValue, bValue;
  wire yValue;

  // instancing the nand_gate module
  nand_gate instance1(.A(aValue), .B(bValue), .Y(yValue));

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
      bValue, aValue, yValue
    );
  end

endmodule