module combo_gate (
  input a, input b, input c, output y
);

  assign y = (a & b) | c;
  
    
endmodule
